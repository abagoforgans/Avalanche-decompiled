contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
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
    if not ext_call.return_data[50 len 14]:
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
        if ext_call.return_data[50 len 14]:
            if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] <= 3:
                if not ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]:
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
                s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / 2) + 1
                t = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]
                while s < t:
                    require s
                    s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / s) + s / 2
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
    if not ext_call.return_data[0]:
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
        if not ext_call.return_data[50 len 14]:
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
            require ext_call.return_data[50 len 14]
            if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] <= 3:
                if not ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]:
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
                s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / 2) + 1
                t = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]
                while s < t:
                    require s
                    s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / s) + s / 2
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



}
