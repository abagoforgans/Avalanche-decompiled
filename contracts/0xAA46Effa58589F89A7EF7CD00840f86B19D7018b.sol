contract main {




// =====================  Runtime code  =====================


#
#  - sub_00673b0c(?)
#  - sub_57553afb(?)
#  - getAccountLimits(address arg1, address arg2)
#  - sub_88613111(?)
#
array of struct sub_7fedad55;

function sub_7fedad55(?) payable {
    return sub_7fedad55[0 len sub_7fedad55.length].field_0
}

function _fallback() payable {
    revert
}

function sub_d9ca3c9c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).joetroller() with:
            gas gas_remaining wei
    mem[800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).oracle() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 800] = 0
    mem[(2 * ceil32(return_data.size)) + 832] = 0
    mem[(2 * ceil32(return_data.size)) + 864] = 0
    mem[(2 * ceil32(return_data.size)) + 896] = 0
    mem[(2 * ceil32(return_data.size)) + 928] = 0
    mem[(2 * ceil32(return_data.size)) + 960] = 0
    mem[(2 * ceil32(return_data.size)) + 992] = 0
    mem[(2 * ceil32(return_data.size)) + 1024] = 0
    mem[(2 * ceil32(return_data.size)) + 1056] = 0
    mem[(2 * ceil32(return_data.size)) + 1088] = 0
    mem[(2 * ceil32(return_data.size)) + 1120] = 0
    mem[(2 * ceil32(return_data.size)) + 1152] = 0
    mem[(2 * ceil32(return_data.size)) + 1184] = 0
    mem[(2 * ceil32(return_data.size)) + 1216] = 0
    mem[(2 * ceil32(return_data.size)) + 1248] = 0
    mem[(2 * ceil32(return_data.size)) + 1280] = 0
    mem[(2 * ceil32(return_data.size)) + 1312] = 0
    mem[(2 * ceil32(return_data.size)) + 1344] = 0
    mem[(2 * ceil32(return_data.size)) + 1376] = 0
    mem[(2 * ceil32(return_data.size)) + 1408] = 0
    mem[(2 * ceil32(return_data.size)) + 1440] = 0
    mem[(2 * ceil32(return_data.size)) + 1472] = 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).exchangeRateStored() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 1504] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).markets(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[(4 * ceil32(return_data.size)) + 1504 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] < 3
    mem[(6 * ceil32(return_data.size)) + 1504] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 1504 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 1504
    require return_data.size >= 32
    _24 = mem[(6 * ceil32(return_data.size)) + 1504]
    require mem[(6 * ceil32(return_data.size)) + 1504] <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1504] + 1535 < (6 * ceil32(return_data.size)) + return_data.size + 1504
    _25 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1504] + 1504]
    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1504] + 1504] <= test266151307()
    require ceil32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1504] + 1504]) + 32 >= 0 and (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1504] + 1504]) + 1536 <= test266151307()
    mem[64] = (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 1504] + 1504]) + 1536
    mem[(7 * ceil32(return_data.size)) + 1504] = _25
    require _24 + _25 + 32 <= return_data.size
    mem[(7 * ceil32(return_data.size)) + 1536 len ceil32(_25)] = mem[(6 * ceil32(return_data.size)) + _24 + 1536 len ceil32(_25)]
    if ceil32(_25) <= _25:
        _1499 = mem[64]
        mem[64] = mem[64] + ceil32(sub_7fedad55.length) + 32
        mem[_1499] = sub_7fedad55.length
        mem[0] = 0
        mem[_1499 + 32] = uint256(sub_7fedad55.field_0)
        idx = _1499 + 32
        s = 0
        while _1499 + sub_7fedad55.length > idx:
            mem[idx + 32] = sub_7fedad55[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _6117 = mem[64]
        mem[mem[64] + 32 len ceil32(sub_7fedad55.length)] = mem[_1499 + 32 len ceil32(sub_7fedad55.length)]
        if ceil32(sub_7fedad55.length) <= sub_7fedad55.length:
            _10961 = mem[64]
            mem[mem[64]] = sub_7fedad55.length
            mem[64] = sub_7fedad55.length + mem[64] + 32
            _10963 = sha3(mem[_10961 + 32 len mem[_10961]])
            _11045 = mem[(7 * ceil32(return_data.size)) + 1504]
            mem[sub_7fedad55.length + _6117 + 64 len ceil32(mem[(7 * ceil32(return_data.size)) + 1504])] = mem[(7 * ceil32(return_data.size)) + 1536 len ceil32(mem[(7 * ceil32(return_data.size)) + 1504])]
            mem[64] = _11045 + sub_7fedad55.length + _6117 + 64
            if sha3(mem[sub_7fedad55.length + _6117 + 64 len _11045]) == _10963:
                if ext_call.return_data[64] <= 2:
                    require ext_code.size(address(arg1))
                    if ext_call.return_data[64] != 1:
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       0,
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       0,
                                       ext_call.return_data[31 len 1],
                                       18,
                                       ext_call.return_data[64],
                                       0,
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
                    else:
                        staticcall address(arg1).collateralCap() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalCollateralTokens() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       0,
                                       ext_call.return_data[31 len 1],
                                       18,
                                       ext_call.return_data[64],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
            else:
                require ext_code.size(address(arg1))
                staticcall address(arg1).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(arg1))
                staticcall address(arg1).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[64] <= 2:
                    require ext_code.size(address(arg1))
                    if ext_call.return_data[64] != 1:
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       0,
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[31 len 1],
                                       ext_call.return_data[0] << 248,
                                       ext_call.return_data[64],
                                       0,
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
                    else:
                        staticcall address(arg1).collateralCap() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalCollateralTokens() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[31 len 1],
                                       ext_call.return_data[0] << 248,
                                       ext_call.return_data[64],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
        else:
            mem[sub_7fedad55.length + mem[64] + 32] = 0
            _10965 = mem[64]
            mem[mem[64]] = sub_7fedad55.length
            mem[64] = sub_7fedad55.length + mem[64] + 32
            _10967 = sha3(mem[_10965 + 32 len mem[_10965]])
            _11046 = mem[(7 * ceil32(return_data.size)) + 1504]
            mem[sub_7fedad55.length + _6117 + 64 len ceil32(mem[(7 * ceil32(return_data.size)) + 1504])] = mem[(7 * ceil32(return_data.size)) + 1536 len ceil32(mem[(7 * ceil32(return_data.size)) + 1504])]
            mem[64] = _11046 + sub_7fedad55.length + _6117 + 64
            if sha3(mem[sub_7fedad55.length + _6117 + 64 len _11046]) == _10967:
                if ext_call.return_data[64] <= 2:
                    require ext_code.size(address(arg1))
                    if ext_call.return_data[64] != 1:
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       0,
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       0,
                                       ext_call.return_data[31 len 1],
                                       18,
                                       ext_call.return_data[64],
                                       0,
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
                    else:
                        staticcall address(arg1).collateralCap() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalCollateralTokens() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       0,
                                       ext_call.return_data[31 len 1],
                                       18,
                                       ext_call.return_data[64],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
            else:
                require ext_code.size(address(arg1))
                staticcall address(arg1).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(arg1))
                staticcall address(arg1).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[64] <= 2:
                    require ext_code.size(address(arg1))
                    if ext_call.return_data[64] != 1:
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       0,
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[31 len 1],
                                       ext_call.return_data[0] << 248,
                                       ext_call.return_data[64],
                                       0,
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
                    else:
                        staticcall address(arg1).collateralCap() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalCollateralTokens() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[31 len 1],
                                       ext_call.return_data[0] << 248,
                                       ext_call.return_data[64],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
    else:
        mem[_25 + (7 * ceil32(return_data.size)) + 1536] = 0
        _1500 = mem[64]
        mem[64] = mem[64] + ceil32(sub_7fedad55.length) + 32
        mem[_1500] = sub_7fedad55.length
        mem[0] = 0
        mem[_1500 + 32] = uint256(sub_7fedad55.field_0)
        idx = _1500 + 32
        s = 0
        while _1500 + sub_7fedad55.length > idx:
            mem[idx + 32] = sub_7fedad55[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _6118 = mem[64]
        mem[mem[64] + 32 len ceil32(sub_7fedad55.length)] = mem[_1500 + 32 len ceil32(sub_7fedad55.length)]
        if ceil32(sub_7fedad55.length) <= sub_7fedad55.length:
            _10993 = mem[64]
            mem[mem[64]] = sub_7fedad55.length
            mem[64] = sub_7fedad55.length + mem[64] + 32
            _10995 = sha3(mem[_10993 + 32 len mem[_10993]])
            _11047 = mem[(7 * ceil32(return_data.size)) + 1504]
            mem[sub_7fedad55.length + _6118 + 64 len ceil32(mem[(7 * ceil32(return_data.size)) + 1504])] = mem[(7 * ceil32(return_data.size)) + 1536 len ceil32(mem[(7 * ceil32(return_data.size)) + 1504])]
            mem[64] = _11047 + sub_7fedad55.length + _6118 + 64
            if sha3(mem[sub_7fedad55.length + _6118 + 64 len _11047]) == _10995:
                if ext_call.return_data[64] <= 2:
                    require ext_code.size(address(arg1))
                    if ext_call.return_data[64] != 1:
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       0,
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       0,
                                       ext_call.return_data[31 len 1],
                                       18,
                                       ext_call.return_data[64],
                                       0,
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
                    else:
                        staticcall address(arg1).collateralCap() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalCollateralTokens() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       0,
                                       ext_call.return_data[31 len 1],
                                       18,
                                       ext_call.return_data[64],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
            else:
                require ext_code.size(address(arg1))
                staticcall address(arg1).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(arg1))
                staticcall address(arg1).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[64] <= 2:
                    require ext_code.size(address(arg1))
                    if ext_call.return_data[64] != 1:
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       0,
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[31 len 1],
                                       ext_call.return_data[0] << 248,
                                       ext_call.return_data[64],
                                       0,
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
                    else:
                        staticcall address(arg1).collateralCap() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalCollateralTokens() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[31 len 1],
                                       ext_call.return_data[0] << 248,
                                       ext_call.return_data[64],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
        else:
            mem[sub_7fedad55.length + mem[64] + 32] = 0
            _10997 = mem[64]
            mem[mem[64]] = sub_7fedad55.length
            mem[64] = sub_7fedad55.length + mem[64] + 32
            _10999 = sha3(mem[_10997 + 32 len mem[_10997]])
            _11048 = mem[(7 * ceil32(return_data.size)) + 1504]
            mem[sub_7fedad55.length + _6118 + 64 len ceil32(mem[(7 * ceil32(return_data.size)) + 1504])] = mem[(7 * ceil32(return_data.size)) + 1536 len ceil32(mem[(7 * ceil32(return_data.size)) + 1504])]
            mem[64] = _11048 + sub_7fedad55.length + _6118 + 64
            if sha3(mem[sub_7fedad55.length + _6118 + 64 len _11048]) == _10999:
                if ext_call.return_data[64] <= 2:
                    require ext_code.size(address(arg1))
                    if ext_call.return_data[64] != 1:
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       0,
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       0,
                                       ext_call.return_data[31 len 1],
                                       18,
                                       ext_call.return_data[64],
                                       0,
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
                    else:
                        staticcall address(arg1).collateralCap() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalCollateralTokens() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       0,
                                       ext_call.return_data[31 len 1],
                                       18,
                                       ext_call.return_data[64],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
            else:
                require ext_code.size(address(arg1))
                staticcall address(arg1).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(arg1))
                staticcall address(arg1).underlying() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[64] <= 2:
                    require ext_code.size(address(arg1))
                    if ext_call.return_data[64] != 1:
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       0,
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[31 len 1],
                                       ext_call.return_data[0] << 248,
                                       ext_call.return_data[64],
                                       0,
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
                    else:
                        staticcall address(arg1).collateralCap() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalCollateralTokens() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).supplyRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).borrowRatePerSecond() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalBorrows() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).totalReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).getCash() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if ext_call.return_data[64] <= 2:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).mintGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).supplyCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[64] < 3:
                                return address(arg1), 
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[32],
                                       address(ext_call.return_data[0]),
                                       ext_call.return_data[31 len 1],
                                       ext_call.return_data[0] << 248,
                                       ext_call.return_data[64],
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       bool(ext_call.return_data[0]),
                                       bool(ext_call.return_data[0]),
                                       ext_call.return_data[0],
                                       ext_call.return_data[0]
    revert
}



}
