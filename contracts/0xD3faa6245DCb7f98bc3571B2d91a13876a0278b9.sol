contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_bdbe0168(?) payable {
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
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args 0
            return 0
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        staticcall 'console.log'.0x6c0f6980 with:
                gas gas_remaining wei
               args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    if not Mask(112, 0, ext_call.return_data[32]):
        if ext_call.return_data[0] <= 3:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0
                return 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
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
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0
                return 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        if -t > 0:
            revert with 0, 'ds-math-sub-underflow'
        if not -t:
            if t < 0:
                revert with 0, 'ds-math-add-overflow'
            require t
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / t:
                if not ext_call.return_data[0]:
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args 0
                    return 0
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args Mask(224, 31, ext_call.return_data[0] * 0 / t / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * 0 / t / ext_call.return_data[0] % 2147483648, 0
                return 2 * ext_call.return_data[0] * 0 / t / ext_call.return_data[0], 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args Mask(224, 31, ext_call.return_data[0] * 0 / t / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * 0 / t / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 2 * ext_call.return_data[0] * 0 / t / ext_call.return_data[0], 
                   2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        require -t
        if -1 * ext_call.return_data[0] * t / -t != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if t < 0:
            revert with 0, 'ds-math-add-overflow'
        require t
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not -1 * ext_call.return_data[0] * t / t:
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0
                return 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not ext_call.return_data[0]:
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args Mask(224, 31, ext_call.return_data[0] * -1 * ext_call.return_data[0] * t / t / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * -1 * ext_call.return_data[0] * t / t / ext_call.return_data[0] % 2147483648, 0
            return 2 * ext_call.return_data[0] * -1 * ext_call.return_data[0] * t / t / ext_call.return_data[0], 0
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        staticcall 'console.log'.0x6c0f6980 with:
                gas gas_remaining wei
               args Mask(224, 31, ext_call.return_data[0] * -1 * ext_call.return_data[0] * t / t / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * -1 * ext_call.return_data[0] * t / t / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        return 2 * ext_call.return_data[0] * -1 * ext_call.return_data[0] * t / t / ext_call.return_data[0], 
               2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require Mask(112, 0, ext_call.return_data[32])
    if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'ds-math-mul-overflow'
    if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) <= 3:
        if not Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
            if ext_call.return_data[0] <= 3:
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args 0
                    return 0
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
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
                       args stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args 0
                    return 0
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            if -t > 0:
                revert with 0, 'ds-math-sub-underflow'
            if not -t:
                if t < 0:
                    revert with 0, 'ds-math-add-overflow'
                require t
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / t:
                    if not ext_call.return_data[0]:
                        staticcall 'console.log'.0x6c0f6980 with:
                                gas gas_remaining wei
                               args 0
                        return 0
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args Mask(224, 31, ext_call.return_data[0] * 0 / t / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * 0 / t / ext_call.return_data[0] % 2147483648, 0
                    return 2 * ext_call.return_data[0] * 0 / t / ext_call.return_data[0], 0
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args Mask(224, 31, ext_call.return_data[0] * 0 / t / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * 0 / t / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 2 * ext_call.return_data[0] * 0 / t / ext_call.return_data[0], 
                       2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            require -t
            if -1 * ext_call.return_data[0] * t / -t != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if t < 0:
                revert with 0, 'ds-math-add-overflow'
            require t
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not -1 * ext_call.return_data[0] * t / t:
                if not ext_call.return_data[0]:
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args 0
                    return 0
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args Mask(224, 31, ext_call.return_data[0] * -1 * ext_call.return_data[0] * t / t / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * -1 * ext_call.return_data[0] * t / t / ext_call.return_data[0] % 2147483648, 0
                return 2 * ext_call.return_data[0] * -1 * ext_call.return_data[0] * t / t / ext_call.return_data[0], 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args Mask(224, 31, ext_call.return_data[0] * -1 * ext_call.return_data[0] * t / t / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * -1 * ext_call.return_data[0] * t / t / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 2 * ext_call.return_data[0] * -1 * ext_call.return_data[0] * t / t / ext_call.return_data[0], 
                   2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        if ext_call.return_data[0] <= 3:
            if ext_call.return_data[0]:
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args 0
                    return 0
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0] / 5:
                if not ext_call.return_data[0]:
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args 0
                    return 0
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args Mask(224, 31, ext_call.return_data[0] * ext_call.return_data[0] / 5 / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * ext_call.return_data[0] / 5 / ext_call.return_data[0] % 2147483648, 0
                return 2 * ext_call.return_data[0] * ext_call.return_data[0] / 5 / ext_call.return_data[0], 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args Mask(224, 31, ext_call.return_data[0] * ext_call.return_data[0] / 5 / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * ext_call.return_data[0] / 5 / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 2 * ext_call.return_data[0] * ext_call.return_data[0] / 5 / ext_call.return_data[0], 
                   2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
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
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0
                return 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        if -t + 1 > 1:
            revert with 0, 'ds-math-sub-underflow'
        if not -t + 1:
            if t + 5 < 5:
                revert with 0, 'ds-math-add-overflow'
            require t + 5
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / t + 5:
                if not ext_call.return_data[0]:
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args 0
                    return 0
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args Mask(224, 31, ext_call.return_data[0] * 0 / t + 5 / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * 0 / t + 5 / ext_call.return_data[0] % 2147483648, 0
                return 2 * ext_call.return_data[0] * 0 / t + 5 / ext_call.return_data[0], 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args Mask(224, 31, ext_call.return_data[0] * 0 / t + 5 / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * 0 / t + 5 / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 2 * ext_call.return_data[0] * 0 / t + 5 / ext_call.return_data[0], 
                   2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        require -t + 1
        if ext_call.return_data[0] - (t * ext_call.return_data[0]) / -t + 1 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if t + 5 < 5:
            revert with 0, 'ds-math-add-overflow'
        require t + 5
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5:
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0
                return 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not ext_call.return_data[0]:
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args Mask(224, 31, ext_call.return_data[0] * ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5 / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5 / ext_call.return_data[0] % 2147483648, 0
            return 2 * ext_call.return_data[0] * ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5 / ext_call.return_data[0], 
                   0
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        staticcall 'console.log'.0x6c0f6980 with:
                gas gas_remaining wei
               args Mask(224, 31, ext_call.return_data[0] * ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5 / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5 / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        return 2 * ext_call.return_data[0] * ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5 / ext_call.return_data[0], 
               2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
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
                       args stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args 0
                    return 0
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            if t > t:
                revert with 0, 'ds-math-sub-underflow'
            if not t:
                if 5 * t / 5 != t:
                    revert with 0, 'ds-math-mul-overflow'
                if 5 * t < 5 * t:
                    revert with 0, 'ds-math-add-overflow'
                require 5 * t
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / 5 * t:
                    if not ext_call.return_data[0]:
                        staticcall 'console.log'.0x6c0f6980 with:
                                gas gas_remaining wei
                               args 0
                        return 0
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args Mask(224, 31, ext_call.return_data[0] * 0 / 5 * t / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * 0 / 5 * t / ext_call.return_data[0] % 2147483648, 0
                    return 2 * ext_call.return_data[0] * 0 / 5 * t / ext_call.return_data[0], 0
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args Mask(224, 31, ext_call.return_data[0] * 0 / 5 * t / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * 0 / 5 * t / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 2 * ext_call.return_data[0] * 0 / 5 * t / ext_call.return_data[0], 
                       2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            require t
            if ext_call.return_data[0] * t / t != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 5 * t / 5 != t:
                revert with 0, 'ds-math-mul-overflow'
            if 5 * t < 5 * t:
                revert with 0, 'ds-math-add-overflow'
            require 5 * t
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0] * t / 5 * t:
                if not ext_call.return_data[0]:
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args 0
                    return 0
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args Mask(224, 31, ext_call.return_data[0] * ext_call.return_data[0] * t / 5 * t / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * ext_call.return_data[0] * t / 5 * t / ext_call.return_data[0] % 2147483648, 0
                return 2 * ext_call.return_data[0] * ext_call.return_data[0] * t / 5 * t / ext_call.return_data[0], 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args Mask(224, 31, ext_call.return_data[0] * ext_call.return_data[0] * t / 5 * t / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * ext_call.return_data[0] * t / 5 * t / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 2 * ext_call.return_data[0] * ext_call.return_data[0] * t / 5 * t / ext_call.return_data[0], 
                   2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        if t <= 1:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0
                return 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        if t - 1 > t:
            revert with 0, 'ds-math-sub-underflow'
        if not t - 1:
            if 5 * t / 5 != t:
                revert with 0, 'ds-math-mul-overflow'
            if (5 * t) + 1 < 5 * t:
                revert with 0, 'ds-math-add-overflow'
            require (5 * t) + 1
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args stor1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / (5 * t) + 1:
                if not ext_call.return_data[0]:
                    staticcall 'console.log'.0x6c0f6980 with:
                            gas gas_remaining wei
                           args 0
                    return 0
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args Mask(224, 31, ext_call.return_data[0] * 0 / (5 * t) + 1 / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * 0 / (5 * t) + 1 / ext_call.return_data[0] % 2147483648, 0
                return 2 * ext_call.return_data[0] * 0 / (5 * t) + 1 / ext_call.return_data[0], 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args Mask(224, 31, ext_call.return_data[0] * 0 / (5 * t) + 1 / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * 0 / (5 * t) + 1 / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 2 * ext_call.return_data[0] * 0 / (5 * t) + 1 / ext_call.return_data[0], 
                   2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        require t - 1
        if -ext_call.return_data[0] + (t * ext_call.return_data[0]) / t - 1 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if 5 * t / 5 != t:
            revert with 0, 'ds-math-mul-overflow'
        if (5 * t) + 1 < 5 * t:
            revert with 0, 'ds-math-add-overflow'
        require (5 * t) + 1
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not -ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1:
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0
                return 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not ext_call.return_data[0]:
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args Mask(224, 31, ext_call.return_data[0] * -ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1 / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * -ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1 / ext_call.return_data[0] % 2147483648, 0
            return 2 * ext_call.return_data[0] * -ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1 / ext_call.return_data[0], 
                   0
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        staticcall 'console.log'.0x6c0f6980 with:
                gas gas_remaining wei
               args Mask(224, 31, ext_call.return_data[0] * -ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1 / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * -ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1 / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        return 2 * ext_call.return_data[0] * -ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1 / ext_call.return_data[0], 
               2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
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
               args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args 0
            return 0
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        staticcall 'console.log'.0x6c0f6980 with:
                gas gas_remaining wei
               args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    if t - u > t:
        revert with 0, 'ds-math-sub-underflow'
    if not t - u:
        if 5 * t / 5 != t:
            revert with 0, 'ds-math-mul-overflow'
        if (5 * t) + u < 5 * t:
            revert with 0, 'ds-math-add-overflow'
        require (5 * t) + u
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / (5 * t) + u:
            if not ext_call.return_data[0]:
                staticcall 'console.log'.0x6c0f6980 with:
                        gas gas_remaining wei
                       args 0
                return 0
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not ext_call.return_data[0]:
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args Mask(224, 31, ext_call.return_data[0] * 0 / (5 * t) + u / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * 0 / (5 * t) + u / ext_call.return_data[0] % 2147483648, 0
            return 2 * ext_call.return_data[0] * 0 / (5 * t) + u / ext_call.return_data[0], 0
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        staticcall 'console.log'.0x6c0f6980 with:
                gas gas_remaining wei
               args Mask(224, 31, ext_call.return_data[0] * 0 / (5 * t) + u / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * 0 / (5 * t) + u / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        return 2 * ext_call.return_data[0] * 0 / (5 * t) + u / ext_call.return_data[0], 
               2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require t - u
    if (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / t - u != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if 5 * t / 5 != t:
        revert with 0, 'ds-math-mul-overflow'
    if (5 * t) + u < 5 * t:
        revert with 0, 'ds-math-add-overflow'
    require (5 * t) + u
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u:
        if not ext_call.return_data[0]:
            staticcall 'console.log'.0x6c0f6980 with:
                    gas gas_remaining wei
                   args 0
            return 0
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        staticcall 'console.log'.0x6c0f6980 with:
                gas gas_remaining wei
               args 0, 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        return 0, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not ext_call.return_data[0]:
        staticcall 'console.log'.0x6c0f6980 with:
                gas gas_remaining wei
               args Mask(224, 31, ext_call.return_data[0] * (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u / ext_call.return_data[0] % 2147483648, 0
        return 2 * ext_call.return_data[0] * (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u / ext_call.return_data[0], 
               0
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    staticcall 'console.log'.0x6c0f6980 with:
            gas gas_remaining wei
           args Mask(224, 31, ext_call.return_data[0] * (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u / ext_call.return_data[0]) >> 31, 2 * ext_call.return_data[0] * (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u / ext_call.return_data[0] % 2147483648, 2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    return 2 * ext_call.return_data[0] * (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u / ext_call.return_data[0], 
           2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
}



}
