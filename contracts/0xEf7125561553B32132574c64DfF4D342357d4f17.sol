contract main {




// =====================  Runtime code  =====================


#
#  - sub_58e89f75(?)
#  - sub_a2fc837d(?)
#  - sub_d29cd4d4(?)
#  - getPairPrice(address arg1, address arg2)
#
address routerAddress;

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function getPairReserves(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
}

function getAmountOut(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'getAmountOut: token pair not found'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(routerAddress)
    if arg1 >= arg2:
        staticcall routerAddress.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    else:
        staticcall routerAddress.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'getAmountOut: failed to get PairPrice'
    return ext_call.return_data[0]
}

function getMinAmountOut(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'getMinAmountOut: amountA can't be zero'
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'getAmountOut: token pair not found'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(routerAddress)
    if arg1 >= arg2:
        staticcall routerAddress.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args arg3, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    else:
        staticcall routerAddress.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args arg3, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'getAmountOut: failed to get PairPrice'
    if ext_call.return_data[0] and arg4 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * arg4 / 10^18 / 100:
        revert with 0, 17
    return (ext_call.return_data[0] - (ext_call.return_data[0] * arg4 / 10^18 / 100))
}

function sub_fa1efeea(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if address(arg1) >= address(arg2):
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg3 and 10^18 > -1 / arg3:
                    revert with 0, 17
                if 10^18 * arg3 and 1 > -1 / 10^18 * arg3:
                    revert with 0, 17
                if not arg4:
                    revert with 0, 18
                return (10^18 * arg3 / arg4)
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 0, 17
                if arg3 and 10^18 > -1 / arg3:
                    revert with 0, 17
                if 10^18 * arg3 and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * arg3:
                    revert with 0, 17
                if not arg4:
                    revert with 0, 18
                return (10^18 * arg3 * 10^ext_call.return_data[31 len 1] / arg4)
            if var43005 > 1:
                s = var43001
                t = var43002
                u = var43005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if arg3 and 10^18 > -1 / arg3:
                            revert with 0, 17
                        if 10^18 * arg3 and s * s * t > -1 / 10^18 * arg3:
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        return (10^18 * arg3 * s * s * t / arg4)
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = s * t
                        u = uint255(u) * 0.5
                        continue 
                    if s * t > -1 / s * s:
                        revert with 0, 17
                    if arg3 and 10^18 > -1 / arg3:
                        revert with 0, 17
                    if 10^18 * arg3 and s * s * s * t > -1 / 10^18 * arg3:
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    return (10^18 * arg3 * s * s * s * t / arg4)
                revert with 0, 17
            if var43002 > -1 / var43001:
                revert with 0, 17
            if arg3 and 10^18 > -1 / arg3:
                revert with 0, 17
            if 10^18 * arg3 and var43001 * var43002 > -1 / 10^18 * arg3:
                revert with 0, 17
            if not arg4:
                revert with 0, 18
            return (10^18 * arg3 * var43001 * var43002 / arg4)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg3 and 10^18 > -1 / arg3:
                    revert with 0, 17
                if 10^18 * arg3 and 1 > -1 / 10^18 * arg3:
                    revert with 0, 17
                if not arg4:
                    revert with 0, 18
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (10^18 * arg3 / arg4 / 10^uint8(ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 0, 17
                if arg3 and 10^18 > -1 / arg3:
                    revert with 0, 17
                if 10^18 * arg3 and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * arg3:
                    revert with 0, 17
                if not arg4:
                    revert with 0, 18
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (10^18 * arg3 * 10^ext_call.return_data[31 len 1] / arg4 / 10^uint8(ext_call.return_data[0]))
            if var49005 > 1:
                s = var49001
                t = var49002
                u = var49005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if arg3 and 10^18 > -1 / arg3:
                            revert with 0, 17
                        if 10^18 * arg3 and s * s * t > -1 / 10^18 * arg3:
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        return (10^18 * arg3 * s * s * t / arg4 / 10^uint8(ext_call.return_data[0]))
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = s * t
                        u = uint255(u) * 0.5
                        continue 
                    if s * t > -1 / s * s:
                        revert with 0, 17
                    if arg3 and 10^18 > -1 / arg3:
                        revert with 0, 17
                    if 10^18 * arg3 and s * s * s * t > -1 / 10^18 * arg3:
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return (10^18 * arg3 * s * s * s * t / arg4 / 10^uint8(ext_call.return_data[0]))
                revert with 0, 17
            if var49002 > -1 / var49001:
                revert with 0, 17
            if arg3 and 10^18 > -1 / arg3:
                revert with 0, 17
            if 10^18 * arg3 and var49001 * var49002 > -1 / 10^18 * arg3:
                revert with 0, 17
            if not arg4:
                revert with 0, 18
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (10^18 * arg3 * var49001 * var49002 / arg4 / 10^uint8(ext_call.return_data[0]))
        if var32005 > 1:
            s = var32001
            t = var32002
            u = var32005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if arg3 and 10^18 > -1 / arg3:
                            revert with 0, 17
                        if 10^18 * arg3 and 1 > -1 / 10^18 * arg3:
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        if not s * s * t:
                            revert with 0, 18
                        return (10^18 * arg3 / arg4 / s * s * t)
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 0, 17
                        if arg3 and 10^18 > -1 / arg3:
                            revert with 0, 17
                        if 10^18 * arg3 and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * arg3:
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        if not s * s * t:
                            revert with 0, 18
                        return (10^18 * arg3 * 10^ext_call.return_data[31 len 1] / arg4 / s * s * t)
                    if var59005 > 1:
                        u = var59001
                        v = var59002
                        w = var59005
                        while u <= -1 / u:
                            if not bool(w):
                                if uint255(w) * 0.5 > 1:
                                    u = u * u
                                    v = v
                                    w = uint255(w) * 0.5
                                    continue 
                                if v > -1 / u * u:
                                    revert with 0, 17
                                if arg3 and 10^18 > -1 / arg3:
                                    revert with 0, 17
                                if 10^18 * arg3 and u * u * v > -1 / 10^18 * arg3:
                                    revert with 0, 17
                                if not arg4:
                                    revert with 0, 18
                                if not s * s * t:
                                    revert with 0, 18
                                return (10^18 * arg3 * u * u * v / arg4 / s * s * t)
                            if uint255(w) * 0.5 > 1:
                                u = u * u
                                v = u * v
                                w = uint255(w) * 0.5
                                continue 
                            if u * v > -1 / u * u:
                                revert with 0, 17
                            if arg3 and 10^18 > -1 / arg3:
                                revert with 0, 17
                            if 10^18 * arg3 and u * u * u * v > -1 / 10^18 * arg3:
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if not s * s * t:
                                revert with 0, 18
                            return (10^18 * arg3 * u * u * u * v / arg4 / s * s * t)
                        revert with 0, 17
                    if var59002 > -1 / var59001:
                        revert with 0, 17
                    if arg3 and 10^18 > -1 / arg3:
                        revert with 0, 17
                    if 10^18 * arg3 and var59001 * var59002 > -1 / 10^18 * arg3:
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if not s * s * t:
                        revert with 0, 18
                    return (10^18 * arg3 * var59001 * var59002 / arg4 / s * s * t)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg3 and 10^18 > -1 / arg3:
                        revert with 0, 17
                    if 10^18 * arg3 and 1 > -1 / 10^18 * arg3:
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if not s * s * s * t:
                        revert with 0, 18
                    return (10^18 * arg3 / arg4 / s * s * s * t)
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if arg3 and 10^18 > -1 / arg3:
                        revert with 0, 17
                    if 10^18 * arg3 and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * arg3:
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if not s * s * s * t:
                        revert with 0, 18
                    return (10^18 * arg3 * 10^ext_call.return_data[31 len 1] / arg4 / s * s * s * t)
                if var60005 > 1:
                    u = var60001
                    v = var60002
                    w = var60005
                    while u <= -1 / u:
                        if not bool(w):
                            if uint255(w) * 0.5 > 1:
                                u = u * u
                                v = v
                                w = uint255(w) * 0.5
                                continue 
                            if v > -1 / u * u:
                                revert with 0, 17
                            if arg3 and 10^18 > -1 / arg3:
                                revert with 0, 17
                            if 10^18 * arg3 and u * u * v > -1 / 10^18 * arg3:
                                revert with 0, 17
                            if not arg4:
                                revert with 0, 18
                            if not s * s * s * t:
                                revert with 0, 18
                            return (10^18 * arg3 * u * u * v / arg4 / s * s * s * t)
                        if uint255(w) * 0.5 > 1:
                            u = u * u
                            v = u * v
                            w = uint255(w) * 0.5
                            continue 
                        if u * v > -1 / u * u:
                            revert with 0, 17
                        if arg3 and 10^18 > -1 / arg3:
                            revert with 0, 17
                        if 10^18 * arg3 and u * u * u * v > -1 / 10^18 * arg3:
                            revert with 0, 17
                        if not arg4:
                            revert with 0, 18
                        if not s * s * s * t:
                            revert with 0, 18
                        return (10^18 * arg3 * u * u * u * v / arg4 / s * s * s * t)
                    revert with 0, 17
                if var60002 > -1 / var60001:
                    revert with 0, 17
                if arg3 and 10^18 > -1 / arg3:
                    revert with 0, 17
                if 10^18 * arg3 and var60001 * var60002 > -1 / 10^18 * arg3:
                    revert with 0, 17
                if not arg4:
                    revert with 0, 18
                if not s * s * s * t:
                    revert with 0, 18
                return (10^18 * arg3 * var60001 * var60002 / arg4 / s * s * s * t)
            revert with 0, 17
        if var32002 > -1 / var32001:
            revert with 0, 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg3 and 10^18 > -1 / arg3:
                revert with 0, 17
            if 10^18 * arg3 and 1 > -1 / 10^18 * arg3:
                revert with 0, 17
            if not arg4:
                revert with 0, 18
            if not var32001 * var32002:
                revert with 0, 18
            return (10^18 * arg3 / arg4 / var32001 * var32002)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            if arg3 and 10^18 > -1 / arg3:
                revert with 0, 17
            if 10^18 * arg3 and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * arg3:
                revert with 0, 17
            if not arg4:
                revert with 0, 18
            if not var32001 * var32002:
                revert with 0, 18
            return (10^18 * arg3 * 10^ext_call.return_data[31 len 1] / arg4 / var32001 * var32002)
        if var54005 > 1:
            s = var54001
            t = var54002
            u = var54005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if arg3 and 10^18 > -1 / arg3:
                        revert with 0, 17
                    if 10^18 * arg3 and s * s * t > -1 / 10^18 * arg3:
                        revert with 0, 17
                    if not arg4:
                        revert with 0, 18
                    if not var32001 * var32002:
                        revert with 0, 18
                    return (10^18 * arg3 * s * s * t / arg4 / var32001 * var32002)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if arg3 and 10^18 > -1 / arg3:
                    revert with 0, 17
                if 10^18 * arg3 and s * s * s * t > -1 / 10^18 * arg3:
                    revert with 0, 17
                if not arg4:
                    revert with 0, 18
                if not var32001 * var32002:
                    revert with 0, 18
                return (10^18 * arg3 * s * s * s * t / arg4 / var32001 * var32002)
            revert with 0, 17
        if var54002 > -1 / var54001:
            revert with 0, 17
        if arg3 and 10^18 > -1 / arg3:
            revert with 0, 17
        if 10^18 * arg3 and var54001 * var54002 > -1 / 10^18 * arg3:
            revert with 0, 17
        if not arg4:
            revert with 0, 18
        if not var32001 * var32002:
            revert with 0, 18
        return (10^18 * arg3 * var54001 * var54002 / arg4 / var32001 * var32002)
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg4 and 10^18 > -1 / arg4:
                revert with 0, 17
            if 10^18 * arg4 and 1 > -1 / 10^18 * arg4:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            return (10^18 * arg4 / arg3)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            if arg4 and 10^18 > -1 / arg4:
                revert with 0, 17
            if 10^18 * arg4 and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * arg4:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            return (10^18 * arg4 * 10^ext_call.return_data[31 len 1] / arg3)
        if var43005 > 1:
            s = var43001
            t = var43002
            u = var43005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if arg4 and 10^18 > -1 / arg4:
                        revert with 0, 17
                    if 10^18 * arg4 and s * s * t > -1 / 10^18 * arg4:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    return (10^18 * arg4 * s * s * t / arg3)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if arg4 and 10^18 > -1 / arg4:
                    revert with 0, 17
                if 10^18 * arg4 and s * s * s * t > -1 / 10^18 * arg4:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                return (10^18 * arg4 * s * s * s * t / arg3)
            revert with 0, 17
        if var43002 > -1 / var43001:
            revert with 0, 17
        if arg4 and 10^18 > -1 / arg4:
            revert with 0, 17
        if 10^18 * arg4 and var43001 * var43002 > -1 / 10^18 * arg4:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        return (10^18 * arg4 * var43001 * var43002 / arg3)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg4 and 10^18 > -1 / arg4:
                revert with 0, 17
            if 10^18 * arg4 and 1 > -1 / 10^18 * arg4:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (10^18 * arg4 / arg3 / 10^uint8(ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            if arg4 and 10^18 > -1 / arg4:
                revert with 0, 17
            if 10^18 * arg4 and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * arg4:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (10^18 * arg4 * 10^ext_call.return_data[31 len 1] / arg3 / 10^uint8(ext_call.return_data[0]))
        if var49005 > 1:
            s = var49001
            t = var49002
            u = var49005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if arg4 and 10^18 > -1 / arg4:
                        revert with 0, 17
                    if 10^18 * arg4 and s * s * t > -1 / 10^18 * arg4:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return (10^18 * arg4 * s * s * t / arg3 / 10^uint8(ext_call.return_data[0]))
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if arg4 and 10^18 > -1 / arg4:
                    revert with 0, 17
                if 10^18 * arg4 and s * s * s * t > -1 / 10^18 * arg4:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (10^18 * arg4 * s * s * s * t / arg3 / 10^uint8(ext_call.return_data[0]))
            revert with 0, 17
        if var49002 > -1 / var49001:
            revert with 0, 17
        if arg4 and 10^18 > -1 / arg4:
            revert with 0, 17
        if 10^18 * arg4 and var49001 * var49002 > -1 / 10^18 * arg4:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return (10^18 * arg4 * var49001 * var49002 / arg3 / 10^uint8(ext_call.return_data[0]))
    if var32005 > 1:
        s = var32001
        t = var32002
        u = var32005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg4 and 10^18 > -1 / arg4:
                        revert with 0, 17
                    if 10^18 * arg4 and 1 > -1 / 10^18 * arg4:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if not s * s * t:
                        revert with 0, 18
                    return (10^18 * arg4 / arg3 / s * s * t)
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if arg4 and 10^18 > -1 / arg4:
                        revert with 0, 17
                    if 10^18 * arg4 and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * arg4:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if not s * s * t:
                        revert with 0, 18
                    return (10^18 * arg4 * 10^ext_call.return_data[31 len 1] / arg3 / s * s * t)
                if var59005 > 1:
                    u = var59001
                    v = var59002
                    w = var59005
                    while u <= -1 / u:
                        if not bool(w):
                            if uint255(w) * 0.5 > 1:
                                u = u * u
                                v = v
                                w = uint255(w) * 0.5
                                continue 
                            if v > -1 / u * u:
                                revert with 0, 17
                            if arg4 and 10^18 > -1 / arg4:
                                revert with 0, 17
                            if 10^18 * arg4 and u * u * v > -1 / 10^18 * arg4:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if not s * s * t:
                                revert with 0, 18
                            return (10^18 * arg4 * u * u * v / arg3 / s * s * t)
                        if uint255(w) * 0.5 > 1:
                            u = u * u
                            v = u * v
                            w = uint255(w) * 0.5
                            continue 
                        if u * v > -1 / u * u:
                            revert with 0, 17
                        if arg4 and 10^18 > -1 / arg4:
                            revert with 0, 17
                        if 10^18 * arg4 and u * u * u * v > -1 / 10^18 * arg4:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if not s * s * t:
                            revert with 0, 18
                        return (10^18 * arg4 * u * u * u * v / arg3 / s * s * t)
                    revert with 0, 17
                if var59002 > -1 / var59001:
                    revert with 0, 17
                if arg4 and 10^18 > -1 / arg4:
                    revert with 0, 17
                if 10^18 * arg4 and var59001 * var59002 > -1 / 10^18 * arg4:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if not s * s * t:
                    revert with 0, 18
                return (10^18 * arg4 * var59001 * var59002 / arg3 / s * s * t)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg4 and 10^18 > -1 / arg4:
                    revert with 0, 17
                if 10^18 * arg4 and 1 > -1 / 10^18 * arg4:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if not s * s * s * t:
                    revert with 0, 18
                return (10^18 * arg4 / arg3 / s * s * s * t)
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 0, 17
                if arg4 and 10^18 > -1 / arg4:
                    revert with 0, 17
                if 10^18 * arg4 and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * arg4:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if not s * s * s * t:
                    revert with 0, 18
                return (10^18 * arg4 * 10^ext_call.return_data[31 len 1] / arg3 / s * s * s * t)
            if var60005 > 1:
                u = var60001
                v = var60002
                w = var60005
                while u <= -1 / u:
                    if not bool(w):
                        if uint255(w) * 0.5 > 1:
                            u = u * u
                            v = v
                            w = uint255(w) * 0.5
                            continue 
                        if v > -1 / u * u:
                            revert with 0, 17
                        if arg4 and 10^18 > -1 / arg4:
                            revert with 0, 17
                        if 10^18 * arg4 and u * u * v > -1 / 10^18 * arg4:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if not s * s * s * t:
                            revert with 0, 18
                        return (10^18 * arg4 * u * u * v / arg3 / s * s * s * t)
                    if uint255(w) * 0.5 > 1:
                        u = u * u
                        v = u * v
                        w = uint255(w) * 0.5
                        continue 
                    if u * v > -1 / u * u:
                        revert with 0, 17
                    if arg4 and 10^18 > -1 / arg4:
                        revert with 0, 17
                    if 10^18 * arg4 and u * u * u * v > -1 / 10^18 * arg4:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if not s * s * s * t:
                        revert with 0, 18
                    return (10^18 * arg4 * u * u * u * v / arg3 / s * s * s * t)
                revert with 0, 17
            if var60002 > -1 / var60001:
                revert with 0, 17
            if arg4 and 10^18 > -1 / arg4:
                revert with 0, 17
            if 10^18 * arg4 and var60001 * var60002 > -1 / 10^18 * arg4:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            if not s * s * s * t:
                revert with 0, 18
            return (10^18 * arg4 * var60001 * var60002 / arg3 / s * s * s * t)
        revert with 0, 17
    if var32002 > -1 / var32001:
        revert with 0, 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg4 and 10^18 > -1 / arg4:
            revert with 0, 17
        if 10^18 * arg4 and 1 > -1 / 10^18 * arg4:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        if not var32001 * var32002:
            revert with 0, 18
        return (10^18 * arg4 / arg3 / var32001 * var32002)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        if arg4 and 10^18 > -1 / arg4:
            revert with 0, 17
        if 10^18 * arg4 and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * arg4:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        if not var32001 * var32002:
            revert with 0, 18
        return (10^18 * arg4 * 10^ext_call.return_data[31 len 1] / arg3 / var32001 * var32002)
    if var54005 > 1:
        s = var54001
        t = var54002
        u = var54005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if arg4 and 10^18 > -1 / arg4:
                    revert with 0, 17
                if 10^18 * arg4 and s * s * t > -1 / 10^18 * arg4:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if not var32001 * var32002:
                    revert with 0, 18
                return (10^18 * arg4 * s * s * t / arg3 / var32001 * var32002)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if arg4 and 10^18 > -1 / arg4:
                revert with 0, 17
            if 10^18 * arg4 and s * s * s * t > -1 / 10^18 * arg4:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            if not var32001 * var32002:
                revert with 0, 18
            return (10^18 * arg4 * s * s * s * t / arg3 / var32001 * var32002)
        revert with 0, 17
    if var54002 > -1 / var54001:
        revert with 0, 17
    if arg4 and 10^18 > -1 / arg4:
        revert with 0, 17
    if 10^18 * arg4 and var54001 * var54002 > -1 / 10^18 * arg4:
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    if not var32001 * var32002:
        revert with 0, 18
    return (10^18 * arg4 * var54001 * var54002 / arg3 / var32001 * var32002)
}

function sub_b8692467(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(arg1) == address(arg2):
        return 10^18
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if address(arg1) >= address(arg2):
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                return (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]))
            if var77005 > 1:
                s = var77001
                t = var77002
                u = var77005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) and s * s * t > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) * s * s * t / Mask(112, 0, ext_call.return_data[32]))
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = s * t
                        u = uint255(u) * 0.5
                        continue 
                    if s * t > -1 / s * s:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) and s * s * s * t > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) * s * s * s * t / Mask(112, 0, ext_call.return_data[32]))
                revert with 0, 17
            if var77002 > -1 / var77001:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) and var77001 * var77002 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            return (10^18 * Mask(112, 0, ext_call.return_data[0]) * var77001 * var77002 / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0]))
            if var83005 > 1:
                s = var83001
                t = var83002
                u = var83005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) and s * s * t > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) * s * s * t / Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0]))
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = s * t
                        u = uint255(u) * 0.5
                        continue 
                    if s * t > -1 / s * s:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) and s * s * s * t > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) * s * s * s * t / Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0]))
                revert with 0, 17
            if var83002 > -1 / var83001:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) and var83001 * var83002 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (10^18 * Mask(112, 0, ext_call.return_data[0]) * var83001 * var83002 / Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0]))
        if var66005 > 1:
            s = var66001
            t = var66002
            u = var66005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if not s * s * t:
                            revert with 0, 18
                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s * s * t)
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if not s * s * t:
                            revert with 0, 18
                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) / s * s * t)
                    if var93005 > 1:
                        u = var93001
                        v = var93002
                        w = var93005
                        while u <= -1 / u:
                            if not bool(w):
                                if uint255(w) * 0.5 > 1:
                                    u = u * u
                                    v = v
                                    w = uint255(w) * 0.5
                                    continue 
                                if v > -1 / u * u:
                                    revert with 0, 17
                                if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) and u * u * v > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 18
                                if not s * s * t:
                                    revert with 0, 18
                                return (10^18 * Mask(112, 0, ext_call.return_data[0]) * u * u * v / Mask(112, 0, ext_call.return_data[32]) / s * s * t)
                            if uint255(w) * 0.5 > 1:
                                u = u * u
                                v = u * v
                                w = uint255(w) * 0.5
                                continue 
                            if u * v > -1 / u * u:
                                revert with 0, 17
                            if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) and u * u * u * v > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if not s * s * t:
                                revert with 0, 18
                            return (10^18 * Mask(112, 0, ext_call.return_data[0]) * u * u * u * v / Mask(112, 0, ext_call.return_data[32]) / s * s * t)
                        revert with 0, 17
                    if var93002 > -1 / var93001:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) and var93001 * var93002 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if not s * s * t:
                        revert with 0, 18
                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) * var93001 * var93002 / Mask(112, 0, ext_call.return_data[32]) / s * s * t)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if not s * s * s * t:
                        revert with 0, 18
                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / s * s * s * t)
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if not s * s * s * t:
                        revert with 0, 18
                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) / s * s * s * t)
                if var94005 > 1:
                    u = var94001
                    v = var94002
                    w = var94005
                    while u <= -1 / u:
                        if not bool(w):
                            if uint255(w) * 0.5 > 1:
                                u = u * u
                                v = v
                                w = uint255(w) * 0.5
                                continue 
                            if v > -1 / u * u:
                                revert with 0, 17
                            if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) and u * u * v > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if not s * s * s * t:
                                revert with 0, 18
                            return (10^18 * Mask(112, 0, ext_call.return_data[0]) * u * u * v / Mask(112, 0, ext_call.return_data[32]) / s * s * s * t)
                        if uint255(w) * 0.5 > 1:
                            u = u * u
                            v = u * v
                            w = uint255(w) * 0.5
                            continue 
                        if u * v > -1 / u * u:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) and u * u * u * v > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 18
                        if not s * s * s * t:
                            revert with 0, 18
                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) * u * u * u * v / Mask(112, 0, ext_call.return_data[32]) / s * s * s * t)
                    revert with 0, 17
                if var94002 > -1 / var94001:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) and var94001 * var94002 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if not s * s * s * t:
                    revert with 0, 18
                return (10^18 * Mask(112, 0, ext_call.return_data[0]) * var94001 * var94002 / Mask(112, 0, ext_call.return_data[32]) / s * s * s * t)
            revert with 0, 17
        if var66002 > -1 / var66001:
            revert with 0, 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if not var66001 * var66002:
                revert with 0, 18
            return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / var66001 * var66002)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if not var66001 * var66002:
                revert with 0, 18
            return (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]) / var66001 * var66002)
        if var88005 > 1:
            s = var88001
            t = var88002
            u = var88005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) and s * s * t > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 18
                    if not var66001 * var66002:
                        revert with 0, 18
                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) * s * s * t / Mask(112, 0, ext_call.return_data[32]) / var66001 * var66002)
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) and s * s * s * t > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if not var66001 * var66002:
                    revert with 0, 18
                return (10^18 * Mask(112, 0, ext_call.return_data[0]) * s * s * s * t / Mask(112, 0, ext_call.return_data[32]) / var66001 * var66002)
            revert with 0, 17
        if var88002 > -1 / var88001:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) and var88001 * var88002 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if not var66001 * var66002:
            revert with 0, 18
        return (10^18 * Mask(112, 0, ext_call.return_data[0]) * var88001 * var88002 / Mask(112, 0, ext_call.return_data[32]) / var66001 * var66002)
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            return (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]))
        if var77005 > 1:
            s = var77001
            t = var77002
            u = var77005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) and s * s * t > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) * s * s * t / Mask(112, 0, ext_call.return_data[0]))
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) and s * s * s * t > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                return (10^18 * Mask(112, 0, ext_call.return_data[32]) * s * s * s * t / Mask(112, 0, ext_call.return_data[0]))
            revert with 0, 17
        if var77002 > -1 / var77001:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) and var77001 * var77002 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        return (10^18 * Mask(112, 0, ext_call.return_data[32]) * var77001 * var77002 / Mask(112, 0, ext_call.return_data[0]))
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]))
        if var83005 > 1:
            s = var83001
            t = var83002
            u = var83005
            while s <= -1 / s:
                if not bool(u):
                    if uint255(u) * 0.5 > 1:
                        s = s * s
                        t = t
                        u = uint255(u) * 0.5
                        continue 
                    if t > -1 / s * s:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) and s * s * t > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) * s * s * t / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]))
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = s * t
                    u = uint255(u) * 0.5
                    continue 
                if s * t > -1 / s * s:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) and s * s * s * t > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (10^18 * Mask(112, 0, ext_call.return_data[32]) * s * s * s * t / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]))
            revert with 0, 17
        if var83002 > -1 / var83001:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) and var83001 * var83002 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return (10^18 * Mask(112, 0, ext_call.return_data[32]) * var83001 * var83002 / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]))
    if var66005 > 1:
        s = var66001
        t = var66002
        u = var66005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    if not s * s * t:
                        revert with 0, 18
                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / s * s * t)
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    if not s * s * t:
                        revert with 0, 18
                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) / s * s * t)
                if var93005 > 1:
                    u = var93001
                    v = var93002
                    w = var93005
                    while u <= -1 / u:
                        if not bool(w):
                            if uint255(w) * 0.5 > 1:
                                u = u * u
                                v = v
                                w = uint255(w) * 0.5
                                continue 
                            if v > -1 / u * u:
                                revert with 0, 17
                            if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) and u * u * v > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 18
                            if not s * s * t:
                                revert with 0, 18
                            return (10^18 * Mask(112, 0, ext_call.return_data[32]) * u * u * v / Mask(112, 0, ext_call.return_data[0]) / s * s * t)
                        if uint255(w) * 0.5 > 1:
                            u = u * u
                            v = u * v
                            w = uint255(w) * 0.5
                            continue 
                        if u * v > -1 / u * u:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) and u * u * u * v > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 18
                        if not s * s * t:
                            revert with 0, 18
                        return (10^18 * Mask(112, 0, ext_call.return_data[32]) * u * u * u * v / Mask(112, 0, ext_call.return_data[0]) / s * s * t)
                    revert with 0, 17
                if var93002 > -1 / var93001:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) and var93001 * var93002 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if not s * s * t:
                    revert with 0, 18
                return (10^18 * Mask(112, 0, ext_call.return_data[32]) * var93001 * var93002 / Mask(112, 0, ext_call.return_data[0]) / s * s * t)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if not s * s * s * t:
                    revert with 0, 18
                return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / s * s * s * t)
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if not s * s * s * t:
                    revert with 0, 18
                return (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) / s * s * s * t)
            if var94005 > 1:
                u = var94001
                v = var94002
                w = var94005
                while u <= -1 / u:
                    if not bool(w):
                        if uint255(w) * 0.5 > 1:
                            u = u * u
                            v = v
                            w = uint255(w) * 0.5
                            continue 
                        if v > -1 / u * u:
                            revert with 0, 17
                        if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) and u * u * v > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 18
                        if not s * s * s * t:
                            revert with 0, 18
                        return (10^18 * Mask(112, 0, ext_call.return_data[32]) * u * u * v / Mask(112, 0, ext_call.return_data[0]) / s * s * s * t)
                    if uint255(w) * 0.5 > 1:
                        u = u * u
                        v = u * v
                        w = uint255(w) * 0.5
                        continue 
                    if u * v > -1 / u * u:
                        revert with 0, 17
                    if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) and u * u * u * v > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 18
                    if not s * s * s * t:
                        revert with 0, 18
                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) * u * u * u * v / Mask(112, 0, ext_call.return_data[0]) / s * s * s * t)
                revert with 0, 17
            if var94002 > -1 / var94001:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) and var94001 * var94002 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if not s * s * s * t:
                revert with 0, 18
            return (10^18 * Mask(112, 0, ext_call.return_data[32]) * var94001 * var94002 / Mask(112, 0, ext_call.return_data[0]) / s * s * s * t)
        revert with 0, 17
    if var66002 > -1 / var66001:
        revert with 0, 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        if not var66001 * var66002:
            revert with 0, 18
        return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / var66001 * var66002)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        if not var66001 * var66002:
            revert with 0, 18
        return (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) / var66001 * var66002)
    if var88005 > 1:
        s = var88001
        t = var88002
        u = var88005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) and s * s * t > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if not var66001 * var66002:
                    revert with 0, 18
                return (10^18 * Mask(112, 0, ext_call.return_data[32]) * s * s * t / Mask(112, 0, ext_call.return_data[0]) / var66001 * var66002)
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) and s * s * s * t > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if not var66001 * var66002:
                revert with 0, 18
            return (10^18 * Mask(112, 0, ext_call.return_data[32]) * s * s * s * t / Mask(112, 0, ext_call.return_data[0]) / var66001 * var66002)
        revert with 0, 17
    if var88002 > -1 / var88001:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) and var88001 * var88002 > -1 / 10^18 * Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 18
    if not var66001 * var66002:
        revert with 0, 18
    return (10^18 * Mask(112, 0, ext_call.return_data[32]) * var88001 * var88002 / Mask(112, 0, ext_call.return_data[0]) / var66001 * var66002)
}

function sub_f173c50f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == bool(arg4)
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg1)
    if arg4:
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _168 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _170 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _168 + (32 * _170) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _170] = mem[_168 + 224 len 32 * _170]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _322 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _324 = mem[_322]
        require mem[_322] == mem[_322 + 31 len 1]
        if not mem[_322 + 31 len 1]:
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _330 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_330] == mem[_330 + 31 len 1]
            if not mem[_330 + 31 len 1]:
                if 1 >= _170:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                    revert with 0, 17
                if 0 >= _170:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                    revert with 0, 17
                if 10^18 * mem[ceil32(return_data.size) + 224] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224]:
                    revert with 0, 17
                if not 10^18 * mem[ceil32(return_data.size) + 256]:
                    revert with 0, 18
                mem[mem[64]] = 1000000000000000000 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^18 * mem[ceil32(return_data.size) + 256]
            else:
                if bool(bool(mem[_330 + 31 len 1] < 78)) or bool(bool(mem[_330 + 31 len 1] < 32)):
                    if 10^mem[_330 + 31 len 1] > -1:
                        revert with 0, 17
                    if 1 >= _170:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                        revert with 0, 17
                    if 0 >= _170:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    if not 10^mem[_330 + 31 len 1]:
                        revert with 0, 18
                    if 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_330 + 31 len 1] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_330 + 31 len 1]:
                        revert with 0, 17
                    if not 10^18 * mem[ceil32(return_data.size) + 256]:
                        revert with 0, 18
                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_330 + 31 len 1] / 10^18 * mem[ceil32(return_data.size) + 256]
                else:
                    if var64005 > 1:
                        s = var64001
                        t = var64002
                        u = var64005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if 1 >= _170:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                    revert with 0, 17
                                if 0 >= _170:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                if 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t:
                                    revert with 0, 17
                                if not 10^18 * mem[ceil32(return_data.size) + 256]:
                                    revert with 0, 18
                                mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t / 10^18 * mem[ceil32(return_data.size) + 256]
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if 1 >= _170:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                    revert with 0, 17
                                if 0 >= _170:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                if 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t:
                                    revert with 0, 17
                                if not 10^18 * mem[ceil32(return_data.size) + 256]:
                                    revert with 0, 18
                                mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t / 10^18 * mem[ceil32(return_data.size) + 256]
                            return memory
                              from mem[64]
                               len 32
                        revert with 0, 17
                    if var64002 > -1 / var64001:
                        revert with 0, 17
                    if 1 >= _170:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                        revert with 0, 17
                    if 0 >= _170:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    if not var64001 * var64002:
                        revert with 0, 18
                    if 10^18 * mem[ceil32(return_data.size) + 224] / var64001 * var64002 and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / var64001 * var64002:
                        revert with 0, 17
                    if not 10^18 * mem[ceil32(return_data.size) + 256]:
                        revert with 0, 18
                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / var64001 * var64002 / 10^18 * mem[ceil32(return_data.size) + 256]
        else:
            if bool(bool(mem[_322 + 31 len 1] < 78)) or bool(bool(mem[_322 + 31 len 1] < 32)):
                if 10^mem[_322 + 31 len 1] > -1:
                    revert with 0, 17
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _338 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_338] == mem[_338 + 31 len 1]
                if not mem[_338 + 31 len 1]:
                    if 1 >= _170:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                        revert with 0, 17
                    if not 10^uint8(_324):
                        revert with 0, 18
                    if 0 >= _170:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    if 10^18 * mem[ceil32(return_data.size) + 224] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    if not 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_324):
                        revert with 0, 18
                    mem[mem[64]] = 1000000000000000000 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_324)
                else:
                    if bool(bool(mem[_338 + 31 len 1] < 78)) or bool(bool(mem[_338 + 31 len 1] < 32)):
                        if 10^mem[_338 + 31 len 1] > -1:
                            revert with 0, 17
                        if 1 >= _170:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                            revert with 0, 17
                        if not 10^uint8(_324):
                            revert with 0, 18
                        if 0 >= _170:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                            revert with 0, 17
                        if not 10^mem[_338 + 31 len 1]:
                            revert with 0, 18
                        if 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_338 + 31 len 1] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_338 + 31 len 1]:
                            revert with 0, 17
                        if not 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_324):
                            revert with 0, 18
                        mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_338 + 31 len 1] / 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_324)
                    else:
                        if var70005 > 1:
                            s = var70001
                            t = var70002
                            u = var70005
                            while s <= -1 / s:
                                if not bool(u):
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if t > -1 / s * s:
                                        revert with 0, 17
                                    if 1 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not 10^uint8(_324):
                                        revert with 0, 18
                                    if 0 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_324):
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t / 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_324)
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if 1 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not 10^uint8(_324):
                                        revert with 0, 18
                                    if 0 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_324):
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t / 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_324)
                                return memory
                                  from mem[64]
                                   len 32
                            revert with 0, 17
                        if var70002 > -1 / var70001:
                            revert with 0, 17
                        if 1 >= _170:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                            revert with 0, 17
                        if not 10^uint8(_324):
                            revert with 0, 18
                        if 0 >= _170:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                            revert with 0, 17
                        if not var70001 * var70002:
                            revert with 0, 18
                        if 10^18 * mem[ceil32(return_data.size) + 224] / var70001 * var70002 and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / var70001 * var70002:
                            revert with 0, 17
                        if not 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_324):
                            revert with 0, 18
                        mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / var70001 * var70002 / 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_324)
            else:
                if var53005 > 1:
                    s = var53001
                    t = var53002
                    u = var53005
                    while s <= -1 / s:
                        if not bool(u):
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = t
                                u = uint255(u) * 0.5
                                continue 
                            if t > -1 / s * s:
                                revert with 0, 17
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _688 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_688] == mem[_688 + 31 len 1]
                            if not mem[_688 + 31 len 1]:
                                if 1 >= _170:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                if 0 >= _170:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 17
                                if 10^18 * mem[ceil32(return_data.size) + 224] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 17
                                if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = 1000000000000000000 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t
                            else:
                                if bool(bool(mem[_688 + 31 len 1] < 78)) or bool(bool(mem[_688 + 31 len 1] < 32)):
                                    if 10^mem[_688 + 31 len 1] > -1:
                                        revert with 0, 17
                                    if 1 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if 0 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not 10^mem[_688 + 31 len 1]:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_688 + 31 len 1] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_688 + 31 len 1]:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_688 + 31 len 1] / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t
                                else:
                                    if var80005 > 1:
                                        u = var80001
                                        v = var80002
                                        w = var80005
                                        while u <= -1 / u:
                                            if not bool(w):
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if v > -1 / u * u:
                                                    revert with 0, 17
                                                if 1 >= _170:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 17
                                                if not s * s * t:
                                                    revert with 0, 18
                                                if 0 >= _170:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                                    revert with 0, 17
                                                if not u * u * v:
                                                    revert with 0, 18
                                                if 10^18 * mem[ceil32(return_data.size) + 224] / u * u * v and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / u * u * v:
                                                    revert with 0, 17
                                                if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t:
                                                    revert with 0, 18
                                                mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / u * u * v / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t
                                            else:
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = u * v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if u * v > -1 / u * u:
                                                    revert with 0, 17
                                                if 1 >= _170:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 17
                                                if not s * s * t:
                                                    revert with 0, 18
                                                if 0 >= _170:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                                    revert with 0, 17
                                                if not u * u * u * v:
                                                    revert with 0, 18
                                                if 10^18 * mem[ceil32(return_data.size) + 224] / u * u * u * v and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / u * u * u * v:
                                                    revert with 0, 17
                                                if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t:
                                                    revert with 0, 18
                                                mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / u * u * u * v / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t
                                            return memory
                                              from mem[64]
                                               len 32
                                        revert with 0, 17
                                    if var80002 > -1 / var80001:
                                        revert with 0, 17
                                    if 1 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if 0 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not var80001 * var80002:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / var80001 * var80002 and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / var80001 * var80002:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / var80001 * var80002 / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t
                        else:
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = s * t
                                u = uint255(u) * 0.5
                                continue 
                            if s * t > -1 / s * s:
                                revert with 0, 17
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _698 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_698] == mem[_698 + 31 len 1]
                            if not mem[_698 + 31 len 1]:
                                if 1 >= _170:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                if 0 >= _170:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 17
                                if 10^18 * mem[ceil32(return_data.size) + 224] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 17
                                if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = 1000000000000000000 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t
                            else:
                                if bool(bool(mem[_698 + 31 len 1] < 78)) or bool(bool(mem[_698 + 31 len 1] < 32)):
                                    if 10^mem[_698 + 31 len 1] > -1:
                                        revert with 0, 17
                                    if 1 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if 0 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not 10^mem[_698 + 31 len 1]:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_698 + 31 len 1] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_698 + 31 len 1]:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_698 + 31 len 1] / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t
                                else:
                                    if var81005 > 1:
                                        u = var81001
                                        v = var81002
                                        w = var81005
                                        while u <= -1 / u:
                                            if not bool(w):
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if v > -1 / u * u:
                                                    revert with 0, 17
                                                if 1 >= _170:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 17
                                                if not s * s * s * t:
                                                    revert with 0, 18
                                                if 0 >= _170:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                                    revert with 0, 17
                                                if not u * u * v:
                                                    revert with 0, 18
                                                if 10^18 * mem[ceil32(return_data.size) + 224] / u * u * v and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / u * u * v:
                                                    revert with 0, 17
                                                if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t:
                                                    revert with 0, 18
                                                mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / u * u * v / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t
                                            else:
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = u * v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if u * v > -1 / u * u:
                                                    revert with 0, 17
                                                if 1 >= _170:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 17
                                                if not s * s * s * t:
                                                    revert with 0, 18
                                                if 0 >= _170:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                                    revert with 0, 17
                                                if not u * u * u * v:
                                                    revert with 0, 18
                                                if 10^18 * mem[ceil32(return_data.size) + 224] / u * u * u * v and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / u * u * u * v:
                                                    revert with 0, 17
                                                if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t:
                                                    revert with 0, 18
                                                mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / u * u * u * v / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t
                                            return memory
                                              from mem[64]
                                               len 32
                                        revert with 0, 17
                                    if var81002 > -1 / var81001:
                                        revert with 0, 17
                                    if 1 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if 0 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not var81001 * var81002:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / var81001 * var81002 and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / var81001 * var81002:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / var81001 * var81002 / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t
                        return memory
                          from mem[64]
                           len 32
                    revert with 0, 17
                if var53002 > -1 / var53001:
                    revert with 0, 17
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_470] == mem[_470 + 31 len 1]
                if not mem[_470 + 31 len 1]:
                    if 1 >= _170:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                        revert with 0, 17
                    if not var53001 * var53002:
                        revert with 0, 18
                    if 0 >= _170:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    if 10^18 * mem[ceil32(return_data.size) + 224] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    if not 10^18 * mem[ceil32(return_data.size) + 256] / var53001 * var53002:
                        revert with 0, 18
                    mem[mem[64]] = 1000000000000000000 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^18 * mem[ceil32(return_data.size) + 256] / var53001 * var53002
                else:
                    if bool(bool(mem[_470 + 31 len 1] < 78)) or bool(bool(mem[_470 + 31 len 1] < 32)):
                        if 10^mem[_470 + 31 len 1] > -1:
                            revert with 0, 17
                        if 1 >= _170:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                            revert with 0, 17
                        if not var53001 * var53002:
                            revert with 0, 18
                        if 0 >= _170:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                            revert with 0, 17
                        if not 10^mem[_470 + 31 len 1]:
                            revert with 0, 18
                        if 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_470 + 31 len 1] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_470 + 31 len 1]:
                            revert with 0, 17
                        if not 10^18 * mem[ceil32(return_data.size) + 256] / var53001 * var53002:
                            revert with 0, 18
                        mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_470 + 31 len 1] / 10^18 * mem[ceil32(return_data.size) + 256] / var53001 * var53002
                    else:
                        if var75005 > 1:
                            s = var75001
                            t = var75002
                            u = var75005
                            while s <= -1 / s:
                                if not bool(u):
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if t > -1 / s * s:
                                        revert with 0, 17
                                    if 1 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not var53001 * var53002:
                                        revert with 0, 18
                                    if 0 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / var53001 * var53002:
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t / 10^18 * mem[ceil32(return_data.size) + 256] / var53001 * var53002
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if 1 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not var53001 * var53002:
                                        revert with 0, 18
                                    if 0 >= _170:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / var53001 * var53002:
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t / 10^18 * mem[ceil32(return_data.size) + 256] / var53001 * var53002
                                return memory
                                  from mem[64]
                                   len 32
                            revert with 0, 17
                        if var75002 > -1 / var75001:
                            revert with 0, 17
                        if 1 >= _170:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                            revert with 0, 17
                        if not var53001 * var53002:
                            revert with 0, 18
                        if 0 >= _170:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                            revert with 0, 17
                        if not var75001 * var75002:
                            revert with 0, 18
                        if 10^18 * mem[ceil32(return_data.size) + 224] / var75001 * var75002 and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / var75001 * var75002:
                            revert with 0, 17
                        if not 10^18 * mem[ceil32(return_data.size) + 256] / var53001 * var53002:
                            revert with 0, 18
                        mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / var75001 * var75002 / 10^18 * mem[ceil32(return_data.size) + 256] / var53001 * var53002
    else:
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _169 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _171 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _169 + (32 * _171) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _171] = mem[_169 + 224 len 32 * _171]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _323 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _325 = mem[_323]
        require mem[_323] == mem[_323 + 31 len 1]
        if not mem[_323 + 31 len 1]:
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _331 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_331] == mem[_331 + 31 len 1]
            if not mem[_331 + 31 len 1]:
                if 1 >= _171:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                    revert with 0, 17
                if 0 >= _171:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                    revert with 0, 17
                if 10^18 * mem[ceil32(return_data.size) + 224] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224]:
                    revert with 0, 17
                if not 10^18 * mem[ceil32(return_data.size) + 256]:
                    revert with 0, 18
                mem[mem[64]] = 1000000000000000000 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^18 * mem[ceil32(return_data.size) + 256]
            else:
                if bool(bool(mem[_331 + 31 len 1] < 78)) or bool(bool(mem[_331 + 31 len 1] < 32)):
                    if 10^mem[_331 + 31 len 1] > -1:
                        revert with 0, 17
                    if 1 >= _171:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                        revert with 0, 17
                    if 0 >= _171:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    if not 10^mem[_331 + 31 len 1]:
                        revert with 0, 18
                    if 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_331 + 31 len 1] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_331 + 31 len 1]:
                        revert with 0, 17
                    if not 10^18 * mem[ceil32(return_data.size) + 256]:
                        revert with 0, 18
                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_331 + 31 len 1] / 10^18 * mem[ceil32(return_data.size) + 256]
                else:
                    if var65005 > 1:
                        s = var65001
                        t = var65002
                        u = var65005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if 1 >= _171:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                    revert with 0, 17
                                if 0 >= _171:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                if 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t:
                                    revert with 0, 17
                                if not 10^18 * mem[ceil32(return_data.size) + 256]:
                                    revert with 0, 18
                                mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t / 10^18 * mem[ceil32(return_data.size) + 256]
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if 1 >= _171:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                    revert with 0, 17
                                if 0 >= _171:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                if 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t:
                                    revert with 0, 17
                                if not 10^18 * mem[ceil32(return_data.size) + 256]:
                                    revert with 0, 18
                                mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t / 10^18 * mem[ceil32(return_data.size) + 256]
                            return memory
                              from mem[64]
                               len 32
                        revert with 0, 17
                    if var65002 > -1 / var65001:
                        revert with 0, 17
                    if 1 >= _171:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                        revert with 0, 17
                    if 0 >= _171:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    if not var65001 * var65002:
                        revert with 0, 18
                    if 10^18 * mem[ceil32(return_data.size) + 224] / var65001 * var65002 and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / var65001 * var65002:
                        revert with 0, 17
                    if not 10^18 * mem[ceil32(return_data.size) + 256]:
                        revert with 0, 18
                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / var65001 * var65002 / 10^18 * mem[ceil32(return_data.size) + 256]
        else:
            if bool(bool(mem[_323 + 31 len 1] < 78)) or bool(bool(mem[_323 + 31 len 1] < 32)):
                if 10^mem[_323 + 31 len 1] > -1:
                    revert with 0, 17
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _339 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_339] == mem[_339 + 31 len 1]
                if not mem[_339 + 31 len 1]:
                    if 1 >= _171:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                        revert with 0, 17
                    if not 10^uint8(_325):
                        revert with 0, 18
                    if 0 >= _171:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    if 10^18 * mem[ceil32(return_data.size) + 224] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    if not 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_325):
                        revert with 0, 18
                    mem[mem[64]] = 1000000000000000000 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_325)
                else:
                    if bool(bool(mem[_339 + 31 len 1] < 78)) or bool(bool(mem[_339 + 31 len 1] < 32)):
                        if 10^mem[_339 + 31 len 1] > -1:
                            revert with 0, 17
                        if 1 >= _171:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                            revert with 0, 17
                        if not 10^uint8(_325):
                            revert with 0, 18
                        if 0 >= _171:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                            revert with 0, 17
                        if not 10^mem[_339 + 31 len 1]:
                            revert with 0, 18
                        if 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_339 + 31 len 1] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_339 + 31 len 1]:
                            revert with 0, 17
                        if not 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_325):
                            revert with 0, 18
                        mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_339 + 31 len 1] / 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_325)
                    else:
                        if var71005 > 1:
                            s = var71001
                            t = var71002
                            u = var71005
                            while s <= -1 / s:
                                if not bool(u):
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if t > -1 / s * s:
                                        revert with 0, 17
                                    if 1 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not 10^uint8(_325):
                                        revert with 0, 18
                                    if 0 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_325):
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t / 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_325)
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if 1 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not 10^uint8(_325):
                                        revert with 0, 18
                                    if 0 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_325):
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t / 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_325)
                                return memory
                                  from mem[64]
                                   len 32
                            revert with 0, 17
                        if var71002 > -1 / var71001:
                            revert with 0, 17
                        if 1 >= _171:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                            revert with 0, 17
                        if not 10^uint8(_325):
                            revert with 0, 18
                        if 0 >= _171:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                            revert with 0, 17
                        if not var71001 * var71002:
                            revert with 0, 18
                        if 10^18 * mem[ceil32(return_data.size) + 224] / var71001 * var71002 and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / var71001 * var71002:
                            revert with 0, 17
                        if not 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_325):
                            revert with 0, 18
                        mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / var71001 * var71002 / 10^18 * mem[ceil32(return_data.size) + 256] / 10^uint8(_325)
            else:
                if var54005 > 1:
                    s = var54001
                    t = var54002
                    u = var54005
                    while s <= -1 / s:
                        if not bool(u):
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = t
                                u = uint255(u) * 0.5
                                continue 
                            if t > -1 / s * s:
                                revert with 0, 17
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _693 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_693] == mem[_693 + 31 len 1]
                            if not mem[_693 + 31 len 1]:
                                if 1 >= _171:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                    revert with 0, 17
                                if not s * s * t:
                                    revert with 0, 18
                                if 0 >= _171:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 17
                                if 10^18 * mem[ceil32(return_data.size) + 224] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 17
                                if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = 1000000000000000000 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t
                            else:
                                if bool(bool(mem[_693 + 31 len 1] < 78)) or bool(bool(mem[_693 + 31 len 1] < 32)):
                                    if 10^mem[_693 + 31 len 1] > -1:
                                        revert with 0, 17
                                    if 1 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if 0 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not 10^mem[_693 + 31 len 1]:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_693 + 31 len 1] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_693 + 31 len 1]:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_693 + 31 len 1] / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t
                                else:
                                    if var81005 > 1:
                                        u = var81001
                                        v = var81002
                                        w = var81005
                                        while u <= -1 / u:
                                            if not bool(w):
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if v > -1 / u * u:
                                                    revert with 0, 17
                                                if 1 >= _171:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 17
                                                if not s * s * t:
                                                    revert with 0, 18
                                                if 0 >= _171:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                                    revert with 0, 17
                                                if not u * u * v:
                                                    revert with 0, 18
                                                if 10^18 * mem[ceil32(return_data.size) + 224] / u * u * v and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / u * u * v:
                                                    revert with 0, 17
                                                if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t:
                                                    revert with 0, 18
                                                mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / u * u * v / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t
                                            else:
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = u * v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if u * v > -1 / u * u:
                                                    revert with 0, 17
                                                if 1 >= _171:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 17
                                                if not s * s * t:
                                                    revert with 0, 18
                                                if 0 >= _171:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                                    revert with 0, 17
                                                if not u * u * u * v:
                                                    revert with 0, 18
                                                if 10^18 * mem[ceil32(return_data.size) + 224] / u * u * u * v and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / u * u * u * v:
                                                    revert with 0, 17
                                                if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t:
                                                    revert with 0, 18
                                                mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / u * u * u * v / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t
                                            return memory
                                              from mem[64]
                                               len 32
                                        revert with 0, 17
                                    if var81002 > -1 / var81001:
                                        revert with 0, 17
                                    if 1 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if 0 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not var81001 * var81002:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / var81001 * var81002 and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / var81001 * var81002:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / var81001 * var81002 / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * t
                        else:
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = s * t
                                u = uint255(u) * 0.5
                                continue 
                            if s * t > -1 / s * s:
                                revert with 0, 17
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _700 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_700] == mem[_700 + 31 len 1]
                            if not mem[_700 + 31 len 1]:
                                if 1 >= _171:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                    revert with 0, 17
                                if not s * s * s * t:
                                    revert with 0, 18
                                if 0 >= _171:
                                    revert with 0, 50
                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 17
                                if 10^18 * mem[ceil32(return_data.size) + 224] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 17
                                if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t:
                                    revert with 0, 18
                                mem[mem[64]] = 1000000000000000000 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t
                            else:
                                if bool(bool(mem[_700 + 31 len 1] < 78)) or bool(bool(mem[_700 + 31 len 1] < 32)):
                                    if 10^mem[_700 + 31 len 1] > -1:
                                        revert with 0, 17
                                    if 1 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if 0 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not 10^mem[_700 + 31 len 1]:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_700 + 31 len 1] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_700 + 31 len 1]:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_700 + 31 len 1] / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t
                                else:
                                    if var82005 > 1:
                                        u = var82001
                                        v = var82002
                                        w = var82005
                                        while u <= -1 / u:
                                            if not bool(w):
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if v > -1 / u * u:
                                                    revert with 0, 17
                                                if 1 >= _171:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 17
                                                if not s * s * s * t:
                                                    revert with 0, 18
                                                if 0 >= _171:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                                    revert with 0, 17
                                                if not u * u * v:
                                                    revert with 0, 18
                                                if 10^18 * mem[ceil32(return_data.size) + 224] / u * u * v and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / u * u * v:
                                                    revert with 0, 17
                                                if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t:
                                                    revert with 0, 18
                                                mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / u * u * v / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t
                                            else:
                                                if uint255(w) * 0.5 > 1:
                                                    u = u * u
                                                    v = u * v
                                                    w = uint255(w) * 0.5
                                                    continue 
                                                if u * v > -1 / u * u:
                                                    revert with 0, 17
                                                if 1 >= _171:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 17
                                                if not s * s * s * t:
                                                    revert with 0, 18
                                                if 0 >= _171:
                                                    revert with 0, 50
                                                if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                                    revert with 0, 17
                                                if not u * u * u * v:
                                                    revert with 0, 18
                                                if 10^18 * mem[ceil32(return_data.size) + 224] / u * u * u * v and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / u * u * u * v:
                                                    revert with 0, 17
                                                if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t:
                                                    revert with 0, 18
                                                mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / u * u * u * v / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t
                                            return memory
                                              from mem[64]
                                               len 32
                                        revert with 0, 17
                                    if var82002 > -1 / var82001:
                                        revert with 0, 17
                                    if 1 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if 0 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not var82001 * var82002:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / var82001 * var82002 and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / var82001 * var82002:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t:
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / var82001 * var82002 / 10^18 * mem[ceil32(return_data.size) + 256] / s * s * s * t
                        return memory
                          from mem[64]
                           len 32
                    revert with 0, 17
                if var54002 > -1 / var54001:
                    revert with 0, 17
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _471 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_471] == mem[_471 + 31 len 1]
                if not mem[_471 + 31 len 1]:
                    if 1 >= _171:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                        revert with 0, 17
                    if not var54001 * var54002:
                        revert with 0, 18
                    if 0 >= _171:
                        revert with 0, 50
                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    if 10^18 * mem[ceil32(return_data.size) + 224] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224]:
                        revert with 0, 17
                    if not 10^18 * mem[ceil32(return_data.size) + 256] / var54001 * var54002:
                        revert with 0, 18
                    mem[mem[64]] = 1000000000000000000 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^18 * mem[ceil32(return_data.size) + 256] / var54001 * var54002
                else:
                    if bool(bool(mem[_471 + 31 len 1] < 78)) or bool(bool(mem[_471 + 31 len 1] < 32)):
                        if 10^mem[_471 + 31 len 1] > -1:
                            revert with 0, 17
                        if 1 >= _171:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                            revert with 0, 17
                        if not var54001 * var54002:
                            revert with 0, 18
                        if 0 >= _171:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                            revert with 0, 17
                        if not 10^mem[_471 + 31 len 1]:
                            revert with 0, 18
                        if 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_471 + 31 len 1] and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_471 + 31 len 1]:
                            revert with 0, 17
                        if not 10^18 * mem[ceil32(return_data.size) + 256] / var54001 * var54002:
                            revert with 0, 18
                        mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / 10^mem[_471 + 31 len 1] / 10^18 * mem[ceil32(return_data.size) + 256] / var54001 * var54002
                    else:
                        if var76005 > 1:
                            s = var76001
                            t = var76002
                            u = var76005
                            while s <= -1 / s:
                                if not bool(u):
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if t > -1 / s * s:
                                        revert with 0, 17
                                    if 1 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not var54001 * var54002:
                                        revert with 0, 18
                                    if 0 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not s * s * t:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / var54001 * var54002:
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / s * s * t / 10^18 * mem[ceil32(return_data.size) + 256] / var54001 * var54002
                                else:
                                    if uint255(u) * 0.5 > 1:
                                        s = s * s
                                        t = s * t
                                        u = uint255(u) * 0.5
                                        continue 
                                    if s * t > -1 / s * s:
                                        revert with 0, 17
                                    if 1 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 17
                                    if not var54001 * var54002:
                                        revert with 0, 18
                                    if 0 >= _171:
                                        revert with 0, 50
                                    if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                                        revert with 0, 17
                                    if not s * s * s * t:
                                        revert with 0, 18
                                    if 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t:
                                        revert with 0, 17
                                    if not 10^18 * mem[ceil32(return_data.size) + 256] / var54001 * var54002:
                                        revert with 0, 18
                                    mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / s * s * s * t / 10^18 * mem[ceil32(return_data.size) + 256] / var54001 * var54002
                                return memory
                                  from mem[64]
                                   len 32
                            revert with 0, 17
                        if var76002 > -1 / var76001:
                            revert with 0, 17
                        if 1 >= _171:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 256] and 10^18 > -1 / mem[ceil32(return_data.size) + 256]:
                            revert with 0, 17
                        if not var54001 * var54002:
                            revert with 0, 18
                        if 0 >= _171:
                            revert with 0, 50
                        if mem[ceil32(return_data.size) + 224] and 10^18 > -1 / mem[ceil32(return_data.size) + 224]:
                            revert with 0, 17
                        if not var76001 * var76002:
                            revert with 0, 18
                        if 10^18 * mem[ceil32(return_data.size) + 224] / var76001 * var76002 and 10^18 > -1 / 10^18 * mem[ceil32(return_data.size) + 224] / var76001 * var76002:
                            revert with 0, 17
                        if not 10^18 * mem[ceil32(return_data.size) + 256] / var54001 * var54002:
                            revert with 0, 18
                        mem[mem[64]] = 10^18 * 10^18 * mem[ceil32(return_data.size) + 224] / var76001 * var76002 / 10^18 * mem[ceil32(return_data.size) + 256] / var54001 * var54002
    return memory
      from mem[64]
       len 32
}



}
