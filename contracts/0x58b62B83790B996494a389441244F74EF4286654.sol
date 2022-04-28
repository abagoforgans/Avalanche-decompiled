contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function stakingPoolVote(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(stor0)
    staticcall stor0.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function podLeaderVote(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(stor1)
    staticcall stor1.poolInfo(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
    require ext_code.size(stor1)
    staticcall stor1.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Cannot divide by zero'
    if stor2 != address(ext_call.return_data[0]):
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[50 len 14] and 1 > -1 / ext_call.return_data[50 len 14]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not uint8(ext_call.return_data[0]):
                if ext_call.return_data[0] and ext_call.return_data[50 len 14] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0])
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if ext_call.return_data[0] and ext_call.return_data[50 len 14] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
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
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / s * t)
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if ext_call.return_data[50 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not uint8(ext_call.return_data[0]):
                if ext_call.return_data[0] and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                return (ext_call.return_data[0] * ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0])
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if ext_call.return_data[0] and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return (ext_call.return_data[0] * ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
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
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return (ext_call.return_data[0] * ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / s * t)
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
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
        if ext_call.return_data[50 len 14] and s * t > -1 / ext_call.return_data[50 len 14]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] * s * t / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[50 len 14] * s * t / ext_call.return_data[0])
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if ext_call.return_data[0] and ext_call.return_data[50 len 14] * s * t / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (ext_call.return_data[0] * ext_call.return_data[50 len 14] * s * t / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
        u = 10
        v = 1
        idx = uint8(ext_call.return_data[0])
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
        if ext_call.return_data[0] and ext_call.return_data[50 len 14] * s * t / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        return (ext_call.return_data[0] * ext_call.return_data[50 len 14] * s * t / ext_call.return_data[0] / u * v)
    if not uint8(ext_call.return_data[0]):
        if ext_call.return_data[18 len 14] and 1 > -1 / ext_call.return_data[18 len 14]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[0] and ext_call.return_data[18 len 14] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0])
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if ext_call.return_data[0] and ext_call.return_data[18 len 14] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
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
        if ext_call.return_data[0] and ext_call.return_data[18 len 14] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return (ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[0] / s * t)
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if ext_call.return_data[18 len 14] and 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[18 len 14]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not uint8(ext_call.return_data[0]):
            if ext_call.return_data[0] and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0])
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if ext_call.return_data[0] and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (ext_call.return_data[0] * ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
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
        if ext_call.return_data[0] and ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return (ext_call.return_data[0] * ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / s * t)
    s = 10
    t = 1
    idx = uint8(ext_call.return_data[0])
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
    if ext_call.return_data[18 len 14] and s * t > -1 / ext_call.return_data[18 len 14]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if not uint8(ext_call.return_data[0]):
        if ext_call.return_data[0] and ext_call.return_data[18 len 14] * s * t / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * ext_call.return_data[18 len 14] * s * t / ext_call.return_data[0])
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if ext_call.return_data[0] and ext_call.return_data[18 len 14] * s * t / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return (ext_call.return_data[0] * ext_call.return_data[18 len 14] * s * t / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
    u = 10
    v = 1
    idx = uint8(ext_call.return_data[0])
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
    if ext_call.return_data[0] and ext_call.return_data[18 len 14] * s * t / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not u * v:
        revert with 0, 18
    return (ext_call.return_data[0] * ext_call.return_data[18 len 14] * s * t / ext_call.return_data[0] / u * v)
}



}
