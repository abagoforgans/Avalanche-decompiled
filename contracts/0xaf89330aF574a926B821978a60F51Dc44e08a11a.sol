contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function buy(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    while idx < arg1:
        if not idx:
            _17 = mem[64]
            mem[64] = mem[64] + 64
            mem[_17] = 1
            mem[_17 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _18 = mem[64]
            mem[mem[64] + 32] = 0x536465725f000000000000000000000000000000000000000000000000000000
            s = 0
            while s < 1:
                mem[s + _18 + 37] = mem[s + _17 + 32]
                s = s + 32
                continue 
            mem[_18 + 38] = 0
            _38 = mem[64]
            mem[64] = _18 + 38
            mem[_18 + 38] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
            mem[_18 + 42] = 32
            _41 = mem[_38]
            mem[_18 + 74] = mem[_38]
            s = 0
            while s < _41:
                mem[s + _18 + 106] = mem[s + _38 + 32]
                s = s + 32
                continue 
            if ceil32(_41) > _41:
                mem[_18 + _41 + 106] = 0
            require ext_code.size(stor1)
            call stor1.createNodeWithTokens(string arg1) with:
                 gas gas_remaining wei
                args 32, mem[_18 + 74 len ceil32(_41) + 32]
        else:
            t = 0
            s = idx
            while s:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 0, 65
            _34 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                s = idx
                while s:
                    if u < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if u - 1 >= mem[_34]:
                        revert with 0, 50
                    mem[u + _34 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _81 = mem[64]
                mem[mem[64] + 32] = 0x536465725f000000000000000000000000000000000000000000000000000000
                _83 = mem[_34]
                s = 0
                while s < _83:
                    mem[s + _81 + 37] = mem[s + _34 + 32]
                    s = s + 32
                    continue 
                if ceil32(_83) <= _83:
                    _119 = mem[64]
                    mem[64] = _83 + _81 + 37
                    mem[_83 + _81 + 37] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[_83 + _81 + 41] = 32
                    _123 = mem[_119]
                    mem[_83 + _81 + 73] = mem[_119]
                    s = 0
                    while s < _123:
                        mem[s + _83 + _81 + 105] = mem[s + _119 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_123) > _123:
                        mem[_83 + _81 + _123 + 105] = 0
                    require ext_code.size(stor1)
                    call stor1.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args 32, mem[_83 + _81 + 73 len ceil32(_123) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ceil32(_123) == -1:
                        revert with 0, 17
                    s = ceil32(_123) + 1
                    continue 
                mem[_81 + _83 + 37] = 0
                _124 = mem[64]
                mem[64] = _83 + _81 + 37
                mem[_83 + _81 + 37] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                mem[_83 + _81 + 41] = 32
                _129 = mem[_124]
                mem[_83 + _81 + 73] = mem[_124]
                s = 0
                while s < _129:
                    mem[s + _83 + _81 + 105] = mem[s + _124 + 32]
                    s = s + 32
                    continue 
                if ceil32(_129) > _129:
                    mem[_83 + _81 + _129 + 105] = 0
                require ext_code.size(stor1)
                call stor1.createNodeWithTokens(string arg1) with:
                     gas gas_remaining wei
                    args 32, mem[_83 + _81 + 73 len ceil32(_129) + 32]
            else:
                mem[_34 + 32 len t] = call.data[calldata.size len t]
                u = t
                s = idx
                while s:
                    if u < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if u - 1 >= mem[_34]:
                        revert with 0, 50
                    mem[u + _34 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    u = u - 1
                    s = s / 10
                    continue 
                _82 = mem[64]
                mem[mem[64] + 32] = 0x536465725f000000000000000000000000000000000000000000000000000000
                _84 = mem[_34]
                s = 0
                while s < _84:
                    mem[s + _82 + 37] = mem[s + _34 + 32]
                    s = s + 32
                    continue 
                if ceil32(_84) <= _84:
                    _121 = mem[64]
                    mem[64] = _84 + _82 + 37
                    mem[_84 + _82 + 37] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[_84 + _82 + 41] = 32
                    _126 = mem[_121]
                    mem[_84 + _82 + 73] = mem[_121]
                    s = 0
                    while s < _126:
                        mem[s + _84 + _82 + 105] = mem[s + _121 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_126) > _126:
                        mem[_84 + _82 + _126 + 105] = 0
                    require ext_code.size(stor1)
                    call stor1.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args 32, mem[_84 + _82 + 73 len ceil32(_126) + 32]
                else:
                    mem[_82 + _84 + 37] = 0
                    _127 = mem[64]
                    mem[64] = _84 + _82 + 37
                    mem[_84 + _82 + 37] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[_84 + _82 + 41] = 32
                    _130 = mem[_127]
                    mem[_84 + _82 + 73] = mem[_127]
                    s = 0
                    while s < _130:
                        mem[s + _84 + _82 + 105] = mem[s + _127 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_130) > _130:
                        mem[_84 + _82 + _130 + 105] = 0
                    require ext_code.size(stor1)
                    call stor1.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args 32, mem[_84 + _82 + 73 len ceil32(_130) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
