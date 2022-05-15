contract main {




// =====================  Runtime code  =====================


const JOE = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd


function _fallback() payable {
    revert
}

function sub_ec933a15(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).oracle() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0x74645ff300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).oracleData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require _8 + _9 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)] = mem[ceil32(return_data.size) + _8 + 128 len ceil32(_9)]
    if ceil32(_9) <= _9:
        if arg3:
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
            staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _310 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_310] < 500 * 10^18:
                _318 = mem[64]
                mem[mem[64] + 36] = 0
                _319 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_319 + 32 len 4] = 3668334302
                mem[_318 + 68] = 0
                mem[_318 + 100] = 64
                _334 = mem[_319]
                mem[_318 + 132] = mem[_319]
                mem[_318 + 164 len ceil32(_334)] = mem[_319 + 32 len ceil32(_334)]
                if ceil32(_334) > _334:
                    mem[_318 + _334 + 164] = 0
                return 0, 64, mem[_318 + 132 len ceil32(_334) + 32]
            _317 = mem[64]
            mem[mem[64]] = 0xeeb8a8d300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _9
            mem[mem[64] + 68 len ceil32(_9)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)]
            if ceil32(_9) <= _9:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).peek(bytes arg1) with:
                        gas gas_remaining wei
                       args Array(len=_9, data=mem[mem[64] + 68 len ceil32(_9)])
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _613 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_613] == bool(mem[_613])
                _621 = mem[_613 + 32]
                mem[mem[64]] = 0xd39bbef000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _629 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 68 len ceil32(_629)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_629)]
                if ceil32(_629) <= _629:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).peekSpot(bytes arg1) with:
                            gas gas_remaining wei
                           args 32, mem[mem[64] + 36 len ceil32(_629) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _801 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _809 = mem[_801]
                    if mem[_801] > _621:
                        _817 = mem[64]
                        mem[mem[64] + 36] = 0
                        _818 = mem[64]
                        mem[mem[64]] = 36
                        mem[64] = mem[64] + 68
                        mem[_818 + 32 len 4] = 3668334302
                        mem[_817 + 68] = _809 > _621
                        mem[_817 + 100] = 64
                        _849 = mem[_818]
                        mem[_817 + 132] = mem[_818]
                        mem[_817 + 164 len ceil32(_849)] = mem[_818 + 32 len ceil32(_849)]
                        if ceil32(_849) > _849:
                            mem[_817 + _849 + 164] = 0
                        return _809 > _621, 64, mem[_817 + 132 len ceil32(_849) + 32]
                    if _621 < mem[_801]:
                        revert with 0, 17
                    if _621 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                        revert with 0, 17
                    _865 = mem[64]
                    mem[mem[64] + 36] = 0
                    _866 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_866 + 32 len 4] = 3668334302
                    mem[_865 + 68] = 20 * _621 / 100 > _621 - _809
                    mem[_865 + 100] = 64
                    _913 = mem[_866]
                    mem[_865 + 132] = mem[_866]
                    mem[_865 + 164 len ceil32(_913)] = mem[_866 + 32 len ceil32(_913)]
                    if ceil32(_913) > _913:
                        mem[_865 + _913 + 164] = 0
                    return 20 * _621 / 100 > _621 - _809, 64, mem[_865 + 132 len ceil32(_913) + 32]
                mem[mem[64] + _629 + 68] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).peekSpot(bytes arg1) with:
                        gas gas_remaining wei
                       args 32, mem[mem[64] + 36 len ceil32(_629) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _805 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _813 = mem[_805]
                if mem[_805] > _621:
                    _829 = mem[64]
                    mem[mem[64] + 36] = 0
                    _830 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_830 + 32 len 4] = 3668334302
                    mem[_829 + 68] = _813 > _621
                    mem[_829 + 100] = 64
                    _853 = mem[_830]
                    mem[_829 + 132] = mem[_830]
                    mem[_829 + 164 len ceil32(_853)] = mem[_830 + 32 len ceil32(_853)]
                    if ceil32(_853) > _853:
                        mem[_829 + _853 + 164] = 0
                    return _813 > _621, 64, mem[_829 + 132 len ceil32(_853) + 32]
                if _621 < mem[_805]:
                    revert with 0, 17
                if _621 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                    revert with 0, 17
                _878 = mem[64]
                mem[mem[64] + 36] = 0
                _879 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_879 + 32 len 4] = 3668334302
                mem[_878 + 68] = 20 * _621 / 100 > _621 - _813
                mem[_878 + 100] = 64
                _917 = mem[_879]
                mem[_878 + 132] = mem[_879]
                mem[_878 + 164 len ceil32(_917)] = mem[_879 + 32 len ceil32(_917)]
                if ceil32(_917) > _917:
                    mem[_878 + _917 + 164] = 0
                return 20 * _621 / 100 > _621 - _813, 64, mem[_878 + 132 len ceil32(_917) + 32]
            mem[mem[64] + _9 + 68] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).peek(bytes arg1) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(_9) + _317 + -mem[64] + 64]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_615] == bool(mem[_615])
            _624 = mem[_615 + 32]
            mem[mem[64]] = 0xd39bbef000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _631 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 68 len ceil32(_631)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_631)]
            if ceil32(_631) <= _631:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).peekSpot(bytes arg1) with:
                        gas gas_remaining wei
                       args 32, mem[mem[64] + 36 len ceil32(_631) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _802 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _810 = mem[_802]
                if mem[_802] > _624:
                    _820 = mem[64]
                    mem[mem[64] + 36] = 0
                    _821 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_821 + 32 len 4] = 3668334302
                    mem[_820 + 68] = _810 > _624
                    mem[_820 + 100] = 64
                    _850 = mem[_821]
                    mem[_820 + 132] = mem[_821]
                    mem[_820 + 164 len ceil32(_850)] = mem[_821 + 32 len ceil32(_850)]
                    if ceil32(_850) > _850:
                        mem[_820 + _850 + 164] = 0
                    return _810 > _624, 64, mem[_820 + 132 len ceil32(_850) + 32]
                if _624 < mem[_802]:
                    revert with 0, 17
                if _624 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                    revert with 0, 17
                _868 = mem[64]
                mem[mem[64] + 36] = 0
                _869 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_869 + 32 len 4] = 3668334302
                mem[_868 + 68] = 20 * _624 / 100 > _624 - _810
                mem[_868 + 100] = 64
                _914 = mem[_869]
                mem[_868 + 132] = mem[_869]
                mem[_868 + 164 len ceil32(_914)] = mem[_869 + 32 len ceil32(_914)]
                if ceil32(_914) > _914:
                    mem[_868 + _914 + 164] = 0
                return 20 * _624 / 100 > _624 - _810, 64, mem[_868 + 132 len ceil32(_914) + 32]
            mem[mem[64] + _631 + 68] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).peekSpot(bytes arg1) with:
                    gas gas_remaining wei
                   args 32, mem[mem[64] + 36 len ceil32(_631) + 32]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _806 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _814 = mem[_806]
            if mem[_806] > _624:
                _832 = mem[64]
                mem[mem[64] + 36] = 0
                _833 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_833 + 32 len 4] = 3668334302
                mem[_832 + 68] = _814 > _624
                mem[_832 + 100] = 64
                _854 = mem[_833]
                mem[_832 + 132] = mem[_833]
                mem[_832 + 164 len ceil32(_854)] = mem[_833 + 32 len ceil32(_854)]
                if ceil32(_854) > _854:
                    mem[_832 + _854 + 164] = 0
                return _814 > _624, 64, mem[_832 + 132 len ceil32(_854) + 32]
            if _624 < mem[_806]:
                revert with 0, 17
            if _624 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                revert with 0, 17
            _882 = mem[64]
            mem[mem[64] + 36] = 0
            _883 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_883 + 32 len 4] = 3668334302
            mem[_882 + 68] = 20 * _624 / 100 > _624 - _814
            mem[_882 + 100] = 64
            _918 = mem[_883]
            mem[_882 + 132] = mem[_883]
            mem[_882 + 164 len ceil32(_918)] = mem[_883 + 32 len ceil32(_918)]
            if ceil32(_918) > _918:
                mem[_882 + _918 + 164] = 0
            return 20 * _624 / 100 > _624 - _814, 64, mem[_882 + 132 len ceil32(_918) + 32]
        require ext_code.size(address(arg2))
        staticcall address(arg2).strategyToken() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _309 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _313 = mem[_309]
        require mem[_309] == mem[_309 + 12 len 20]
        require ext_code.size(address(arg2))
        staticcall address(arg2).bentoBox() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _332 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_332] == mem[_332 + 12 len 20]
        require ext_code.size(mem[_332 + 12 len 20])
        staticcall mem[_332 + 12 len 20].strategyData(address arg1) with:
                gas gas_remaining wei
               args address(_313)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_352] == mem[_352 + 24 len 8]
        _371 = mem[_352 + 32]
        require mem[_352 + 32] == mem[_352 + 56 len 8]
        _380 = mem[_352 + 64]
        require mem[_352 + 64] == mem[_352 + 80 len 16]
        require ext_code.size(address(arg2))
        staticcall address(arg2).bentoBox() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _391 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_391] == mem[_391 + 12 len 20]
        require ext_code.size(mem[_391 + 12 len 20])
        staticcall mem[_391 + 12 len 20].totals(address arg1) with:
                gas gas_remaining wei
               args address(_313)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _426 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _453 = mem[_426]
        require mem[_426] == mem[_426 + 16 len 16]
        require mem[_426 + 32] == mem[_426 + 48 len 16]
        if mem[_426 + 16 len 16] and uint64(_371) > test266151307() / mem[_426 + 16 len 16]:
            revert with 0, 17
        if uint128(uint64(_371) * mem[_426 + 16 len 16]) > 0x2b1da46102b1da46102b1da46102b1d:
            revert with 0, 17
        if uint128(_380) < uint128(uint128(uint128(95 * uint128(uint64(_371) * mem[_426 + 16 len 16])) / 100) / 100):
            _546 = mem[64]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 1
            mem[mem[64] + 100] = -1
            mem[mem[64] + 132] = 0
            _547 = mem[64]
            mem[mem[64]] = 132
            mem[64] = mem[64] + 164
            mem[_547 + 32 len 4] = safeHarvest(uint256 arg1, bool arg2, uint256 arg3, bool arg4)
            mem[_546 + 164] = uint128(_380) < uint128(uint128(uint128(95 * uint128(uint64(_371) * uint128(_453))) / 100) / 100)
            mem[_546 + 196] = 64
            _565 = mem[_547]
            mem[_546 + 228] = mem[_547]
            mem[_546 + 260 len ceil32(_565)] = mem[_547 + 32 len ceil32(_565)]
            if ceil32(_565) > _565:
                mem[_546 + _565 + 260] = 0
            return uint128(_380) < uint128(uint128(uint128(95 * uint128(uint64(_371) * uint128(_453))) / 100) / 100), 
                   64,
                   mem[_546 + 228 len ceil32(_565) + 32]
        if mem[_426 + 16 len 16] and uint64(_371) > test266151307() / mem[_426 + 16 len 16]:
            revert with 0, 17
        if uint128(uint64(_371) * mem[_426 + 16 len 16]) > 0x2702702702702702702702702702702:
            revert with 0, 17
        _572 = mem[64]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 1
        mem[mem[64] + 100] = -1
        mem[mem[64] + 132] = 0
        _573 = mem[64]
        mem[mem[64]] = 132
        mem[64] = mem[64] + 164
        mem[_573 + 32 len 4] = safeHarvest(uint256 arg1, bool arg2, uint256 arg3, bool arg4)
        mem[_572 + 164] = uint128(_380) < uint128(uint128(uint128(105 * uint128(uint64(_371) * uint128(_453))) / 100) / 100)
        mem[_572 + 196] = 64
        _581 = mem[_573]
        mem[_572 + 228] = mem[_573]
        mem[_572 + 260 len ceil32(_581)] = mem[_573 + 32 len ceil32(_581)]
        if ceil32(_581) > _581:
            mem[_572 + _581 + 260] = 0
        return uint128(_380) < uint128(uint128(uint128(105 * uint128(uint64(_371) * uint128(_453))) / 100) / 100), 
               64,
               mem[_572 + 228 len ceil32(_581) + 32]
    mem[(2 * ceil32(return_data.size)) + _9 + 128] = 0
    if arg3:
        mem[mem[64] + 4] = address(arg2)
        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
        staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _312 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_312] < 500 * 10^18:
            _325 = mem[64]
            mem[mem[64] + 36] = 0
            _326 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_326 + 32 len 4] = 3668334302
            mem[_325 + 68] = 0
            mem[_325 + 100] = 64
            _338 = mem[_326]
            mem[_325 + 132] = mem[_326]
            mem[_325 + 164 len ceil32(_338)] = mem[_326 + 32 len ceil32(_338)]
            if ceil32(_338) > _338:
                mem[_325 + _338 + 164] = 0
            return 0, 64, mem[_325 + 132 len ceil32(_338) + 32]
        _321 = mem[64]
        mem[mem[64]] = 0xeeb8a8d300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _9
        mem[mem[64] + 68 len ceil32(_9)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)]
        if ceil32(_9) <= _9:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).peek(bytes arg1) with:
                    gas gas_remaining wei
                   args Array(len=_9, data=mem[mem[64] + 68 len ceil32(_9)])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _614 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_614] == bool(mem[_614])
            _622 = mem[_614 + 32]
            mem[mem[64]] = 0xd39bbef000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _630 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 68 len ceil32(_630)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_630)]
            if ceil32(_630) <= _630:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).peekSpot(bytes arg1) with:
                        gas gas_remaining wei
                       args 32, mem[mem[64] + 36 len ceil32(_630) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _803 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _811 = mem[_803]
                if mem[_803] > _622:
                    _823 = mem[64]
                    mem[mem[64] + 36] = 0
                    _824 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_824 + 32 len 4] = 3668334302
                    mem[_823 + 68] = _811 > _622
                    mem[_823 + 100] = 64
                    _851 = mem[_824]
                    mem[_823 + 132] = mem[_824]
                    mem[_823 + 164 len ceil32(_851)] = mem[_824 + 32 len ceil32(_851)]
                    if ceil32(_851) > _851:
                        mem[_823 + _851 + 164] = 0
                    return _811 > _622, 64, mem[_823 + 132 len ceil32(_851) + 32]
                if _622 < mem[_803]:
                    revert with 0, 17
                if _622 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                    revert with 0, 17
                _871 = mem[64]
                mem[mem[64] + 36] = 0
                _872 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_872 + 32 len 4] = 3668334302
                mem[_871 + 68] = 20 * _622 / 100 > _622 - _811
                mem[_871 + 100] = 64
                _915 = mem[_872]
                mem[_871 + 132] = mem[_872]
                mem[_871 + 164 len ceil32(_915)] = mem[_872 + 32 len ceil32(_915)]
                if ceil32(_915) > _915:
                    mem[_871 + _915 + 164] = 0
                return 20 * _622 / 100 > _622 - _811, 64, mem[_871 + 132 len ceil32(_915) + 32]
            mem[mem[64] + _630 + 68] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).peekSpot(bytes arg1) with:
                    gas gas_remaining wei
                   args 32, mem[mem[64] + 36 len ceil32(_630) + 32]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _807 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _815 = mem[_807]
            if mem[_807] > _622:
                _835 = mem[64]
                mem[mem[64] + 36] = 0
                _836 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_836 + 32 len 4] = 3668334302
                mem[_835 + 68] = _815 > _622
                mem[_835 + 100] = 64
                _855 = mem[_836]
                mem[_835 + 132] = mem[_836]
                mem[_835 + 164 len ceil32(_855)] = mem[_836 + 32 len ceil32(_855)]
                if ceil32(_855) > _855:
                    mem[_835 + _855 + 164] = 0
                return _815 > _622, 64, mem[_835 + 132 len ceil32(_855) + 32]
            if _622 < mem[_807]:
                revert with 0, 17
            if _622 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                revert with 0, 17
            _886 = mem[64]
            mem[mem[64] + 36] = 0
            _887 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_887 + 32 len 4] = 3668334302
            mem[_886 + 68] = 20 * _622 / 100 > _622 - _815
            mem[_886 + 100] = 64
            _919 = mem[_887]
            mem[_886 + 132] = mem[_887]
            mem[_886 + 164 len ceil32(_919)] = mem[_887 + 32 len ceil32(_919)]
            if ceil32(_919) > _919:
                mem[_886 + _919 + 164] = 0
            return 20 * _622 / 100 > _622 - _815, 64, mem[_886 + 132 len ceil32(_919) + 32]
        mem[mem[64] + _9 + 68] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).peek(bytes arg1) with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len ceil32(_9) + _321 + -mem[64] + 64]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _616 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_616] == bool(mem[_616])
        _626 = mem[_616 + 32]
        mem[mem[64]] = 0xd39bbef000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _632 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 36] = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 68 len ceil32(_632)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_632)]
        if ceil32(_632) <= _632:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).peekSpot(bytes arg1) with:
                    gas gas_remaining wei
                   args 32, mem[mem[64] + 36 len ceil32(_632) + 32]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _804 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _812 = mem[_804]
            if mem[_804] > _626:
                _826 = mem[64]
                mem[mem[64] + 36] = 0
                _827 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_827 + 32 len 4] = 3668334302
                mem[_826 + 68] = _812 > _626
                mem[_826 + 100] = 64
                _852 = mem[_827]
                mem[_826 + 132] = mem[_827]
                mem[_826 + 164 len ceil32(_852)] = mem[_827 + 32 len ceil32(_852)]
                if ceil32(_852) > _852:
                    mem[_826 + _852 + 164] = 0
                return _812 > _626, 64, mem[_826 + 132 len ceil32(_852) + 32]
            if _626 < mem[_804]:
                revert with 0, 17
            if _626 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                revert with 0, 17
            _874 = mem[64]
            mem[mem[64] + 36] = 0
            _875 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_875 + 32 len 4] = 3668334302
            mem[_874 + 68] = 20 * _626 / 100 > _626 - _812
            mem[_874 + 100] = 64
            _916 = mem[_875]
            mem[_874 + 132] = mem[_875]
            mem[_874 + 164 len ceil32(_916)] = mem[_875 + 32 len ceil32(_916)]
            if ceil32(_916) > _916:
                mem[_874 + _916 + 164] = 0
            return 20 * _626 / 100 > _626 - _812, 64, mem[_874 + 132 len ceil32(_916) + 32]
        mem[mem[64] + _632 + 68] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).peekSpot(bytes arg1) with:
                gas gas_remaining wei
               args 32, mem[mem[64] + 36 len ceil32(_632) + 32]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _808 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _816 = mem[_808]
        if mem[_808] > _626:
            _838 = mem[64]
            mem[mem[64] + 36] = 0
            _839 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_839 + 32 len 4] = 3668334302
            mem[_838 + 68] = _816 > _626
            mem[_838 + 100] = 64
            _856 = mem[_839]
            mem[_838 + 132] = mem[_839]
            mem[_838 + 164 len ceil32(_856)] = mem[_839 + 32 len ceil32(_856)]
            if ceil32(_856) > _856:
                mem[_838 + _856 + 164] = 0
            return _816 > _626, 64, mem[_838 + 132 len ceil32(_856) + 32]
        if _626 < mem[_808]:
            revert with 0, 17
        if _626 > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
            revert with 0, 17
        _890 = mem[64]
        mem[mem[64] + 36] = 0
        _891 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_891 + 32 len 4] = 3668334302
        mem[_890 + 68] = 20 * _626 / 100 > _626 - _816
        mem[_890 + 100] = 64
        _920 = mem[_891]
        mem[_890 + 132] = mem[_891]
        mem[_890 + 164 len ceil32(_920)] = mem[_891 + 32 len ceil32(_920)]
        if ceil32(_920) > _920:
            mem[_890 + _920 + 164] = 0
        return 20 * _626 / 100 > _626 - _816, 64, mem[_890 + 132 len ceil32(_920) + 32]
    require ext_code.size(address(arg2))
    staticcall address(arg2).strategyToken() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _311 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _315 = mem[_311]
    require mem[_311] == mem[_311 + 12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).bentoBox() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _336 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_336] == mem[_336 + 12 len 20]
    require ext_code.size(mem[_336 + 12 len 20])
    staticcall mem[_336 + 12 len 20].strategyData(address arg1) with:
            gas gas_remaining wei
           args address(_315)
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _358 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_358] == mem[_358 + 24 len 8]
    _376 = mem[_358 + 32]
    require mem[_358 + 32] == mem[_358 + 56 len 8]
    _383 = mem[_358 + 64]
    require mem[_358 + 64] == mem[_358 + 80 len 16]
    require ext_code.size(address(arg2))
    staticcall address(arg2).bentoBox() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _395 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_395] == mem[_395 + 12 len 20]
    require ext_code.size(mem[_395 + 12 len 20])
    staticcall mem[_395 + 12 len 20].totals(address arg1) with:
            gas gas_remaining wei
           args address(_315)
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _440 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _460 = mem[_440]
    require mem[_440] == mem[_440 + 16 len 16]
    require mem[_440 + 32] == mem[_440 + 48 len 16]
    if mem[_440 + 16 len 16] and uint64(_376) > test266151307() / mem[_440 + 16 len 16]:
        revert with 0, 17
    if uint128(uint64(_376) * mem[_440 + 16 len 16]) > 0x2b1da46102b1da46102b1da46102b1d:
        revert with 0, 17
    if uint128(_383) < uint128(uint128(uint128(95 * uint128(uint64(_376) * mem[_440 + 16 len 16])) / 100) / 100):
        _556 = mem[64]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 1
        mem[mem[64] + 100] = -1
        mem[mem[64] + 132] = 0
        _557 = mem[64]
        mem[mem[64]] = 132
        mem[64] = mem[64] + 164
        mem[_557 + 32 len 4] = safeHarvest(uint256 arg1, bool arg2, uint256 arg3, bool arg4)
        mem[_556 + 164] = uint128(_383) < uint128(uint128(uint128(95 * uint128(uint64(_376) * uint128(_460))) / 100) / 100)
        mem[_556 + 196] = 64
        _566 = mem[_557]
        mem[_556 + 228] = mem[_557]
        mem[_556 + 260 len ceil32(_566)] = mem[_557 + 32 len ceil32(_566)]
        if ceil32(_566) > _566:
            mem[_556 + _566 + 260] = 0
        return uint128(_383) < uint128(uint128(uint128(95 * uint128(uint64(_376) * uint128(_460))) / 100) / 100), 
               64,
               mem[_556 + 228 len ceil32(_566) + 32]
    if mem[_440 + 16 len 16] and uint64(_376) > test266151307() / mem[_440 + 16 len 16]:
        revert with 0, 17
    if uint128(uint64(_376) * mem[_440 + 16 len 16]) > 0x2702702702702702702702702702702:
        revert with 0, 17
    _576 = mem[64]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 1
    mem[mem[64] + 100] = -1
    mem[mem[64] + 132] = 0
    _577 = mem[64]
    mem[mem[64]] = 132
    mem[64] = mem[64] + 164
    mem[_577 + 32 len 4] = safeHarvest(uint256 arg1, bool arg2, uint256 arg3, bool arg4)
    mem[_576 + 164] = uint128(_383) < uint128(uint128(uint128(105 * uint128(uint64(_376) * uint128(_460))) / 100) / 100)
    mem[_576 + 196] = 64
    _582 = mem[_577]
    mem[_576 + 228] = mem[_577]
    mem[_576 + 260 len ceil32(_582)] = mem[_577 + 32 len ceil32(_582)]
    if ceil32(_582) > _582:
        mem[_576 + _582 + 260] = 0
    return uint128(_383) < uint128(uint128(uint128(105 * uint128(uint64(_376) * uint128(_460))) / 100) / 100), 
           64,
           mem[_576 + 228 len ceil32(_582) + 32]
}



}
