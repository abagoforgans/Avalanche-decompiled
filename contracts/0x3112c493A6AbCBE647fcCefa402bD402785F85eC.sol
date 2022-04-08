contract main {




// =====================  Runtime code  =====================


#
#  - consultUniswapV2LPToken(address arg1, address arg2, address arg3, address arg4, address arg5)
#
const PRECISION = 10^18


function _fallback() payable {
    revert
}

function consultMetaStableSwap(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require ext_code.size(arg2)
    staticcall arg2.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg3)
    staticcall arg3.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg4)
    staticcall arg4.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(arg5)
        staticcall arg5.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(arg1)
            staticcall arg1.calculateSwapToBase(address rg1, address rg2, uint8 rg3, uint8 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3), ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not arg6:
                revert with 0, 1
            require ext_code.size(arg6)
            staticcall arg6.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg6)
            staticcall arg6.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (10^18 * ext_call.return_data[32] * ext_call.return_data[0])
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (10^18 * ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (10^18 * ext_call.return_data[32] * ext_call.return_data[0] / s * t)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            require ext_code.size(arg1)
            staticcall arg1.calculateSwapToBase(address rg1, address rg2, uint8 rg3, uint8 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3), ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            if not arg6:
                revert with 0, 1
            require ext_code.size(arg6)
            staticcall arg6.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg6)
            staticcall arg6.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / s * t)
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        require ext_code.size(arg1)
        staticcall arg1.calculateSwapToBase(address rg1, address rg2, uint8 rg3, uint8 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(arg2), address(arg3), ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        if not arg6:
            revert with 0, 1
        require ext_code.size(arg6)
        staticcall arg6.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(arg6)
        staticcall arg6.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / s * t)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / s * t / 10^ext_call.return_data[31 len 1])
        u = 10
        v = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / s * t > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / s * t / u * v)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        require ext_code.size(arg5)
        staticcall arg5.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(arg1)
            staticcall arg1.calculateSwapToBase(address rg1, address rg2, uint8 rg3, uint8 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3), ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10^uint8(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not arg6:
                revert with 0, 1
            require ext_code.size(arg6)
            staticcall arg6.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg6)
            staticcall arg6.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (10^18 * ext_call.return_data[32] * ext_call.return_data[0])
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (10^18 * ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (10^18 * ext_call.return_data[32] * ext_call.return_data[0] / s * t)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            require ext_code.size(arg1)
            staticcall arg1.calculateSwapToBase(address rg1, address rg2, uint8 rg3, uint8 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3), ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10^uint8(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            if not arg6:
                revert with 0, 1
            require ext_code.size(arg6)
            staticcall arg6.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg6)
            staticcall arg6.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / s * t)
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        require ext_code.size(arg1)
        staticcall arg1.calculateSwapToBase(address rg1, address rg2, uint8 rg3, uint8 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(arg2), address(arg3), ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, 10^uint8(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        if not arg6:
            revert with 0, 1
        require ext_code.size(arg6)
        staticcall arg6.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(arg6)
        staticcall arg6.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / s * t)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / s * t / 10^ext_call.return_data[31 len 1])
        u = 10
        v = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / s * t > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / s * t / u * v)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(arg5)
    staticcall arg5.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(arg1)
        staticcall arg1.calculateSwapToBase(address rg1, address rg2, uint8 rg3, uint8 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(arg2), address(arg3), ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, s * t
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not arg6:
            revert with 0, 1
        require ext_code.size(arg6)
        staticcall arg6.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(arg6)
        staticcall arg6.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            return (10^18 * ext_call.return_data[32] * ext_call.return_data[0])
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (10^18 * ext_call.return_data[32] * ext_call.return_data[0] / 10^ext_call.return_data[31 len 1])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return (10^18 * ext_call.return_data[32] * ext_call.return_data[0] / s * t)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        require ext_code.size(arg1)
        staticcall arg1.calculateSwapToBase(address rg1, address rg2, uint8 rg3, uint8 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(arg2), address(arg3), ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, s * t
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        if not arg6:
            revert with 0, 1
        require ext_code.size(arg6)
        staticcall arg6.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(arg6)
        staticcall arg6.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / s * t)
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    require ext_code.size(arg1)
    staticcall arg1.calculateSwapToBase(address rg1, address rg2, uint8 rg3, uint8 rg4, uint256 rg5) with:
            gas gas_remaining wei
           args address(arg2), address(arg3), ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not u * v:
        revert with 0, 18
    if not arg6:
        revert with 0, 1
    require ext_code.size(arg6)
    staticcall arg6.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(arg6)
    staticcall arg6.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / u * v > -1 / ext_call.return_data[32]:
            revert with 0, 17
        return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / u * v)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / u * v > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / u * v / 10^ext_call.return_data[31 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[32] and 10^18 * ext_call.return_data[0] / u * v > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (ext_call.return_data[32] * 10^18 * ext_call.return_data[0] / u * v / s * t)
}

function consultToken(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg2:
        if not arg3:
            revert with 0, 'route empty'
        if not arg2:
            if not arg3:
                return 10^18
            require ext_code.size(arg3)
            staticcall arg3.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg3)
            staticcall arg3.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (10^18 * ext_call.return_data[32])
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (10^18 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (10^18 * ext_call.return_data[32] / s * t)
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(arg2)
        staticcall arg2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(arg2)
        staticcall arg2.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg2)
        staticcall arg2.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg1 == ext_call.return_data[12 len 20]:
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, ext_call.return_data[32]) > -1:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > -2:
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) + 1:
                revert with 0, 18
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1:
                    revert with 0, 17
                if not arg3:
                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1)
                require ext_code.size(arg3)
                staticcall arg3.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                require ext_code.size(arg3)
                staticcall arg3.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    return (10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1)
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    return (10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / 10^ext_call.return_data[31 len 1])
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / s * t)
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if not arg3:
                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / 10^ext_call.return_data[31 len 1])
                require ext_code.size(arg3)
                staticcall arg3.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                require ext_code.size(arg3)
                staticcall arg3.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    return (ext_call.return_data[32] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / 10^uint8(ext_call.return_data[0]))
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / 10^uint8(ext_call.return_data[0]) / s * t)
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if not arg3:
                return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / s * t)
            require ext_code.size(arg3)
            staticcall arg3.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg3)
            staticcall arg3.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (ext_call.return_data[32] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / s * t)
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / s * t / 10^ext_call.return_data[31 len 1])
            u = 10
            v = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 1 / s * t / u * v)
        if arg1 != ext_call.return_data[12 len 20]:
            revert with 0, 1
        require ext_code.size(arg2)
        staticcall arg2.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[0]) > -1:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) > -2:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) + 1:
            revert with 0, 18
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1:
                revert with 0, 17
            if not arg3:
                return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1)
            require ext_code.size(arg3)
            staticcall arg3.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg3)
            staticcall arg3.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1)
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (10^18 * ext_call.return_data[32] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / s * t)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if not arg3:
                return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / 10^ext_call.return_data[31 len 1])
            require ext_code.size(arg3)
            staticcall arg3.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg3)
            staticcall arg3.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (ext_call.return_data[32] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / 10^uint8(ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / 10^uint8(ext_call.return_data[0]) / s * t)
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        if not arg3:
            return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / s * t)
        require ext_code.size(arg3)
        staticcall arg3.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(arg3)
        staticcall arg3.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            return (ext_call.return_data[32] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / s * t)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / s * t / 10^ext_call.return_data[31 len 1])
        u = 10
        v = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[32] and 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / s * t > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        return (ext_call.return_data[32] * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 1 / s * t / u * v)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        require ext_code.size(arg2)
        staticcall arg2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(arg2)
        staticcall arg2.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg2)
        staticcall arg2.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg1 == ext_call.return_data[12 len 20]:
            if 10^uint8(ext_call.return_data[0]) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if 10^uint8(ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) > !10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) and 10^18 > -1 / 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not arg3:
                    return (10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]))
                require ext_code.size(arg3)
                staticcall arg3.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                require ext_code.size(arg3)
                staticcall arg3.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    return (10^18 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]))
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    return (10^18 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (10^18 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / s * t)
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) and 10^18 > -1 / 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if not arg3:
                    return (10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
                require ext_code.size(arg3)
                staticcall arg3.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                require ext_code.size(arg3)
                staticcall arg3.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    return (ext_call.return_data[32] * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]))
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    return (ext_call.return_data[32] * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / s * t)
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) and 10^18 > -1 / 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if not arg3:
                return (10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / s * t)
            require ext_code.size(arg3)
            staticcall arg3.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg3)
            staticcall arg3.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (ext_call.return_data[32] * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / s * t)
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / s * t > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / s * t / 10^ext_call.return_data[31 len 1])
            u = 10
            v = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + 10^uint8(ext_call.return_data[0]) / s * t / u * v)
        if arg1 != ext_call.return_data[12 len 20]:
            revert with 0, 1
        require ext_code.size(arg2)
        staticcall arg2.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 10^uint8(ext_call.return_data[0]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if 10^uint8(ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / 10^uint8(ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[32]) > !10^uint8(ext_call.return_data[0]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) and 10^18 > -1 / 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not arg3:
                return (10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]))
            require ext_code.size(arg3)
            staticcall arg3.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg3)
            staticcall arg3.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (10^18 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (10^18 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (10^18 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / s * t)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) and 10^18 > -1 / 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if not arg3:
                return (10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
            require ext_code.size(arg3)
            staticcall arg3.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg3)
            staticcall arg3.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (ext_call.return_data[32] * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / s * t)
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) and 10^18 > -1 / 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]):
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        if not arg3:
            return (10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / s * t)
        require ext_code.size(arg3)
        staticcall arg3.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(arg3)
        staticcall arg3.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            return (ext_call.return_data[32] * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / s * t)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / s * t > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / s * t / 10^ext_call.return_data[31 len 1])
        u = 10
        v = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[32] and 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / s * t > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        return (ext_call.return_data[32] * 10^18 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + 10^uint8(ext_call.return_data[0]) / s * t / u * v)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(arg2)
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg2)
    staticcall arg2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg2)
    staticcall arg2.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 == ext_call.return_data[12 len 20]:
        if s * t <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if s * t and Mask(112, 0, ext_call.return_data[32]) > -1 / s * t:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) > !(s * t):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]) + (s * t):
            revert with 0, 18
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) and 10^18 > -1 / s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t):
                revert with 0, 17
            if not arg3:
                return (10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t))
            require ext_code.size(arg3)
            staticcall arg3.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg3)
            staticcall arg3.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (10^18 * ext_call.return_data[32] * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (10^18 * ext_call.return_data[32] * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / 10^ext_call.return_data[31 len 1])
            u = 10
            v = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            return (10^18 * ext_call.return_data[32] * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / u * v)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) and 10^18 > -1 / s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t):
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if not arg3:
                return (10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / 10^ext_call.return_data[31 len 1])
            require ext_code.size(arg3)
            staticcall arg3.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(arg3)
            staticcall arg3.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                return (ext_call.return_data[32] * 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / 10^uint8(ext_call.return_data[0]))
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                    revert with 0, 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                return (ext_call.return_data[32] * 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
            u = 10
            v = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / 10^uint8(ext_call.return_data[0]) / u * v)
        u = 10
        v = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) and 10^18 > -1 / s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t):
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        if not arg3:
            return (10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / u * v)
        require ext_code.size(arg3)
        staticcall arg3.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(arg3)
        staticcall arg3.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / u * v > -1 / ext_call.return_data[32]:
                revert with 0, 17
            return (ext_call.return_data[32] * 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / u * v)
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / u * v > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / u * v / 10^ext_call.return_data[31 len 1])
        w = 10
        x = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if w > -1 / w:
                revert with 0, 17
            if not bool(idx):
                w = w * w
                x = x
                idx = uint255(idx) * 0.5
                continue 
            w = w * w
            x = w * x
            idx = uint255(idx) * 0.5
            continue 
        if x > -1 / w:
            revert with 0, 17
        if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / u * v > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not w * x:
            revert with 0, 18
        return (ext_call.return_data[32] * 10^18 * s * t * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) + (s * t) / u * v / w * x)
    if arg1 != ext_call.return_data[12 len 20]:
        revert with 0, 1
    require ext_code.size(arg2)
    staticcall arg2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if s * t <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if s * t and Mask(112, 0, ext_call.return_data[0]) > -1 / s * t:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) > !(s * t):
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[32]) + (s * t):
        revert with 0, 18
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) and 10^18 > -1 / s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t):
            revert with 0, 17
        if not arg3:
            return (10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t))
        require ext_code.size(arg3)
        staticcall arg3.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(arg3)
        staticcall arg3.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            return (10^18 * ext_call.return_data[32] * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (10^18 * ext_call.return_data[32] * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / 10^ext_call.return_data[31 len 1])
        u = 10
        v = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        return (10^18 * ext_call.return_data[32] * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / u * v)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) and 10^18 > -1 / s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t):
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        if not arg3:
            return (10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / 10^ext_call.return_data[31 len 1])
        require ext_code.size(arg3)
        staticcall arg3.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(arg3)
        staticcall arg3.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            return (ext_call.return_data[32] * 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / 10^uint8(ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            return (ext_call.return_data[32] * 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1])
        u = 10
        v = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        return (ext_call.return_data[32] * 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / 10^uint8(ext_call.return_data[0]) / u * v)
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) and 10^18 > -1 / s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t):
        revert with 0, 17
    if not u * v:
        revert with 0, 18
    if not arg3:
        return (10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / u * v)
    require ext_code.size(arg3)
    staticcall arg3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(arg3)
    staticcall arg3.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / u * v > -1 / ext_call.return_data[32]:
            revert with 0, 17
        return (ext_call.return_data[32] * 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / u * v)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / u * v > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        return (ext_call.return_data[32] * 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / u * v / 10^ext_call.return_data[31 len 1])
    w = 10
    x = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if w > -1 / w:
            revert with 0, 17
        if not bool(idx):
            w = w * w
            x = x
            idx = uint255(idx) * 0.5
            continue 
        w = w * w
        x = w * x
        idx = uint255(idx) * 0.5
        continue 
    if x > -1 / w:
        revert with 0, 17
    if ext_call.return_data[32] and 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / u * v > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if not w * x:
        revert with 0, 18
    return (ext_call.return_data[32] * 10^18 * s * t * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) + (s * t) / u * v / w * x)
}



}
