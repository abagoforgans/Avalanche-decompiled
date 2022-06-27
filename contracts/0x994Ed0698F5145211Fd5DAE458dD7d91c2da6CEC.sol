contract main {




// =====================  Runtime code  =====================


#
#  - sub_00673b0c(?)
#  - sub_57553afb(?)
#  - getAccountLimits(address arg1, address arg2)
#  - sub_88613111(?)
#
array of struct sub_7fedad55;
address stor1;

function sub_7fedad55(?) payable {
    return sub_7fedad55[0 len sub_7fedad55.length].field_0
}

function _fallback() payable {
    revert
}

function sub_54781336(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if uint8(arg1) > 1:
        revert with 0, 'rewardType is invalid'
    if uint8(arg1):
        if 1 == uint8(arg1):
            require ext_code.size(address(arg2))
            call address(arg2).claimReward(uint8 arg1, address arg2) with:
                 gas gas_remaining wei
                args 1, address(arg4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(arg4) > eth.balance(arg4):
                revert with 0, 'subtraction underflow', 0
    else:
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg2))
        call address(arg2).claimReward(uint8 arg1, address arg2) with:
             gas gas_remaining wei
            args 0, address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'subtraction underflow', 0
    return 0
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
    mem[800] = 0
    mem[832] = 0
    mem[864] = 0
    mem[896] = 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).joetroller() with:
            gas gas_remaining wei
    mem[928] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).oracle() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 928] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
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
    mem[(2 * ceil32(return_data.size)) + 1504] = 0
    mem[(2 * ceil32(return_data.size)) + 1536] = 0
    mem[(2 * ceil32(return_data.size)) + 1568] = 0
    mem[(2 * ceil32(return_data.size)) + 1600] = 0
    mem[(2 * ceil32(return_data.size)) + 1632] = 0
    mem[(2 * ceil32(return_data.size)) + 1664] = 0
    mem[(2 * ceil32(return_data.size)) + 1696] = 0
    mem[(2 * ceil32(return_data.size)) + 1728] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).markets(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[(2 * ceil32(return_data.size)) + 1760 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] < 3
    mem[(4 * ceil32(return_data.size)) + 1760] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 1760 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 1760
    require return_data.size >= 32
    _20 = mem[(4 * ceil32(return_data.size)) + 1760]
    require mem[(4 * ceil32(return_data.size)) + 1760] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1760] + 1791 < (4 * ceil32(return_data.size)) + return_data.size + 1760
    _21 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1760] + 1760]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1760] + 1760] <= test266151307()
    require ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1760] + 1760]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1760] + 1760]) + 1792 <= test266151307()
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1760] + 1760]) + 1792
    mem[(6 * ceil32(return_data.size)) + 1760] = _21
    require _20 + _21 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 1792 len ceil32(_21)] = mem[(4 * ceil32(return_data.size)) + _20 + 1792 len ceil32(_21)]
    if ceil32(_21) <= _21:
        _1479 = mem[64]
        mem[64] = mem[64] + ceil32(sub_7fedad55.length) + 32
        mem[_1479] = sub_7fedad55.length
        mem[0] = 0
        mem[_1479 + 32] = uint256(sub_7fedad55.field_0)
        idx = _1479 + 32
        s = 0
        while _1479 + sub_7fedad55.length > idx:
            mem[idx + 32] = sub_7fedad55[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _5849 = mem[64]
        mem[mem[64] + 32 len ceil32(sub_7fedad55.length)] = mem[_1479 + 32 len ceil32(sub_7fedad55.length)]
        if ceil32(sub_7fedad55.length) <= sub_7fedad55.length:
            _10653 = mem[64]
            mem[mem[64]] = sub_7fedad55.length
            mem[64] = sub_7fedad55.length + mem[64] + 32
            _10655 = sha3(mem[_10653 + 32 len mem[_10653]])
            _10737 = mem[(6 * ceil32(return_data.size)) + 1760]
            mem[sub_7fedad55.length + _5849 + 64 len ceil32(mem[(6 * ceil32(return_data.size)) + 1760])] = mem[(6 * ceil32(return_data.size)) + 1792 len ceil32(mem[(6 * ceil32(return_data.size)) + 1760])]
            mem[64] = _10737 + sub_7fedad55.length + _5849 + 64
            if sha3(mem[sub_7fedad55.length + _5849 + 64 len _10737]) == _10655:
                if ext_call.return_data[64] <= 2:
                    if ext_call.return_data[64] != 1:
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10737 + sub_7fedad55.length + _5849 + ceil32(return_data.size) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
                    else:
                        require ext_code.size(address(arg1))
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
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10737 + sub_7fedad55.length + _5849 + (4 * ceil32(return_data.size)) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
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
                    if ext_call.return_data[64] != 1:
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10737 + sub_7fedad55.length + _5849 + (6 * ceil32(return_data.size)) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
                    else:
                        require ext_code.size(address(arg1))
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
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10737 + sub_7fedad55.length + _5849 + (8 * ceil32(return_data.size)) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
        else:
            mem[sub_7fedad55.length + mem[64] + 32] = 0
            _10657 = mem[64]
            mem[mem[64]] = sub_7fedad55.length + _5849 - mem[64]
            mem[64] = sub_7fedad55.length + _5849 + 32
            _10659 = sha3(mem[_10657 + 32 len mem[_10657]])
            _10738 = mem[(6 * ceil32(return_data.size)) + 1760]
            mem[sub_7fedad55.length + _5849 + 64 len ceil32(mem[(6 * ceil32(return_data.size)) + 1760])] = mem[(6 * ceil32(return_data.size)) + 1792 len ceil32(mem[(6 * ceil32(return_data.size)) + 1760])]
            mem[64] = _10738 + sub_7fedad55.length + _5849 + 64
            if sha3(mem[sub_7fedad55.length + _5849 + 64 len _10738]) == _10659:
                if ext_call.return_data[64] <= 2:
                    if ext_call.return_data[64] != 1:
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10738 + sub_7fedad55.length + _5849 + ceil32(return_data.size) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
                    else:
                        require ext_code.size(address(arg1))
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
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10738 + sub_7fedad55.length + _5849 + (4 * ceil32(return_data.size)) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
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
                    if ext_call.return_data[64] != 1:
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10738 + sub_7fedad55.length + _5849 + (6 * ceil32(return_data.size)) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
                    else:
                        require ext_code.size(address(arg1))
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
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10738 + sub_7fedad55.length + _5849 + (8 * ceil32(return_data.size)) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
    else:
        mem[_21 + (6 * ceil32(return_data.size)) + 1792] = 0
        _1480 = mem[64]
        mem[64] = mem[64] + ceil32(sub_7fedad55.length) + 32
        mem[_1480] = sub_7fedad55.length
        mem[0] = 0
        mem[_1480 + 32] = uint256(sub_7fedad55.field_0)
        idx = _1480 + 32
        s = 0
        while _1480 + sub_7fedad55.length > idx:
            mem[idx + 32] = sub_7fedad55[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _5850 = mem[64]
        mem[mem[64] + 32 len ceil32(sub_7fedad55.length)] = mem[_1480 + 32 len ceil32(sub_7fedad55.length)]
        if ceil32(sub_7fedad55.length) <= sub_7fedad55.length:
            _10685 = mem[64]
            mem[mem[64]] = sub_7fedad55.length
            mem[64] = sub_7fedad55.length + mem[64] + 32
            _10687 = sha3(mem[_10685 + 32 len mem[_10685]])
            _10739 = mem[(6 * ceil32(return_data.size)) + 1760]
            mem[sub_7fedad55.length + _5850 + 64 len ceil32(mem[(6 * ceil32(return_data.size)) + 1760])] = mem[(6 * ceil32(return_data.size)) + 1792 len ceil32(mem[(6 * ceil32(return_data.size)) + 1760])]
            mem[64] = _10739 + sub_7fedad55.length + _5850 + 64
            if sha3(mem[sub_7fedad55.length + _5850 + 64 len _10739]) == _10687:
                if ext_call.return_data[64] <= 2:
                    if ext_call.return_data[64] != 1:
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10739 + sub_7fedad55.length + _5850 + ceil32(return_data.size) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
                    else:
                        require ext_code.size(address(arg1))
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
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10739 + sub_7fedad55.length + _5850 + (4 * ceil32(return_data.size)) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
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
                    if ext_call.return_data[64] != 1:
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10739 + sub_7fedad55.length + _5850 + (6 * ceil32(return_data.size)) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
                    else:
                        require ext_code.size(address(arg1))
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
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10739 + sub_7fedad55.length + _5850 + (8 * ceil32(return_data.size)) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
        else:
            mem[sub_7fedad55.length + mem[64] + 32] = 0
            _10689 = mem[64]
            mem[mem[64]] = sub_7fedad55.length + _5850 - mem[64]
            mem[64] = sub_7fedad55.length + _5850 + 32
            _10691 = sha3(mem[_10689 + 32 len mem[_10689]])
            _10740 = mem[(6 * ceil32(return_data.size)) + 1760]
            mem[sub_7fedad55.length + _5850 + 64 len ceil32(mem[(6 * ceil32(return_data.size)) + 1760])] = mem[(6 * ceil32(return_data.size)) + 1792 len ceil32(mem[(6 * ceil32(return_data.size)) + 1760])]
            mem[64] = _10740 + sub_7fedad55.length + _5850 + 64
            if sha3(mem[sub_7fedad55.length + _5850 + 64 len _10740]) == _10691:
                if ext_call.return_data[64] <= 2:
                    if ext_call.return_data[64] != 1:
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10740 + sub_7fedad55.length + _5850 + ceil32(return_data.size) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
                    else:
                        require ext_code.size(address(arg1))
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
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10740 + sub_7fedad55.length + _5850 + (4 * ceil32(return_data.size)) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
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
                    if ext_call.return_data[64] != 1:
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10740 + sub_7fedad55.length + _5850 + (6 * ceil32(return_data.size)) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
                    else:
                        require ext_code.size(address(arg1))
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
                        require ext_code.size(stor1)
                        staticcall stor1.0xea220135 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require bool(_10740 + sub_7fedad55.length + _5850 + (8 * ceil32(return_data.size)) + 320 <= test266151307())
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        require ext_call.return_data[96] == ext_call.return_data[96]
                        require ext_code.size(address(arg1))
                        call address(arg1).exchangeRateCurrent() with:
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
                                       ext_call.return_data[0],
                                       ext_call.return_data[0],
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96]
    revert
}



}
