contract main {




// =====================  Runtime code  =====================


#
#  - getMarketRateExactOut(address arg1, address arg2, uint256 arg3, bytes32 arg4)
#
address dataAddress;

function data() payable {
    return dataAddress
}

function _fallback() payable {
    revert
}

function getMarketTokenAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'MARKET_NOT_FOUND'
    require ext_code.size(arg1)
    staticcall arg1.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.xyt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return address(ext_call.return_data[0]), address(ext_call.return_data[0])
}

function getMarketReserves(bytes32 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(dataAddress)
    staticcall dataAddress.getMarket(bytes32 arg1, address arg2, address arg3) with:
            gas gas_remaining wei
           args arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'MARKET_NOT_FOUND'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[0], ext_call.return_data[64], ext_call.return_data[128]
}

function getMarketRateExactIn(address arg1, address arg2, uint256 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(dataAddress)
    staticcall dataAddress.getMarketFromKey(address arg1, address arg2, bytes32 arg3) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'MARKET_NOT_FOUND'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).xyt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if arg1 != address(ext_call.return_data[0]):
        if ext_call.return_data[96] <= !ext_call.return_data[32]:
            if not ext_call.return_data[32] or 1099511627776 <= -1 / ext_call.return_data[32]:
                if not ext_call.return_data[96] + ext_call.return_data[32]:
                    revert with 0, 18
                if not ext_call.return_data[32] << 40 / ext_call.return_data[96] + ext_call.return_data[32] or ext_call.return_data[64] <= -1 / ext_call.return_data[32] << 40 / ext_call.return_data[96] + ext_call.return_data[32]:
                    require ext_code.size(dataAddress)
                    staticcall dataAddress.swapFee() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(dataAddress)
                    staticcall dataAddress.swapFee() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32] or 1099511627776 <= -1 / ext_call.return_data[32]:
                        if ext_call.return_data[96] / 2 <= !(ext_call.return_data[32] << 40):
                            if not ext_call.return_data[96]:
                                revert with 0, 18
                            if 1099511627776 >= ext_call.return_data[0]:
                                if not arg3 or -ext_call.return_data[0] + 1099511627776 <= -1 / arg3:
                                    if 549755813888 <= !((arg3 << 40) - (ext_call.return_data[0] * arg3)):
                                        if ext_call.return_data[0] <= !(Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                            if not ext_call.return_data[0] or 1099511627776 <= -1 / ext_call.return_data[0]:
                                                if ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2 <= !(ext_call.return_data[0] << 40):
                                                    if not ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                        revert with 0, 18
                                                    if not (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96]:
                                                        if ext_call.return_data[64] and 0 > -1 / ext_call.return_data[64]:
                                                            revert with 0, 17
                                                        return address(ext_call.return_data[0]), 0
                                                    if not (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                        if ext_call.return_data[64] and 1099511627776 > -1 / ext_call.return_data[64]:
                                                            revert with 0, 17
                                                        if 549755813888 > !(ext_call.return_data[64] << 40):
                                                            revert with 0, 17
                                                        return address(ext_call.return_data[0]), Mask(216, 40, (ext_call.return_data[64] << 40) + 549755813888) >> 40
                                                    if (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] >= (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776:
                                                        if Mask(1, 40, (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96]) >> 40:
                                                            s = (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)
                                                            idx = Mask(215, 41, (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96]) >> 41
                                                            t = (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)
                                                            while idx:
                                                                if t and t > -1 / t:
                                                                    revert with 0, 17
                                                                if 549755813888 > !(t * t):
                                                                    revert with 0, 17
                                                                if not bool(idx):
                                                                    s = s
                                                                    idx = idx / 2
                                                                    t = Mask(216, 40, (t * t) + 549755813888) >> 40
                                                                    continue 
                                                                if s and Mask(216, 40, (t * t) + 549755813888) >> 40 > -1 / s:
                                                                    revert with 0, 17
                                                                if 549755813888 > !(s * Mask(216, 40, (t * t) + 549755813888) >> 40):
                                                                    revert with 0, 17
                                                                s = Mask(216, 40, (s * Mask(216, 40, (t * t) + 549755813888) >> 40) + 549755813888) >> 40
                                                                idx = idx / 2
                                                                t = Mask(216, 40, (t * t) + 549755813888) >> 40
                                                                continue 
                                                        else:
                                                            s = 1099511627776
                                                            idx = Mask(215, 41, (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96]) >> 41
                                                            t = (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)
                                                            while idx:
                                                                if t and t > -1 / t:
                                                                    revert with 0, 17
                                                                if 549755813888 > !(t * t):
                                                                    revert with 0, 17
                                                                if not bool(idx):
                                                                    s = s
                                                                    idx = idx / 2
                                                                    t = Mask(216, 40, (t * t) + 549755813888) >> 40
                                                                    continue 
                                                                if s and Mask(216, 40, (t * t) + 549755813888) >> 40 > -1 / s:
                                                                    revert with 0, 17
                                                                if 549755813888 > !(s * Mask(216, 40, (t * t) + 549755813888) >> 40):
                                                                    revert with 0, 17
                                                                s = Mask(216, 40, (s * Mask(216, 40, (t * t) + 549755813888) >> 40) + 549755813888) >> 40
                                                                idx = idx / 2
                                                                t = Mask(216, 40, (t * t) + 549755813888) >> 40
                                                                continue 
                                                        if (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) >= 1099511627776:
                                                            if (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) <= 1099511627776:
                                                                if not (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                    if Mask(216, 0, (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) != (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                        revert with 0, 'MATH_ERROR'
                                                                    if not (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                        if Mask(216, 0, (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) < 1099511627776:
                                                                            revert with 0, 'MATH_ERROR'
                                                                        if Mask(216, 0, (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) >= 2199023255552:
                                                                            revert with 0, 'MATH_ERROR'
                                                                        idx = 40
                                                                        t = 1099511627776
                                                                        u = 0
                                                                        v = Mask(216, 0, (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40))
                                                                        while idx:
                                                                            if v and v > -1 / v:
                                                                                revert with 0, 17
                                                                            if Mask(216, 40, v * v) >> 40 < 2199023255552:
                                                                                if not idx:
                                                                                    revert with 0, 17
                                                                                idx = idx - 1
                                                                                t = t / 2
                                                                                u = u
                                                                                v = Mask(216, 40, v * v) >> 40
                                                                                continue 
                                                                            if u > !(t / 2):
                                                                                revert with 0, 17
                                                                            if not idx:
                                                                                revert with 0, 17
                                                                            idx = idx - 1
                                                                            t = t / 2
                                                                            u = u + (t / 2)
                                                                            v = Mask(215, 41, v * v) >> 41
                                                                            continue 
                                                                        if u > 0x100000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 1
                                                                        if 0 <= !u:
                                                                            if not u:
                                                                                if u <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                    if not (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 or 6931471805599453094172 * u / 10000 * 10^18 <= -1 / (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776:
                                                                                        if 549755813888 <= !((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18):
                                                                                            if var378001 <= !var378002:
                                                                                                if 1 <= !var384002:
                                                                                                    t = var386003 + 1
                                                                                                    v = var386008
                                                                                                    w = var386010
                                                                                                    x = var386011
                                                                                                    x = var386012
                                                                                                    while not t or 1099511627776 <= -1 / t:
                                                                                                        if Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                            revert with 0, 17
                                                                                                        if Mask(216, 0, t) << 39 > !Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888):
                                                                                                            revert with 0, 17
                                                                                                        if not t << 40:
                                                                                                            revert with 0, 18
                                                                                                        if v and (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40 > -1 / v:
                                                                                                            revert with 0, 17
                                                                                                        if 549755813888 > !(v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40):
                                                                                                            revert with 0, 17
                                                                                                        if Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40:
                                                                                                            if 500 == w:
                                                                                                                revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                            if w == -1:
                                                                                                                revert with 0, 17
                                                                                                            if x > !(Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40):
                                                                                                                revert with 0, 17
                                                                                                            if 1 > !(w + 1):
                                                                                                                revert with 0, 17
                                                                                                            t = w + 2
                                                                                                            v = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                            w = w + 1
                                                                                                            x = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                            x = x + (Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40)
                                                                                                            continue 
                                                                                                        if s and x > -1 / s:
                                                                                                            revert with 0, 17
                                                                                                        if 549755813888 > !(s * x):
                                                                                                            revert with 0, 17
                                                                                                        if 1099511627776 < Mask(216, 40, (s * x) + 549755813888) >> 40:
                                                                                                            revert with 0, 17
                                                                                                        if ext_call.return_data[64] and -(Mask(216, 40, (s * x) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[64]:
                                                                                                            revert with 0, 17
                                                                                                        if 549755813888 > !((ext_call.return_data[64] << 40) - (Mask(216, 40, (s * x) + 549755813888) >> 40 * ext_call.return_data[64])):
                                                                                                            revert with 0, 17
                                                                                                        return address(ext_call.return_data[0]), 
                                                                                                               Mask(216, 40, (ext_call.return_data[64] << 40) + (-1 * Mask(216, 40, (s * x) + 549755813888) >> 40 * ext_call.return_data[64]) + 549755813888) >> 40
                                                                            else:
                                                                                if u <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                    if not u:
                                                                                        revert with 0, 18
                                                                                    if 6931471805599453094172 * u / u != 6931471805599453094172:
                                                                                        revert with 0, 'MATH_ERROR'
                                                                                    if u <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                        if not (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 or 6931471805599453094172 * u / 10000 * 10^18 <= -1 / (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776:
                                                                                            if 549755813888 <= !((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18):
                                                                                                if var383001 <= !var383002:
                                                                                                    if 1 <= !var389002:
                                                                                                        t = var391003 + 1
                                                                                                        v = var391008
                                                                                                        w = var391010
                                                                                                        x = var391011
                                                                                                        x = var391012
                                                                                                        while not t or 1099511627776 <= -1 / t:
                                                                                                            if Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                revert with 0, 17
                                                                                                            if Mask(216, 0, t) << 39 > !Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888):
                                                                                                                revert with 0, 17
                                                                                                            if not t << 40:
                                                                                                                revert with 0, 18
                                                                                                            if v and (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40 > -1 / v:
                                                                                                                revert with 0, 17
                                                                                                            if 549755813888 > !(v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40):
                                                                                                                revert with 0, 17
                                                                                                            if Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40:
                                                                                                                if 500 == w:
                                                                                                                    revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                if w == -1:
                                                                                                                    revert with 0, 17
                                                                                                                if x > !(Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40):
                                                                                                                    revert with 0, 17
                                                                                                                if 1 > !(w + 1):
                                                                                                                    revert with 0, 17
                                                                                                                t = w + 2
                                                                                                                v = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                                w = w + 1
                                                                                                                x = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                                x = x + (Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40)
                                                                                                                continue 
                                                                                                            if s and x > -1 / s:
                                                                                                                revert with 0, 17
                                                                                                            if 549755813888 > !(s * x):
                                                                                                                revert with 0, 17
                                                                                                            if 1099511627776 < Mask(216, 40, (s * x) + 549755813888) >> 40:
                                                                                                                revert with 0, 17
                                                                                                            if ext_call.return_data[64] and -(Mask(216, 40, (s * x) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[64]:
                                                                                                                revert with 0, 17
                                                                                                            if 549755813888 > !((ext_call.return_data[64] << 40) - (Mask(216, 40, (s * x) + 549755813888) >> 40 * ext_call.return_data[64])):
                                                                                                                revert with 0, 17
                                                                                                            return address(ext_call.return_data[0]), 
                                                                                                                   Mask(216, 40, (ext_call.return_data[64] << 40) + (-1 * Mask(216, 40, (s * x) + 549755813888) >> 40 * ext_call.return_data[64]) + 549755813888) >> 40
                                                            else:
                                                                idx = Mask(216, 40, (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) >> 40
                                                                t = 0
                                                                while idx:
                                                                    if t == -1:
                                                                        revert with 0, 17
                                                                    idx = idx / 2
                                                                    t = t + 1
                                                                    continue 
                                                                if t >= 1:
                                                                    if not t - 1 or 1099511627776 <= -1 / t - 1:
                                                                        if t - 1 << 40 > 0x100000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'MATH_ERROR'
                                                                        if not (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                            if Mask(216, 0, (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) != (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                                revert with 0, 'MATH_ERROR'
                                                                            if not t - 1 or 1099511627776 <= -1 / t - 1:
                                                                                if Mask(216, 0, t - 1) != t - 1:
                                                                                    revert with 0, 'MATH_ERROR'
                                                                                if 1099511627776 <= -1 / 1 << t - 1:
                                                                                    if Mask(216, 0, 1 << t - 1) != 1 << t - 1:
                                                                                        revert with 0, 'MATH_ERROR'
                                                                                    if 1 << t - 1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                        if not (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                                            if not 1 << t - 1 << 40:
                                                                                                revert with 0, 18
                                                                                            if (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) << 40 / 1 << t - 1 << 40 < 1099511627776:
                                                                                                revert with 0, 'MATH_ERROR'
                                                                                            if (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) << 40 / 1 << t - 1 << 40 >= 2199023255552:
                                                                                                revert with 0, 'MATH_ERROR'
                                                                                            idx = 40
                                                                                            u = 1099511627776
                                                                                            v = 0
                                                                                            w = (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) << 40 / 1 << t - 1 << 40
                                                                                            while idx:
                                                                                                if w and w > -1 / w:
                                                                                                    revert with 0, 17
                                                                                                if Mask(216, 40, w * w) >> 40 < 2199023255552:
                                                                                                    if not idx:
                                                                                                        revert with 0, 17
                                                                                                    idx = idx - 1
                                                                                                    u = u / 2
                                                                                                    v = v
                                                                                                    w = Mask(216, 40, w * w) >> 40
                                                                                                    continue 
                                                                                                if v > !(u / 2):
                                                                                                    revert with 0, 17
                                                                                                if not idx:
                                                                                                    revert with 0, 17
                                                                                                idx = idx - 1
                                                                                                u = u / 2
                                                                                                v = v + (u / 2)
                                                                                                w = Mask(215, 41, w * w) >> 41
                                                                                                continue 
                                                                                            if v > 0x100000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 1
                                                                                            if not t - 1 or 1099511627776 <= -1 / t - 1:
                                                                                                if t - 1 << 40 <= !v:
                                                                                                    if not (t - 1 << 40) + v:
                                                                                                        if (t - 1 << 40) + v <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                                            if not (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 or (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18 <= -1 / (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776:
                                                                                                                if 549755813888 <= !((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18):
                                                                                                                    if var390001 <= !var390002:
                                                                                                                        if 1 <= !var396002:
                                                                                                                            u = var398003 + 1
                                                                                                                            w = var398008
                                                                                                                            x = var398010
                                                                                                                            y = var398011
                                                                                                                            y = var398012
                                                                                                                            while not u or 1099511627776 <= -1 / u:
                                                                                                                                if Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                                    revert with 0, 17
                                                                                                                                if Mask(216, 0, u) << 39 > !Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888):
                                                                                                                                    revert with 0, 17
                                                                                                                                if not u << 40:
                                                                                                                                    revert with 0, 18
                                                                                                                                if w and (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40 > -1 / w:
                                                                                                                                    revert with 0, 17
                                                                                                                                if 549755813888 > !(w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40):
                                                                                                                                    revert with 0, 17
                                                                                                                                if Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40:
                                                                                                                                    if 500 == x:
                                                                                                                                        revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                                    if x == -1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if y > !(Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 1 > !(x + 1):
                                                                                                                                        revert with 0, 17
                                                                                                                                    u = x + 2
                                                                                                                                    w = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                    x = x + 1
                                                                                                                                    y = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                    y = y + (Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40)
                                                                                                                                    continue 
                                                                                                                                if s and y > -1 / s:
                                                                                                                                    revert with 0, 17
                                                                                                                                if 549755813888 > !(s * y):
                                                                                                                                    revert with 0, 17
                                                                                                                                if 1099511627776 < Mask(216, 40, (s * y) + 549755813888) >> 40:
                                                                                                                                    revert with 0, 17
                                                                                                                                if ext_call.return_data[64] and -(Mask(216, 40, (s * y) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[64]:
                                                                                                                                    revert with 0, 17
                                                                                                                                if 549755813888 > !((ext_call.return_data[64] << 40) - (Mask(216, 40, (s * y) + 549755813888) >> 40 * ext_call.return_data[64])):
                                                                                                                                    revert with 0, 17
                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                       Mask(216, 40, (ext_call.return_data[64] << 40) + (-1 * Mask(216, 40, (s * y) + 549755813888) >> 40 * ext_call.return_data[64]) + 549755813888) >> 40
                                                                                                    else:
                                                                                                        if (t - 1 << 40) + v <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                                            if not (t - 1 << 40) + v:
                                                                                                                revert with 0, 18
                                                                                                            if (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / (t - 1 << 40) + v != 6931471805599453094172:
                                                                                                                revert with 0, 'MATH_ERROR'
                                                                                                            if (t - 1 << 40) + v <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                                                if not (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 or (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18 <= -1 / (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776:
                                                                                                                    if 549755813888 <= !((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18):
                                                                                                                        if var395001 <= !var395002:
                                                                                                                            if 1 <= !var401002:
                                                                                                                                u = var403003 + 1
                                                                                                                                w = var403008
                                                                                                                                x = var403010
                                                                                                                                y = var403011
                                                                                                                                y = var403012
                                                                                                                                while not u or 1099511627776 <= -1 / u:
                                                                                                                                    if Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if Mask(216, 0, u) << 39 > !Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if not u << 40:
                                                                                                                                        revert with 0, 18
                                                                                                                                    if w and (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40 > -1 / w:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 549755813888 > !(w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40:
                                                                                                                                        if 500 == x:
                                                                                                                                            revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                                        if x == -1:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if y > !(Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40):
                                                                                                                                            revert with 0, 17
                                                                                                                                        if 1 > !(x + 1):
                                                                                                                                            revert with 0, 17
                                                                                                                                        u = x + 2
                                                                                                                                        w = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                        x = x + 1
                                                                                                                                        y = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                        y = y + (Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40)
                                                                                                                                        continue 
                                                                                                                                    if s and y > -1 / s:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 549755813888 > !(s * y):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 1099511627776 < Mask(216, 40, (s * y) + 549755813888) >> 40:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if ext_call.return_data[64] and -(Mask(216, 40, (s * y) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[64]:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 549755813888 > !((ext_call.return_data[64] << 40) - (Mask(216, 40, (s * y) + 549755813888) >> 40 * ext_call.return_data[64])):
                                                                                                                                        revert with 0, 17
                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                           Mask(216, 40, (ext_call.return_data[64] << 40) + (-1 * Mask(216, 40, (s * y) + 549755813888) >> 40 * ext_call.return_data[64]) + 549755813888) >> 40
                                                        else:
                                                            if (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2 <= 0xfffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffff:
                                                                if not (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                    revert with 0, 18
                                                                if ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) <= 1099511627776:
                                                                    if not ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                        if Mask(216, 0, ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) != ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                            revert with 0, 'MATH_ERROR'
                                                                        if not ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                            if Mask(216, 0, ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) < 1099511627776:
                                                                                revert with 0, 'MATH_ERROR'
                                                                            if Mask(216, 0, ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) >= 2199023255552:
                                                                                revert with 0, 'MATH_ERROR'
                                                                            idx = 40
                                                                            t = 1099511627776
                                                                            u = 0
                                                                            v = Mask(216, 0, ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40))
                                                                            while idx:
                                                                                if v and v > -1 / v:
                                                                                    revert with 0, 17
                                                                                if Mask(216, 40, v * v) >> 40 < 2199023255552:
                                                                                    if not idx:
                                                                                        revert with 0, 17
                                                                                    idx = idx - 1
                                                                                    t = t / 2
                                                                                    u = u
                                                                                    v = Mask(216, 40, v * v) >> 40
                                                                                    continue 
                                                                                if u > !(t / 2):
                                                                                    revert with 0, 17
                                                                                if not idx:
                                                                                    revert with 0, 17
                                                                                idx = idx - 1
                                                                                t = t / 2
                                                                                u = u + (t / 2)
                                                                                v = Mask(215, 41, v * v) >> 41
                                                                                continue 
                                                                            if u > 0x100000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 1
                                                                            if 0 <= !u:
                                                                                if not u:
                                                                                    if u <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                        if not (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 or 6931471805599453094172 * u / 10000 * 10^18 <= -1 / (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776:
                                                                                            if 549755813888 <= !((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18):
                                                                                                if var402001 <= !var402002:
                                                                                                    if 1 <= !var408002:
                                                                                                        t = var410003 + 1
                                                                                                        v = var410008
                                                                                                        w = var410010
                                                                                                        x = var410011
                                                                                                        x = var410012
                                                                                                        while not t or 1099511627776 <= -1 / t:
                                                                                                            if Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                revert with 0, 17
                                                                                                            if Mask(216, 0, t) << 39 > !Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888):
                                                                                                                revert with 0, 17
                                                                                                            if not t << 40:
                                                                                                                revert with 0, 18
                                                                                                            if v and (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40 > -1 / v:
                                                                                                                revert with 0, 17
                                                                                                            if 549755813888 > !(v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40):
                                                                                                                revert with 0, 17
                                                                                                            if Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40:
                                                                                                                if 500 == w:
                                                                                                                    revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                if w == -1:
                                                                                                                    revert with 0, 17
                                                                                                                if x > !(Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40):
                                                                                                                    revert with 0, 17
                                                                                                                if 1 > !(w + 1):
                                                                                                                    revert with 0, 17
                                                                                                                t = w + 2
                                                                                                                v = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                                w = w + 1
                                                                                                                x = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                                x = x + (Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40)
                                                                                                                continue 
                                                                                                            if x / 2 > 0xfffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffff:
                                                                                                                revert with 0, 17
                                                                                                            if not x:
                                                                                                                revert with 0, 18
                                                                                                            if s and (x / 2) + 1208925819614629174706176 / x > -1 / s:
                                                                                                                revert with 0, 17
                                                                                                            if 549755813888 > !(s * (x / 2) + 1208925819614629174706176 / x):
                                                                                                                revert with 0, 17
                                                                                                            if 1099511627776 < Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40:
                                                                                                                revert with 0, 17
                                                                                                            if ext_call.return_data[64] and -(Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[64]:
                                                                                                                revert with 0, 17
                                                                                                            if 549755813888 > !((ext_call.return_data[64] << 40) - (Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40 * ext_call.return_data[64])):
                                                                                                                revert with 0, 17
                                                                                                            return address(ext_call.return_data[0]), 
                                                                                                                   Mask(216, 40, (ext_call.return_data[64] << 40) + (-1 * Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40 * ext_call.return_data[64]) + 549755813888) >> 40
                                                                                else:
                                                                                    if u <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                        if not u:
                                                                                            revert with 0, 18
                                                                                        if 6931471805599453094172 * u / u != 6931471805599453094172:
                                                                                            revert with 0, 'MATH_ERROR'
                                                                                        if u <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                            if not (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 or 6931471805599453094172 * u / 10000 * 10^18 <= -1 / (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776:
                                                                                                if 549755813888 <= !((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18):
                                                                                                    if var407001 <= !var407002:
                                                                                                        if 1 <= !var413002:
                                                                                                            t = var415003 + 1
                                                                                                            v = var415008
                                                                                                            w = var415010
                                                                                                            x = var415011
                                                                                                            x = var415012
                                                                                                            while not t or 1099511627776 <= -1 / t:
                                                                                                                if Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                    revert with 0, 17
                                                                                                                if Mask(216, 0, t) << 39 > !Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888):
                                                                                                                    revert with 0, 17
                                                                                                                if not t << 40:
                                                                                                                    revert with 0, 18
                                                                                                                if v and (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40 > -1 / v:
                                                                                                                    revert with 0, 17
                                                                                                                if 549755813888 > !(v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40):
                                                                                                                    revert with 0, 17
                                                                                                                if Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40:
                                                                                                                    if 500 == w:
                                                                                                                        revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                    if w == -1:
                                                                                                                        revert with 0, 17
                                                                                                                    if x > !(Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40):
                                                                                                                        revert with 0, 17
                                                                                                                    if 1 > !(w + 1):
                                                                                                                        revert with 0, 17
                                                                                                                    t = w + 2
                                                                                                                    v = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                                    w = w + 1
                                                                                                                    x = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                                    x = x + (Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40)
                                                                                                                    continue 
                                                                                                                if x / 2 > 0xfffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffff:
                                                                                                                    revert with 0, 17
                                                                                                                if not x:
                                                                                                                    revert with 0, 18
                                                                                                                if s and (x / 2) + 1208925819614629174706176 / x > -1 / s:
                                                                                                                    revert with 0, 17
                                                                                                                if 549755813888 > !(s * (x / 2) + 1208925819614629174706176 / x):
                                                                                                                    revert with 0, 17
                                                                                                                if 1099511627776 < Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40:
                                                                                                                    revert with 0, 17
                                                                                                                if ext_call.return_data[64] and -(Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[64]:
                                                                                                                    revert with 0, 17
                                                                                                                if 549755813888 > !((ext_call.return_data[64] << 40) - (Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40 * ext_call.return_data[64])):
                                                                                                                    revert with 0, 17
                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                       Mask(216, 40, (ext_call.return_data[64] << 40) + (-1 * Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40 * ext_call.return_data[64]) + 549755813888) >> 40
                                                                else:
                                                                    idx = Mask(216, 40, ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) >> 40
                                                                    t = 0
                                                                    while idx:
                                                                        if t == -1:
                                                                            revert with 0, 17
                                                                        idx = idx / 2
                                                                        t = t + 1
                                                                        continue 
                                                                    if t >= 1:
                                                                        if not t - 1 or 1099511627776 <= -1 / t - 1:
                                                                            if t - 1 << 40 > 0x100000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'MATH_ERROR'
                                                                            if not ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                                if Mask(216, 0, ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) != ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                                    revert with 0, 'MATH_ERROR'
                                                                                if not t - 1 or 1099511627776 <= -1 / t - 1:
                                                                                    if Mask(216, 0, t - 1) != t - 1:
                                                                                        revert with 0, 'MATH_ERROR'
                                                                                    if 1099511627776 <= -1 / 1 << t - 1:
                                                                                        if Mask(216, 0, 1 << t - 1) != 1 << t - 1:
                                                                                            revert with 0, 'MATH_ERROR'
                                                                                        if 1 << t - 1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                            if not ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                                                if not 1 << t - 1 << 40:
                                                                                                    revert with 0, 18
                                                                                                if ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) << 40 / 1 << t - 1 << 40 < 1099511627776:
                                                                                                    revert with 0, 'MATH_ERROR'
                                                                                                if ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) << 40 / 1 << t - 1 << 40 >= 2199023255552:
                                                                                                    revert with 0, 'MATH_ERROR'
                                                                                                idx = 40
                                                                                                u = 1099511627776
                                                                                                v = 0
                                                                                                w = ((ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[0] << 40) / ext_call.return_data[0] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) << 40 / 1 << t - 1 << 40
                                                                                                while idx:
                                                                                                    if w and w > -1 / w:
                                                                                                        revert with 0, 17
                                                                                                    if Mask(216, 40, w * w) >> 40 < 2199023255552:
                                                                                                        if not idx:
                                                                                                            revert with 0, 17
                                                                                                        idx = idx - 1
                                                                                                        u = u / 2
                                                                                                        v = v
                                                                                                        w = Mask(216, 40, w * w) >> 40
                                                                                                        continue 
                                                                                                    if v > !(u / 2):
                                                                                                        revert with 0, 17
                                                                                                    if not idx:
                                                                                                        revert with 0, 17
                                                                                                    idx = idx - 1
                                                                                                    u = u / 2
                                                                                                    v = v + (u / 2)
                                                                                                    w = Mask(215, 41, w * w) >> 41
                                                                                                    continue 
                                                                                                if v > 0x100000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 1
                                                                                                if not t - 1 or 1099511627776 <= -1 / t - 1:
                                                                                                    if t - 1 << 40 <= !v:
                                                                                                        if not (t - 1 << 40) + v:
                                                                                                            if (t - 1 << 40) + v <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                                                if not (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 or (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18 <= -1 / (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776:
                                                                                                                    if 549755813888 <= !((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18):
                                                                                                                        if var414001 <= !var414002:
                                                                                                                            if 1 <= !var420002:
                                                                                                                                u = var422003 + 1
                                                                                                                                w = var422008
                                                                                                                                x = var422010
                                                                                                                                y = var422011
                                                                                                                                y = var422012
                                                                                                                                while not u or 1099511627776 <= -1 / u:
                                                                                                                                    if Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if Mask(216, 0, u) << 39 > !Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if not u << 40:
                                                                                                                                        revert with 0, 18
                                                                                                                                    if w and (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40 > -1 / w:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 549755813888 > !(w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40:
                                                                                                                                        if 500 == x:
                                                                                                                                            revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                                        if x == -1:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if y > !(Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40):
                                                                                                                                            revert with 0, 17
                                                                                                                                        if 1 > !(x + 1):
                                                                                                                                            revert with 0, 17
                                                                                                                                        u = x + 2
                                                                                                                                        w = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                        x = x + 1
                                                                                                                                        y = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                        y = y + (Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40)
                                                                                                                                        continue 
                                                                                                                                    if y / 2 > 0xfffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffff:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if not y:
                                                                                                                                        revert with 0, 18
                                                                                                                                    if s and (y / 2) + 1208925819614629174706176 / y > -1 / s:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 549755813888 > !(s * (y / 2) + 1208925819614629174706176 / y):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 1099511627776 < Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if ext_call.return_data[64] and -(Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[64]:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 549755813888 > !((ext_call.return_data[64] << 40) - (Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40 * ext_call.return_data[64])):
                                                                                                                                        revert with 0, 17
                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                           Mask(216, 40, (ext_call.return_data[64] << 40) + (-1 * Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40 * ext_call.return_data[64]) + 549755813888) >> 40
                                                                                                        else:
                                                                                                            if (t - 1 << 40) + v <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                                                if not (t - 1 << 40) + v:
                                                                                                                    revert with 0, 18
                                                                                                                if (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / (t - 1 << 40) + v != 6931471805599453094172:
                                                                                                                    revert with 0, 'MATH_ERROR'
                                                                                                                if (t - 1 << 40) + v <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                                                    if not (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 or (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18 <= -1 / (ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776:
                                                                                                                        if 549755813888 <= !((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18):
                                                                                                                            if var419001 <= !var419002:
                                                                                                                                if 1 <= !var425002:
                                                                                                                                    u = var427003 + 1
                                                                                                                                    w = var427008
                                                                                                                                    x = var427010
                                                                                                                                    y = var427011
                                                                                                                                    y = var427012
                                                                                                                                    while not u or 1099511627776 <= -1 / u:
                                                                                                                                        if Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if Mask(216, 0, u) << 39 > !Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888):
                                                                                                                                            revert with 0, 17
                                                                                                                                        if not u << 40:
                                                                                                                                            revert with 0, 18
                                                                                                                                        if w and (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40 > -1 / w:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if 549755813888 > !(w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40):
                                                                                                                                            revert with 0, 17
                                                                                                                                        if Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40:
                                                                                                                                            if 500 == x:
                                                                                                                                                revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                                            if x == -1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            if y > !(Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40):
                                                                                                                                                revert with 0, 17
                                                                                                                                            if 1 > !(x + 1):
                                                                                                                                                revert with 0, 17
                                                                                                                                            u = x + 2
                                                                                                                                            w = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                            x = x + 1
                                                                                                                                            y = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                            y = y + (Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[96] / 2) + (ext_call.return_data[32] << 40) / ext_call.return_data[96] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40)
                                                                                                                                            continue 
                                                                                                                                        if y / 2 > 0xfffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffff:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if not y:
                                                                                                                                            revert with 0, 18
                                                                                                                                        if s and (y / 2) + 1208925819614629174706176 / y > -1 / s:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if 549755813888 > !(s * (y / 2) + 1208925819614629174706176 / y):
                                                                                                                                            revert with 0, 17
                                                                                                                                        if 1099511627776 < Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if ext_call.return_data[64] and -(Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[64]:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if 549755813888 > !((ext_call.return_data[64] << 40) - (Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40 * ext_call.return_data[64])):
                                                                                                                                            revert with 0, 17
                                                                                                                                        return address(ext_call.return_data[0]), 
                                                                                                                                               Mask(216, 40, (ext_call.return_data[64] << 40) + (-1 * Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40 * ext_call.return_data[64]) + 549755813888) >> 40
    else:
        if ext_call.return_data[32] <= !ext_call.return_data[96]:
            if not ext_call.return_data[96] or 1099511627776 <= -1 / ext_call.return_data[96]:
                if not ext_call.return_data[32] + ext_call.return_data[96]:
                    revert with 0, 18
                if not ext_call.return_data[96] << 40 / ext_call.return_data[32] + ext_call.return_data[96] or ext_call.return_data[0] <= -1 / ext_call.return_data[96] << 40 / ext_call.return_data[32] + ext_call.return_data[96]:
                    require ext_code.size(dataAddress)
                    staticcall dataAddress.swapFee() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(dataAddress)
                    staticcall dataAddress.swapFee() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[96] or 1099511627776 <= -1 / ext_call.return_data[96]:
                        if ext_call.return_data[32] / 2 <= !(ext_call.return_data[96] << 40):
                            if not ext_call.return_data[32]:
                                revert with 0, 18
                            if 1099511627776 >= ext_call.return_data[0]:
                                if not arg3 or -ext_call.return_data[0] + 1099511627776 <= -1 / arg3:
                                    if 549755813888 <= !((arg3 << 40) - (ext_call.return_data[0] * arg3)):
                                        if ext_call.return_data[64] <= !(Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                            if not ext_call.return_data[64] or 1099511627776 <= -1 / ext_call.return_data[64]:
                                                if ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2 <= !(ext_call.return_data[64] << 40):
                                                    if not ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                        revert with 0, 18
                                                    if not (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32]:
                                                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        return address(ext_call.return_data[0]), 0
                                                    if not (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                        if ext_call.return_data[0] and 1099511627776 > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if 549755813888 > !(ext_call.return_data[0] << 40):
                                                            revert with 0, 17
                                                        return address(ext_call.return_data[0]), Mask(216, 40, (ext_call.return_data[0] << 40) + 549755813888) >> 40
                                                    if (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] >= (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776:
                                                        if Mask(1, 40, (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32]) >> 40:
                                                            s = (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)
                                                            idx = Mask(215, 41, (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32]) >> 41
                                                            t = (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)
                                                            while idx:
                                                                if t and t > -1 / t:
                                                                    revert with 0, 17
                                                                if 549755813888 > !(t * t):
                                                                    revert with 0, 17
                                                                if not bool(idx):
                                                                    s = s
                                                                    idx = idx / 2
                                                                    t = Mask(216, 40, (t * t) + 549755813888) >> 40
                                                                    continue 
                                                                if s and Mask(216, 40, (t * t) + 549755813888) >> 40 > -1 / s:
                                                                    revert with 0, 17
                                                                if 549755813888 > !(s * Mask(216, 40, (t * t) + 549755813888) >> 40):
                                                                    revert with 0, 17
                                                                s = Mask(216, 40, (s * Mask(216, 40, (t * t) + 549755813888) >> 40) + 549755813888) >> 40
                                                                idx = idx / 2
                                                                t = Mask(216, 40, (t * t) + 549755813888) >> 40
                                                                continue 
                                                        else:
                                                            s = 1099511627776
                                                            idx = Mask(215, 41, (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32]) >> 41
                                                            t = (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)
                                                            while idx:
                                                                if t and t > -1 / t:
                                                                    revert with 0, 17
                                                                if 549755813888 > !(t * t):
                                                                    revert with 0, 17
                                                                if not bool(idx):
                                                                    s = s
                                                                    idx = idx / 2
                                                                    t = Mask(216, 40, (t * t) + 549755813888) >> 40
                                                                    continue 
                                                                if s and Mask(216, 40, (t * t) + 549755813888) >> 40 > -1 / s:
                                                                    revert with 0, 17
                                                                if 549755813888 > !(s * Mask(216, 40, (t * t) + 549755813888) >> 40):
                                                                    revert with 0, 17
                                                                s = Mask(216, 40, (s * Mask(216, 40, (t * t) + 549755813888) >> 40) + 549755813888) >> 40
                                                                idx = idx / 2
                                                                t = Mask(216, 40, (t * t) + 549755813888) >> 40
                                                                continue 
                                                        if (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) >= 1099511627776:
                                                            if (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) <= 1099511627776:
                                                                if not (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                    if Mask(216, 0, (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) != (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                        revert with 0, 'MATH_ERROR'
                                                                    if not (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                        if Mask(216, 0, (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) < 1099511627776:
                                                                            revert with 0, 'MATH_ERROR'
                                                                        if Mask(216, 0, (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) >= 2199023255552:
                                                                            revert with 0, 'MATH_ERROR'
                                                                        idx = 40
                                                                        t = 1099511627776
                                                                        u = 0
                                                                        v = Mask(216, 0, (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40))
                                                                        while idx:
                                                                            if v and v > -1 / v:
                                                                                revert with 0, 17
                                                                            if Mask(216, 40, v * v) >> 40 < 2199023255552:
                                                                                if not idx:
                                                                                    revert with 0, 17
                                                                                idx = idx - 1
                                                                                t = t / 2
                                                                                u = u
                                                                                v = Mask(216, 40, v * v) >> 40
                                                                                continue 
                                                                            if u > !(t / 2):
                                                                                revert with 0, 17
                                                                            if not idx:
                                                                                revert with 0, 17
                                                                            idx = idx - 1
                                                                            t = t / 2
                                                                            u = u + (t / 2)
                                                                            v = Mask(215, 41, v * v) >> 41
                                                                            continue 
                                                                        if u > 0x100000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 1
                                                                        if 0 <= !u:
                                                                            if not u:
                                                                                if u <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                    if not (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 or 6931471805599453094172 * u / 10000 * 10^18 <= -1 / (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776:
                                                                                        if 549755813888 <= !((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18):
                                                                                            if var379001 <= !var379002:
                                                                                                if 1 <= !var385002:
                                                                                                    t = var387003 + 1
                                                                                                    v = var387008
                                                                                                    w = var387010
                                                                                                    x = var387011
                                                                                                    x = var387012
                                                                                                    while not t or 1099511627776 <= -1 / t:
                                                                                                        if Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                            revert with 0, 17
                                                                                                        if Mask(216, 0, t) << 39 > !Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888):
                                                                                                            revert with 0, 17
                                                                                                        if not t << 40:
                                                                                                            revert with 0, 18
                                                                                                        if v and (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40 > -1 / v:
                                                                                                            revert with 0, 17
                                                                                                        if 549755813888 > !(v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40):
                                                                                                            revert with 0, 17
                                                                                                        if Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40:
                                                                                                            if 500 == w:
                                                                                                                revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                            if w == -1:
                                                                                                                revert with 0, 17
                                                                                                            if x > !(Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40):
                                                                                                                revert with 0, 17
                                                                                                            if 1 > !(w + 1):
                                                                                                                revert with 0, 17
                                                                                                            t = w + 2
                                                                                                            v = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                            w = w + 1
                                                                                                            x = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                            x = x + (Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40)
                                                                                                            continue 
                                                                                                        if s and x > -1 / s:
                                                                                                            revert with 0, 17
                                                                                                        if 549755813888 > !(s * x):
                                                                                                            revert with 0, 17
                                                                                                        if 1099511627776 < Mask(216, 40, (s * x) + 549755813888) >> 40:
                                                                                                            revert with 0, 17
                                                                                                        if ext_call.return_data[0] and -(Mask(216, 40, (s * x) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[0]:
                                                                                                            revert with 0, 17
                                                                                                        if 549755813888 > !((ext_call.return_data[0] << 40) - (Mask(216, 40, (s * x) + 549755813888) >> 40 * ext_call.return_data[0])):
                                                                                                            revert with 0, 17
                                                                                                        return address(ext_call.return_data[0]), 
                                                                                                               Mask(216, 40, (ext_call.return_data[0] << 40) + (-1 * Mask(216, 40, (s * x) + 549755813888) >> 40 * ext_call.return_data[0]) + 549755813888) >> 40
                                                                            else:
                                                                                if u <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                    if not u:
                                                                                        revert with 0, 18
                                                                                    if 6931471805599453094172 * u / u != 6931471805599453094172:
                                                                                        revert with 0, 'MATH_ERROR'
                                                                                    if u <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                        if not (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 or 6931471805599453094172 * u / 10000 * 10^18 <= -1 / (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776:
                                                                                            if 549755813888 <= !((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18):
                                                                                                if var384001 <= !var384002:
                                                                                                    if 1 <= !var390002:
                                                                                                        t = var392003 + 1
                                                                                                        v = var392008
                                                                                                        w = var392010
                                                                                                        x = var392011
                                                                                                        x = var392012
                                                                                                        while not t or 1099511627776 <= -1 / t:
                                                                                                            if Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                revert with 0, 17
                                                                                                            if Mask(216, 0, t) << 39 > !Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888):
                                                                                                                revert with 0, 17
                                                                                                            if not t << 40:
                                                                                                                revert with 0, 18
                                                                                                            if v and (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40 > -1 / v:
                                                                                                                revert with 0, 17
                                                                                                            if 549755813888 > !(v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40):
                                                                                                                revert with 0, 17
                                                                                                            if Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40:
                                                                                                                if 500 == w:
                                                                                                                    revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                if w == -1:
                                                                                                                    revert with 0, 17
                                                                                                                if x > !(Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40):
                                                                                                                    revert with 0, 17
                                                                                                                if 1 > !(w + 1):
                                                                                                                    revert with 0, 17
                                                                                                                t = w + 2
                                                                                                                v = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                                w = w + 1
                                                                                                                x = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                                x = x + (Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40)
                                                                                                                continue 
                                                                                                            if s and x > -1 / s:
                                                                                                                revert with 0, 17
                                                                                                            if 549755813888 > !(s * x):
                                                                                                                revert with 0, 17
                                                                                                            if 1099511627776 < Mask(216, 40, (s * x) + 549755813888) >> 40:
                                                                                                                revert with 0, 17
                                                                                                            if ext_call.return_data[0] and -(Mask(216, 40, (s * x) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[0]:
                                                                                                                revert with 0, 17
                                                                                                            if 549755813888 > !((ext_call.return_data[0] << 40) - (Mask(216, 40, (s * x) + 549755813888) >> 40 * ext_call.return_data[0])):
                                                                                                                revert with 0, 17
                                                                                                            return address(ext_call.return_data[0]), 
                                                                                                                   Mask(216, 40, (ext_call.return_data[0] << 40) + (-1 * Mask(216, 40, (s * x) + 549755813888) >> 40 * ext_call.return_data[0]) + 549755813888) >> 40
                                                            else:
                                                                idx = Mask(216, 40, (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) >> 40
                                                                t = 0
                                                                while idx:
                                                                    if t == -1:
                                                                        revert with 0, 17
                                                                    idx = idx / 2
                                                                    t = t + 1
                                                                    continue 
                                                                if t >= 1:
                                                                    if not t - 1 or 1099511627776 <= -1 / t - 1:
                                                                        if t - 1 << 40 > 0x100000000000000000000000000000000000000000000000000:
                                                                            revert with 0, 'MATH_ERROR'
                                                                        if not (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                            if Mask(216, 0, (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) != (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                                revert with 0, 'MATH_ERROR'
                                                                            if not t - 1 or 1099511627776 <= -1 / t - 1:
                                                                                if Mask(216, 0, t - 1) != t - 1:
                                                                                    revert with 0, 'MATH_ERROR'
                                                                                if 1099511627776 <= -1 / 1 << t - 1:
                                                                                    if Mask(216, 0, 1 << t - 1) != 1 << t - 1:
                                                                                        revert with 0, 'MATH_ERROR'
                                                                                    if 1 << t - 1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                        if not (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                                            if not 1 << t - 1 << 40:
                                                                                                revert with 0, 18
                                                                                            if (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) << 40 / 1 << t - 1 << 40 < 1099511627776:
                                                                                                revert with 0, 'MATH_ERROR'
                                                                                            if (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) << 40 / 1 << t - 1 << 40 >= 2199023255552:
                                                                                                revert with 0, 'MATH_ERROR'
                                                                                            idx = 40
                                                                                            u = 1099511627776
                                                                                            v = 0
                                                                                            w = (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) << 40 / 1 << t - 1 << 40
                                                                                            while idx:
                                                                                                if w and w > -1 / w:
                                                                                                    revert with 0, 17
                                                                                                if Mask(216, 40, w * w) >> 40 < 2199023255552:
                                                                                                    if not idx:
                                                                                                        revert with 0, 17
                                                                                                    idx = idx - 1
                                                                                                    u = u / 2
                                                                                                    v = v
                                                                                                    w = Mask(216, 40, w * w) >> 40
                                                                                                    continue 
                                                                                                if v > !(u / 2):
                                                                                                    revert with 0, 17
                                                                                                if not idx:
                                                                                                    revert with 0, 17
                                                                                                idx = idx - 1
                                                                                                u = u / 2
                                                                                                v = v + (u / 2)
                                                                                                w = Mask(215, 41, w * w) >> 41
                                                                                                continue 
                                                                                            if v > 0x100000000000000000000000000000000000000000000000000:
                                                                                                revert with 0, 1
                                                                                            if not t - 1 or 1099511627776 <= -1 / t - 1:
                                                                                                if t - 1 << 40 <= !v:
                                                                                                    if not (t - 1 << 40) + v:
                                                                                                        if (t - 1 << 40) + v <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                                            if not (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 or (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18 <= -1 / (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776:
                                                                                                                if 549755813888 <= !((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18):
                                                                                                                    if var391001 <= !var391002:
                                                                                                                        if 1 <= !var397002:
                                                                                                                            u = var399003 + 1
                                                                                                                            w = var399008
                                                                                                                            x = var399010
                                                                                                                            y = var399011
                                                                                                                            y = var399012
                                                                                                                            while not u or 1099511627776 <= -1 / u:
                                                                                                                                if Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                                    revert with 0, 17
                                                                                                                                if Mask(216, 0, u) << 39 > !Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888):
                                                                                                                                    revert with 0, 17
                                                                                                                                if not u << 40:
                                                                                                                                    revert with 0, 18
                                                                                                                                if w and (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40 > -1 / w:
                                                                                                                                    revert with 0, 17
                                                                                                                                if 549755813888 > !(w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40):
                                                                                                                                    revert with 0, 17
                                                                                                                                if Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40:
                                                                                                                                    if 500 == x:
                                                                                                                                        revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                                    if x == -1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if y > !(Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 1 > !(x + 1):
                                                                                                                                        revert with 0, 17
                                                                                                                                    u = x + 2
                                                                                                                                    w = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                    x = x + 1
                                                                                                                                    y = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                    y = y + (Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40)
                                                                                                                                    continue 
                                                                                                                                if s and y > -1 / s:
                                                                                                                                    revert with 0, 17
                                                                                                                                if 549755813888 > !(s * y):
                                                                                                                                    revert with 0, 17
                                                                                                                                if 1099511627776 < Mask(216, 40, (s * y) + 549755813888) >> 40:
                                                                                                                                    revert with 0, 17
                                                                                                                                if ext_call.return_data[0] and -(Mask(216, 40, (s * y) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[0]:
                                                                                                                                    revert with 0, 17
                                                                                                                                if 549755813888 > !((ext_call.return_data[0] << 40) - (Mask(216, 40, (s * y) + 549755813888) >> 40 * ext_call.return_data[0])):
                                                                                                                                    revert with 0, 17
                                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                                       Mask(216, 40, (ext_call.return_data[0] << 40) + (-1 * Mask(216, 40, (s * y) + 549755813888) >> 40 * ext_call.return_data[0]) + 549755813888) >> 40
                                                                                                    else:
                                                                                                        if (t - 1 << 40) + v <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                                            if not (t - 1 << 40) + v:
                                                                                                                revert with 0, 18
                                                                                                            if (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / (t - 1 << 40) + v != 6931471805599453094172:
                                                                                                                revert with 0, 'MATH_ERROR'
                                                                                                            if (t - 1 << 40) + v <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                                                if not (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 or (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18 <= -1 / (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776:
                                                                                                                    if 549755813888 <= !((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18):
                                                                                                                        if var396001 <= !var396002:
                                                                                                                            if 1 <= !var402002:
                                                                                                                                u = var404003 + 1
                                                                                                                                w = var404008
                                                                                                                                x = var404010
                                                                                                                                y = var404011
                                                                                                                                y = var404012
                                                                                                                                while not u or 1099511627776 <= -1 / u:
                                                                                                                                    if Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if Mask(216, 0, u) << 39 > !Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if not u << 40:
                                                                                                                                        revert with 0, 18
                                                                                                                                    if w and (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40 > -1 / w:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 549755813888 > !(w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40:
                                                                                                                                        if 500 == x:
                                                                                                                                            revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                                        if x == -1:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if y > !(Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40):
                                                                                                                                            revert with 0, 17
                                                                                                                                        if 1 > !(x + 1):
                                                                                                                                            revert with 0, 17
                                                                                                                                        u = x + 2
                                                                                                                                        w = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                        x = x + 1
                                                                                                                                        y = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                        y = y + (Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40)
                                                                                                                                        continue 
                                                                                                                                    if s and y > -1 / s:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 549755813888 > !(s * y):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 1099511627776 < Mask(216, 40, (s * y) + 549755813888) >> 40:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if ext_call.return_data[0] and -(Mask(216, 40, (s * y) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[0]:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 549755813888 > !((ext_call.return_data[0] << 40) - (Mask(216, 40, (s * y) + 549755813888) >> 40 * ext_call.return_data[0])):
                                                                                                                                        revert with 0, 17
                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                           Mask(216, 40, (ext_call.return_data[0] << 40) + (-1 * Mask(216, 40, (s * y) + 549755813888) >> 40 * ext_call.return_data[0]) + 549755813888) >> 40
                                                        else:
                                                            if (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2 <= 0xfffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffff:
                                                                if not (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                    revert with 0, 18
                                                                if ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) <= 1099511627776:
                                                                    if not ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                        if Mask(216, 0, ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) != ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                            revert with 0, 'MATH_ERROR'
                                                                        if not ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                            if Mask(216, 0, ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) < 1099511627776:
                                                                                revert with 0, 'MATH_ERROR'
                                                                            if Mask(216, 0, ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) >= 2199023255552:
                                                                                revert with 0, 'MATH_ERROR'
                                                                            idx = 40
                                                                            t = 1099511627776
                                                                            u = 0
                                                                            v = Mask(216, 0, ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40))
                                                                            while idx:
                                                                                if v and v > -1 / v:
                                                                                    revert with 0, 17
                                                                                if Mask(216, 40, v * v) >> 40 < 2199023255552:
                                                                                    if not idx:
                                                                                        revert with 0, 17
                                                                                    idx = idx - 1
                                                                                    t = t / 2
                                                                                    u = u
                                                                                    v = Mask(216, 40, v * v) >> 40
                                                                                    continue 
                                                                                if u > !(t / 2):
                                                                                    revert with 0, 17
                                                                                if not idx:
                                                                                    revert with 0, 17
                                                                                idx = idx - 1
                                                                                t = t / 2
                                                                                u = u + (t / 2)
                                                                                v = Mask(215, 41, v * v) >> 41
                                                                                continue 
                                                                            if u > 0x100000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 1
                                                                            if 0 <= !u:
                                                                                if not u:
                                                                                    if u <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                        if not (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 or 6931471805599453094172 * u / 10000 * 10^18 <= -1 / (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776:
                                                                                            if 549755813888 <= !((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18):
                                                                                                if var403001 <= !var403002:
                                                                                                    if 1 <= !var409002:
                                                                                                        t = var411003 + 1
                                                                                                        v = var411008
                                                                                                        w = var411010
                                                                                                        x = var411011
                                                                                                        x = var411012
                                                                                                        while not t or 1099511627776 <= -1 / t:
                                                                                                            if Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                revert with 0, 17
                                                                                                            if Mask(216, 0, t) << 39 > !Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888):
                                                                                                                revert with 0, 17
                                                                                                            if not t << 40:
                                                                                                                revert with 0, 18
                                                                                                            if v and (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40 > -1 / v:
                                                                                                                revert with 0, 17
                                                                                                            if 549755813888 > !(v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40):
                                                                                                                revert with 0, 17
                                                                                                            if Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40:
                                                                                                                if 500 == w:
                                                                                                                    revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                if w == -1:
                                                                                                                    revert with 0, 17
                                                                                                                if x > !(Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40):
                                                                                                                    revert with 0, 17
                                                                                                                if 1 > !(w + 1):
                                                                                                                    revert with 0, 17
                                                                                                                t = w + 2
                                                                                                                v = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                                w = w + 1
                                                                                                                x = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                                x = x + (Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40)
                                                                                                                continue 
                                                                                                            if x / 2 > 0xfffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffff:
                                                                                                                revert with 0, 17
                                                                                                            if not x:
                                                                                                                revert with 0, 18
                                                                                                            if s and (x / 2) + 1208925819614629174706176 / x > -1 / s:
                                                                                                                revert with 0, 17
                                                                                                            if 549755813888 > !(s * (x / 2) + 1208925819614629174706176 / x):
                                                                                                                revert with 0, 17
                                                                                                            if 1099511627776 < Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40:
                                                                                                                revert with 0, 17
                                                                                                            if ext_call.return_data[0] and -(Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[0]:
                                                                                                                revert with 0, 17
                                                                                                            if 549755813888 > !((ext_call.return_data[0] << 40) - (Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40 * ext_call.return_data[0])):
                                                                                                                revert with 0, 17
                                                                                                            return address(ext_call.return_data[0]), 
                                                                                                                   Mask(216, 40, (ext_call.return_data[0] << 40) + (-1 * Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40 * ext_call.return_data[0]) + 549755813888) >> 40
                                                                                else:
                                                                                    if u <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                        if not u:
                                                                                            revert with 0, 18
                                                                                        if 6931471805599453094172 * u / u != 6931471805599453094172:
                                                                                            revert with 0, 'MATH_ERROR'
                                                                                        if u <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                            if not (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 or 6931471805599453094172 * u / 10000 * 10^18 <= -1 / (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776:
                                                                                                if 549755813888 <= !((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18):
                                                                                                    if var408001 <= !var408002:
                                                                                                        if 1 <= !var414002:
                                                                                                            t = var416003 + 1
                                                                                                            v = var416008
                                                                                                            w = var416010
                                                                                                            x = var416011
                                                                                                            x = var416012
                                                                                                            while not t or 1099511627776 <= -1 / t:
                                                                                                                if Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                    revert with 0, 17
                                                                                                                if Mask(216, 0, t) << 39 > !Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888):
                                                                                                                    revert with 0, 17
                                                                                                                if not t << 40:
                                                                                                                    revert with 0, 18
                                                                                                                if v and (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40 > -1 / v:
                                                                                                                    revert with 0, 17
                                                                                                                if 549755813888 > !(v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40):
                                                                                                                    revert with 0, 17
                                                                                                                if Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40:
                                                                                                                    if 500 == w:
                                                                                                                        revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                    if w == -1:
                                                                                                                        revert with 0, 17
                                                                                                                    if x > !(Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40):
                                                                                                                        revert with 0, 17
                                                                                                                    if 1 > !(w + 1):
                                                                                                                        revert with 0, 17
                                                                                                                    t = w + 2
                                                                                                                    v = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                                    w = w + 1
                                                                                                                    x = Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40
                                                                                                                    x = x + (Mask(216, 40, (v * (Mask(216, 0, t) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * 6931471805599453094172 * u / 10000 * 10^18) + 549755813888) / t << 40) + 549755813888) >> 40)
                                                                                                                    continue 
                                                                                                                if x / 2 > 0xfffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffff:
                                                                                                                    revert with 0, 17
                                                                                                                if not x:
                                                                                                                    revert with 0, 18
                                                                                                                if s and (x / 2) + 1208925819614629174706176 / x > -1 / s:
                                                                                                                    revert with 0, 17
                                                                                                                if 549755813888 > !(s * (x / 2) + 1208925819614629174706176 / x):
                                                                                                                    revert with 0, 17
                                                                                                                if 1099511627776 < Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40:
                                                                                                                    revert with 0, 17
                                                                                                                if ext_call.return_data[0] and -(Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[0]:
                                                                                                                    revert with 0, 17
                                                                                                                if 549755813888 > !((ext_call.return_data[0] << 40) - (Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40 * ext_call.return_data[0])):
                                                                                                                    revert with 0, 17
                                                                                                                return address(ext_call.return_data[0]), 
                                                                                                                       Mask(216, 40, (ext_call.return_data[0] << 40) + (-1 * Mask(216, 40, (s * (x / 2) + 1208925819614629174706176 / x) + 549755813888) >> 40 * ext_call.return_data[0]) + 549755813888) >> 40
                                                                else:
                                                                    idx = Mask(216, 40, ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) >> 40
                                                                    t = 0
                                                                    while idx:
                                                                        if t == -1:
                                                                            revert with 0, 17
                                                                        idx = idx / 2
                                                                        t = t + 1
                                                                        continue 
                                                                    if t >= 1:
                                                                        if not t - 1 or 1099511627776 <= -1 / t - 1:
                                                                            if t - 1 << 40 > 0x100000000000000000000000000000000000000000000000000:
                                                                                revert with 0, 'MATH_ERROR'
                                                                            if not ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                                if Mask(216, 0, ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40)) != ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                                    revert with 0, 'MATH_ERROR'
                                                                                if not t - 1 or 1099511627776 <= -1 / t - 1:
                                                                                    if Mask(216, 0, t - 1) != t - 1:
                                                                                        revert with 0, 'MATH_ERROR'
                                                                                    if 1099511627776 <= -1 / 1 << t - 1:
                                                                                        if Mask(216, 0, 1 << t - 1) != 1 << t - 1:
                                                                                            revert with 0, 'MATH_ERROR'
                                                                                        if 1 << t - 1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                                            if not ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) or 1099511627776 <= -1 / ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40):
                                                                                                if not 1 << t - 1 << 40:
                                                                                                    revert with 0, 18
                                                                                                if ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) << 40 / 1 << t - 1 << 40 < 1099511627776:
                                                                                                    revert with 0, 'MATH_ERROR'
                                                                                                if ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) << 40 / 1 << t - 1 << 40 >= 2199023255552:
                                                                                                    revert with 0, 'MATH_ERROR'
                                                                                                idx = 40
                                                                                                u = 1099511627776
                                                                                                v = 0
                                                                                                w = ((ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + 1208925819614629174706176 / (ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) / 2) + (ext_call.return_data[64] << 40) / ext_call.return_data[64] + (Mask(216, 40, (arg3 << 40) + (-1 * ext_call.return_data[0] * arg3) + 549755813888) >> 40) << 40 / 1 << t - 1 << 40
                                                                                                while idx:
                                                                                                    if w and w > -1 / w:
                                                                                                        revert with 0, 17
                                                                                                    if Mask(216, 40, w * w) >> 40 < 2199023255552:
                                                                                                        if not idx:
                                                                                                            revert with 0, 17
                                                                                                        idx = idx - 1
                                                                                                        u = u / 2
                                                                                                        v = v
                                                                                                        w = Mask(216, 40, w * w) >> 40
                                                                                                        continue 
                                                                                                    if v > !(u / 2):
                                                                                                        revert with 0, 17
                                                                                                    if not idx:
                                                                                                        revert with 0, 17
                                                                                                    idx = idx - 1
                                                                                                    u = u / 2
                                                                                                    v = v + (u / 2)
                                                                                                    w = Mask(215, 41, w * w) >> 41
                                                                                                    continue 
                                                                                                if v > 0x100000000000000000000000000000000000000000000000000:
                                                                                                    revert with 0, 1
                                                                                                if not t - 1 or 1099511627776 <= -1 / t - 1:
                                                                                                    if t - 1 << 40 <= !v:
                                                                                                        if not (t - 1 << 40) + v:
                                                                                                            if (t - 1 << 40) + v <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                                                if not (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 or (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18 <= -1 / (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776:
                                                                                                                    if 549755813888 <= !((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18):
                                                                                                                        if var415001 <= !var415002:
                                                                                                                            if 1 <= !var421002:
                                                                                                                                u = var423003 + 1
                                                                                                                                w = var423008
                                                                                                                                x = var423010
                                                                                                                                y = var423011
                                                                                                                                y = var423012
                                                                                                                                while not u or 1099511627776 <= -1 / u:
                                                                                                                                    if Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if Mask(216, 0, u) << 39 > !Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if not u << 40:
                                                                                                                                        revert with 0, 18
                                                                                                                                    if w and (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40 > -1 / w:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 549755813888 > !(w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40:
                                                                                                                                        if 500 == x:
                                                                                                                                            revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                                        if x == -1:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if y > !(Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40):
                                                                                                                                            revert with 0, 17
                                                                                                                                        if 1 > !(x + 1):
                                                                                                                                            revert with 0, 17
                                                                                                                                        u = x + 2
                                                                                                                                        w = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                        x = x + 1
                                                                                                                                        y = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                        y = y + (Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40)
                                                                                                                                        continue 
                                                                                                                                    if y / 2 > 0xfffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffff:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if not y:
                                                                                                                                        revert with 0, 18
                                                                                                                                    if s and (y / 2) + 1208925819614629174706176 / y > -1 / s:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 549755813888 > !(s * (y / 2) + 1208925819614629174706176 / y):
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 1099511627776 < Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if ext_call.return_data[0] and -(Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[0]:
                                                                                                                                        revert with 0, 17
                                                                                                                                    if 549755813888 > !((ext_call.return_data[0] << 40) - (Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40 * ext_call.return_data[0])):
                                                                                                                                        revert with 0, 17
                                                                                                                                    return address(ext_call.return_data[0]), 
                                                                                                                                           Mask(216, 40, (ext_call.return_data[0] << 40) + (-1 * Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40 * ext_call.return_data[0]) + 549755813888) >> 40
                                                                                                        else:
                                                                                                            if (t - 1 << 40) + v <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                                                if not (t - 1 << 40) + v:
                                                                                                                    revert with 0, 18
                                                                                                                if (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / (t - 1 << 40) + v != 6931471805599453094172:
                                                                                                                    revert with 0, 'MATH_ERROR'
                                                                                                                if (t - 1 << 40) + v <= 0xae693fb73f2768931b8e246857175127b1eec2e386c6a7:
                                                                                                                    if not (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 or (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18 <= -1 / (ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776:
                                                                                                                        if 549755813888 <= !((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18):
                                                                                                                            if var420001 <= !var420002:
                                                                                                                                if 1 <= !var426002:
                                                                                                                                    u = var428003 + 1
                                                                                                                                    w = var428008
                                                                                                                                    x = var428010
                                                                                                                                    y = var428011
                                                                                                                                    y = var428012
                                                                                                                                    while not u or 1099511627776 <= -1 / u:
                                                                                                                                        if Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) and 1099511627776 > -1 / Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) >> 40:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if Mask(216, 0, u) << 39 > !Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888):
                                                                                                                                            revert with 0, 17
                                                                                                                                        if not u << 40:
                                                                                                                                            revert with 0, 18
                                                                                                                                        if w and (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40 > -1 / w:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if 549755813888 > !(w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40):
                                                                                                                                            revert with 0, 17
                                                                                                                                        if Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40:
                                                                                                                                            if 500 == x:
                                                                                                                                                revert with 0, 'RPOWE_SLOW_CONVERGE'
                                                                                                                                            if x == -1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            if y > !(Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40):
                                                                                                                                                revert with 0, 17
                                                                                                                                            if 1 > !(x + 1):
                                                                                                                                                revert with 0, 17
                                                                                                                                            u = x + 2
                                                                                                                                            w = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                            x = x + 1
                                                                                                                                            y = Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40
                                                                                                                                            y = y + (Mask(216, 40, (w * (Mask(216, 0, u) << 39) + Mask(216, 40, ((ext_call.return_data[32] / 2) + (ext_call.return_data[96] << 40) / ext_call.return_data[32] % 1099511627776 * (6931471805599453094172 * t - 1 << 40) + (6931471805599453094172 * v) / 10000 * 10^18) + 549755813888) / u << 40) + 549755813888) >> 40)
                                                                                                                                            continue 
                                                                                                                                        if y / 2 > 0xfffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffff:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if not y:
                                                                                                                                            revert with 0, 18
                                                                                                                                        if s and (y / 2) + 1208925819614629174706176 / y > -1 / s:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if 549755813888 > !(s * (y / 2) + 1208925819614629174706176 / y):
                                                                                                                                            revert with 0, 17
                                                                                                                                        if 1099511627776 < Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if ext_call.return_data[0] and -(Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40) + 1099511627776 > -1 / ext_call.return_data[0]:
                                                                                                                                            revert with 0, 17
                                                                                                                                        if 549755813888 > !((ext_call.return_data[0] << 40) - (Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40 * ext_call.return_data[0])):
                                                                                                                                            revert with 0, 17
                                                                                                                                        return address(ext_call.return_data[0]), 
                                                                                                                                               Mask(216, 40, (ext_call.return_data[0] << 40) + (-1 * Mask(216, 40, (s * (y / 2) + 1208925819614629174706176 / y) + 549755813888) >> 40 * ext_call.return_data[0]) + 549755813888) >> 40
    revert with 0, 17
}



}
