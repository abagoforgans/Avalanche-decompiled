contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 < arg2:
        revert with 'NH{q', 17
    if arg1 - arg2 > arg1:
        revert with 0, 'ds-math-sub-underflow'
    return (arg1 - arg2)
}

function add(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 < arg1:
        revert with 0, 'ds-math-add-overflow'
    return (arg1 + arg2)
}

function mul(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        return 0
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg1 * arg2 / arg2 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    return (arg1 * arg2)
}

function sqrt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 3:
        if not arg1:
            return 0
        return 1
    if arg1 / 2 > -2:
        revert with 'NH{q', 17
    s = (arg1 / 2) + 1
    t = arg1
    while s < t:
        if not s:
            revert with 'NH{q', 18
        if arg1 / s > -s - 1:
            revert with 'NH{q', 17
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        return address(arg1), arg2
    if not arg2:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(arg2), arg1
}

function sub_7cbf2149(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (256 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 256
        _591 = mem[64]
        if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 256
        require cd[s] == address(cd[s])
        mem[_591] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_591 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_591 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_591 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_591 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_591 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == address(cd[(s + 192)])
        mem[_591 + 192] = cd[(s + 192)]
        require cd[(s + 224)] == cd[(s + 224)]
        mem[_591 + 224] = cd[(s + 224)]
        mem[t] = _591
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    _590 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _592 = mem[64]
    mem[mem[64]] = mem[96]
    if not _590:
        if mem[96] > test266151307():
            revert with 'NH{q', 65
        mem[mem[64] + (32 * _590) + 32] = mem[96]
        mem[64] = mem[64] + (32 * _590) + (32 * mem[96]) + 64
        if not mem[96]:
            _1185 = mem[96]
            idx = 0
            s = stor0
            while idx < _1185:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * idx) + 128] + 172 len 20] == mem[mem[(32 * idx) + 128] + 204 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[mem[(32 * idx) + 128] + 172 len 20] < mem[mem[(32 * idx) + 128] + 204 len 20]:
                    if not mem[mem[(32 * idx) + 128] + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if address(s) != mem[mem[(32 * idx) + 128] + 172 len 20]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[_592]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _592 + 32] = mem[mem[(32 * idx) + 128] + 96]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[_592 + (32 * _590) + 32]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _592 + (32 * _590) + 64] = mem[mem[(32 * idx) + 128] + 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        _1185 = mem[96]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + 128] + 160]
                        continue 
                else:
                    if not mem[mem[(32 * idx) + 128] + 204 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if address(s) != mem[mem[(32 * idx) + 128] + 204 len 20]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[_592]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _592 + 32] = mem[mem[(32 * idx) + 128] + 96]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[_592 + (32 * _590) + 32]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _592 + (32 * _590) + 64] = mem[mem[(32 * idx) + 128] + 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        _1185 = mem[96]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + 128] + 160]
                        continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[_592]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _592 + 32] = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[_592 + (32 * _590) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _592 + (32 * _590) + 64] = mem[mem[(32 * idx) + 128] + 96]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                _1185 = mem[96]
                idx = idx + 1
                s = mem[mem[(32 * idx) + 128] + 192]
                continue 
            if 0 >= mem[_592]:
                revert with 'NH{q', 50
            if 0 >= mem[_592 + (32 * _590) + 32]:
                revert with 'NH{q', 50
            if var169003 < 1:
                revert with 'NH{q', 17
            if var173002 < var173001:
                if var185003 > -2:
                    revert with 'NH{q', 17
                idx = var187002 + 1
                s = var187007
                t = var187008
                u = var187009
                v = var187011
                v = var187012
                while idx < mem[_592]:
                    if u > -2:
                        revert with 'NH{q', 17
                    if u + 1 >= mem[_592 + (32 * _590) + 32]:
                        revert with 'NH{q', 50
                    if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + _592 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if t > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * t and mem[(32 * idx) + _592 + 32] > -1 / 10000 * t:
                        revert with 'NH{q', 17
                    if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + _592 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                        revert with 'NH{q', 17
                    if 9970 * s and mem[(32 * u + 1) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                        revert with 'NH{q', 17
                    if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if u == -1:
                        revert with 'NH{q', 17
                    if mem[_592] < 1:
                        revert with 'NH{q', 17
                    if u + 1 < mem[_592] - 1:
                        if u + 1 > -2:
                            revert with 'NH{q', 17
                        idx = u + 2
                        s = 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                        t = 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                        u = u + 1
                        v = 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                        v = 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                        continue 
                    if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 9970 > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if 9970 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 10000 > -1 / 9970 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) <= 3:
                        if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        if not 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                            if 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 0:
                                if 0 < 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                                    revert with 'NH{q', 17
                                # nil
                            else:
                                mem[mem[64]] = 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / 9970
                                mem[mem[64] + 64] = 0
                                return mem[mem[64]], 0, 0
                        else:
                            if 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 1:
                                if 1 < 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                                    revert with 'NH{q', 17
                                # nil
                            else:
                                mem[mem[64]] = (10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)) - 1 / 9970
                                mem[mem[64] + 64] = 0
                                return mem[mem[64]], 0, 0
                    else:
                        if 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / 2 > -2:
                            revert with 'NH{q', 17
                        v = (99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / 2) + 1
                        w = 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                        while v < w:
                            if not v:
                                revert with 'NH{q', 18
                            if 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / v > -v - 1:
                                revert with 'NH{q', 17
                            v = (99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / v) + v / 2
                            w = v
                            continue 
                        if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        if 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < w:
                            if w < 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                                revert with 'NH{q', 17
                            # nil
                        else:
                            mem[mem[64]] = (10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)) - w / 9970
                            mem[mem[64] + 64] = 0
                            return mem[mem[64]], 0, 0
                revert with 'NH{q', 50
            if var173005 and var173004 > -1 / var173005:
                revert with 'NH{q', 17
            if var173005 * var173004 and 9970 > -1 / var173005 * var173004:
                revert with 'NH{q', 17
            if 9970 * var173005 * var173004 and 10000 > -1 / 9970 * var173005 * var173004:
                revert with 'NH{q', 17
            if 99700000 * var173005 * var173004 <= 3:
                if var173005 and 10000 > -1 / var173005:
                    revert with 'NH{q', 17
                if not 99700000 * var173005 * var173004:
                    if 10000 * var173005 >= 0:
                        return 10000 * var173005 / 9970, 0, 0
                    if 0 < 10000 * var173005:
                        revert with 'NH{q', 17
                    idx = 0
                    s = -10000 * var173005 / 9970
                    while idx < mem[_592]:
                        if idx >= mem[_592]:
                            revert with 'NH{q', 50
                        if idx >= mem[_592 + (32 * _590) + 32]:
                            revert with 'NH{q', 50
                        if s <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[(32 * idx) + _592 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * idx) + _592 + (32 * _590) + 64] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if s and 9970 > -1 / s:
                            revert with 'NH{q', 17
                        if 9970 * s / 9970 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                            if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                                revert with 'NH{q', 17
                            if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                                revert with 'NH{q', 18
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                            continue 
                        if 9970 * s and mem[(32 * idx) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                            revert with 'NH{q', 17
                        if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                            revert with 'NH{q', 18
                        if 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / mem[(32 * idx) + _592 + (32 * _590) + 64] != 9970 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                            revert with 'NH{q', 17
                        if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                            revert with 'NH{q', 18
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                        continue 
                    if s < -10000 * var173005 / 9970:
                        revert with 'NH{q', 17
                    return -10000 * var173005 / 9970, s, s - (-10000 * var173005 / 9970)
                if 10000 * var173005 >= 1:
                    return (10000 * var173005) - 1 / 9970, 0, 0
                if 1 < 10000 * var173005:
                    revert with 'NH{q', 17
                idx = 0
                s = (-10000 * var173005) + 1 / 9970
                while idx < mem[_592]:
                    if idx >= mem[_592]:
                        revert with 'NH{q', 50
                    if idx >= mem[_592 + (32 * _590) + 32]:
                        revert with 'NH{q', 50
                    if s <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if mem[(32 * idx) + _592 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[(32 * idx) + _592 + (32 * _590) + 64] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if s and 9970 > -1 / s:
                        revert with 'NH{q', 17
                    if 9970 * s / 9970 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                        if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                            revert with 'NH{q', 17
                        if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                            revert with 'NH{q', 18
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                        continue 
                    if 9970 * s and mem[(32 * idx) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                        revert with 'NH{q', 18
                    if 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / mem[(32 * idx) + _592 + (32 * _590) + 64] != 9970 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    continue 
                if s < (-10000 * var173005) + 1 / 9970:
                    revert with 'NH{q', 17
                return (-10000 * var173005) + 1 / 9970, s, s - ((-10000 * var173005) + 1 / 9970)
            if 99700000 * var173005 * var173004 / 2 > -2:
                revert with 'NH{q', 17
            s = (99700000 * var173005 * var173004 / 2) + 1
            t = 99700000 * var173005 * var173004
            while s < t:
                if not s:
                    revert with 'NH{q', 18
                if 99700000 * var173005 * var173004 / s > -s - 1:
                    revert with 'NH{q', 17
                s = (99700000 * var173005 * var173004 / s) + s / 2
                t = s
                continue 
            if var173005 and 10000 > -1 / var173005:
                revert with 'NH{q', 17
            if 10000 * var173005 >= t:
                return (10000 * var173005) - t / 9970, 0, 0
            if t < 10000 * var173005:
                revert with 'NH{q', 17
            idx = 0
            s = t - (10000 * var173005) / 9970
            while idx < mem[_592]:
                if idx >= mem[_592]:
                    revert with 'NH{q', 50
                if idx >= mem[_592 + (32 * _590) + 32]:
                    revert with 'NH{q', 50
                if s <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if mem[(32 * idx) + _592 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if mem[(32 * idx) + _592 + (32 * _590) + 64] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if s and 9970 > -1 / s:
                    revert with 'NH{q', 17
                if 9970 * s / 9970 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                    if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    continue 
                if 9970 * s and mem[(32 * idx) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                    revert with 'NH{q', 18
                if 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / mem[(32 * idx) + _592 + (32 * _590) + 64] != 9970 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                continue 
            if s < t - (10000 * var173005) / 9970:
                revert with 'NH{q', 17
            return t - (10000 * var173005) / 9970, s, s - (t - (10000 * var173005) / 9970)
        mem[_592 + (32 * _590) + 64 len 32 * mem[96]] = call.data[calldata.size len 32 * mem[96]]
        _1186 = mem[96]
        idx = 0
        s = stor0
        while idx < _1186:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128] + 172 len 20] == mem[mem[(32 * idx) + 128] + 204 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[mem[(32 * idx) + 128] + 172 len 20] < mem[mem[(32 * idx) + 128] + 204 len 20]:
                if not mem[mem[(32 * idx) + 128] + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(s) != mem[mem[(32 * idx) + 128] + 172 len 20]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_592]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _592 + 32] = mem[mem[(32 * idx) + 128] + 96]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_592 + (32 * _590) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _592 + (32 * _590) + 64] = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    _1186 = mem[96]
                    idx = idx + 1
                    s = mem[mem[(32 * idx) + 128] + 160]
                    continue 
            else:
                if not mem[mem[(32 * idx) + 128] + 204 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(s) != mem[mem[(32 * idx) + 128] + 204 len 20]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_592]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _592 + 32] = mem[mem[(32 * idx) + 128] + 96]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_592 + (32 * _590) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _592 + (32 * _590) + 64] = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    _1186 = mem[96]
                    idx = idx + 1
                    s = mem[mem[(32 * idx) + 128] + 160]
                    continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[_592]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _592 + 32] = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[_592 + (32 * _590) + 32]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _592 + (32 * _590) + 64] = mem[mem[(32 * idx) + 128] + 96]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            _1186 = mem[96]
            idx = idx + 1
            s = mem[mem[(32 * idx) + 128] + 192]
            continue 
        if 0 >= mem[_592]:
            revert with 'NH{q', 50
        if 0 >= mem[_592 + (32 * _590) + 32]:
            revert with 'NH{q', 50
        if var170003 < 1:
            revert with 'NH{q', 17
        if var174002 < var174001:
            if var186003 > -2:
                revert with 'NH{q', 17
            idx = var188002 + 1
            s = var188007
            t = var188008
            u = var188009
            v = var188011
            v = var188012
            while idx < mem[_592]:
                if u > -2:
                    revert with 'NH{q', 17
                if u + 1 >= mem[_592 + (32 * _590) + 32]:
                    revert with 'NH{q', 50
                if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + _592 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if t > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * t and mem[(32 * idx) + _592 + 32] > -1 / 10000 * t:
                    revert with 'NH{q', 17
                if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + _592 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if 9970 * s and mem[(32 * u + 1) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                    revert with 'NH{q', 17
                if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if u == -1:
                    revert with 'NH{q', 17
                if mem[_592] < 1:
                    revert with 'NH{q', 17
                if u + 1 < mem[_592] - 1:
                    if u + 1 > -2:
                        revert with 'NH{q', 17
                    idx = u + 2
                    s = 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    t = 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    u = u + 1
                    v = 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    v = 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    continue 
                if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 9970 > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 9970 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 10000 > -1 / 9970 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) <= 3:
                    if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if not 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        if 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 0:
                            if 0 < 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                                revert with 'NH{q', 17
                            # nil
                        else:
                            mem[mem[64]] = 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / 9970
                            mem[mem[64] + 64] = 0
                            return mem[mem[64]], 0, 0
                    else:
                        if 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 1:
                            if 1 < 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                                revert with 'NH{q', 17
                            # nil
                        else:
                            mem[mem[64]] = (10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)) - 1 / 9970
                            mem[mem[64] + 64] = 0
                            return mem[mem[64]], 0, 0
                else:
                    if 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / 2 > -2:
                        revert with 'NH{q', 17
                    v = (99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / 2) + 1
                    w = 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    while v < w:
                        if not v:
                            revert with 'NH{q', 18
                        if 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / v > -v - 1:
                            revert with 'NH{q', 17
                        v = (99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / v) + v / 2
                        w = v
                        continue 
                    if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < w:
                        if w < 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        # nil
                    else:
                        mem[mem[64]] = (10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)) - w / 9970
                        mem[mem[64] + 64] = 0
                        return mem[mem[64]], 0, 0
            revert with 'NH{q', 50
        if var174005 and var174004 > -1 / var174005:
            revert with 'NH{q', 17
        if var174005 * var174004 and 9970 > -1 / var174005 * var174004:
            revert with 'NH{q', 17
        if 9970 * var174005 * var174004 and 10000 > -1 / 9970 * var174005 * var174004:
            revert with 'NH{q', 17
        if 99700000 * var174005 * var174004 <= 3:
            if var174005 and 10000 > -1 / var174005:
                revert with 'NH{q', 17
            if not 99700000 * var174005 * var174004:
                if 10000 * var174005 >= 0:
                    return 10000 * var174005 / 9970, 0, 0
                if 0 < 10000 * var174005:
                    revert with 'NH{q', 17
                idx = 0
                s = -10000 * var174005 / 9970
                while idx < mem[_592]:
                    if idx >= mem[_592]:
                        revert with 'NH{q', 50
                    if idx >= mem[_592 + (32 * _590) + 32]:
                        revert with 'NH{q', 50
                    if s <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if mem[(32 * idx) + _592 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[(32 * idx) + _592 + (32 * _590) + 64] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if s and 9970 > -1 / s:
                        revert with 'NH{q', 17
                    if 9970 * s / 9970 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                        if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                            revert with 'NH{q', 17
                        if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                            revert with 'NH{q', 18
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                        continue 
                    if 9970 * s and mem[(32 * idx) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                        revert with 'NH{q', 18
                    if 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / mem[(32 * idx) + _592 + (32 * _590) + 64] != 9970 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    continue 
                if s < -10000 * var174005 / 9970:
                    revert with 'NH{q', 17
                return -10000 * var174005 / 9970, s, s - (-10000 * var174005 / 9970)
            if 10000 * var174005 >= 1:
                return (10000 * var174005) - 1 / 9970, 0, 0
            if 1 < 10000 * var174005:
                revert with 'NH{q', 17
            idx = 0
            s = (-10000 * var174005) + 1 / 9970
            while idx < mem[_592]:
                if idx >= mem[_592]:
                    revert with 'NH{q', 50
                if idx >= mem[_592 + (32 * _590) + 32]:
                    revert with 'NH{q', 50
                if s <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if mem[(32 * idx) + _592 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if mem[(32 * idx) + _592 + (32 * _590) + 64] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if s and 9970 > -1 / s:
                    revert with 'NH{q', 17
                if 9970 * s / 9970 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                    if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    continue 
                if 9970 * s and mem[(32 * idx) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                    revert with 'NH{q', 18
                if 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / mem[(32 * idx) + _592 + (32 * _590) + 64] != 9970 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                continue 
            if s < (-10000 * var174005) + 1 / 9970:
                revert with 'NH{q', 17
            return (-10000 * var174005) + 1 / 9970, s, s - ((-10000 * var174005) + 1 / 9970)
        if 99700000 * var174005 * var174004 / 2 > -2:
            revert with 'NH{q', 17
        s = (99700000 * var174005 * var174004 / 2) + 1
        t = 99700000 * var174005 * var174004
        while s < t:
            if not s:
                revert with 'NH{q', 18
            if 99700000 * var174005 * var174004 / s > -s - 1:
                revert with 'NH{q', 17
            s = (99700000 * var174005 * var174004 / s) + s / 2
            t = s
            continue 
        if var174005 and 10000 > -1 / var174005:
            revert with 'NH{q', 17
        if 10000 * var174005 >= t:
            return (10000 * var174005) - t / 9970, 0, 0
        if t < 10000 * var174005:
            revert with 'NH{q', 17
        idx = 0
        s = t - (10000 * var174005) / 9970
        while idx < mem[_592]:
            if idx >= mem[_592]:
                revert with 'NH{q', 50
            if idx >= mem[_592 + (32 * _590) + 32]:
                revert with 'NH{q', 50
            if s <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if mem[(32 * idx) + _592 + 32] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[(32 * idx) + _592 + (32 * _590) + 64] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if s and 9970 > -1 / s:
                revert with 'NH{q', 17
            if 9970 * s / 9970 != s:
                revert with 0, 'ds-math-mul-overflow'
            if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                continue 
            if 9970 * s and mem[(32 * idx) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                revert with 'NH{q', 17
            if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                revert with 'NH{q', 18
            if 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / mem[(32 * idx) + _592 + (32 * _590) + 64] != 9970 * s:
                revert with 0, 'ds-math-mul-overflow'
            if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                revert with 0, 'ds-math-mul-overflow'
            if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                revert with 0, 'ds-math-add-overflow'
            if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
            continue 
        if s < t - (10000 * var174005) / 9970:
            revert with 'NH{q', 17
        return t - (10000 * var174005) / 9970, s, s - (t - (10000 * var174005) / 9970)
    mem[mem[64] + 32 len 32 * _590] = call.data[calldata.size len 32 * _590]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    mem[mem[64] + (32 * _590) + 32] = mem[96]
    mem[64] = mem[64] + (32 * _590) + (32 * mem[96]) + 64
    if not mem[96]:
        _1187 = mem[96]
        idx = 0
        s = stor0
        while idx < _1187:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128] + 172 len 20] == mem[mem[(32 * idx) + 128] + 204 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[mem[(32 * idx) + 128] + 172 len 20] < mem[mem[(32 * idx) + 128] + 204 len 20]:
                if not mem[mem[(32 * idx) + 128] + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(s) != mem[mem[(32 * idx) + 128] + 172 len 20]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_592]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _592 + 32] = mem[mem[(32 * idx) + 128] + 96]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_592 + (32 * _590) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _592 + (32 * _590) + 64] = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    _1187 = mem[96]
                    idx = idx + 1
                    s = mem[mem[(32 * idx) + 128] + 160]
                    continue 
            else:
                if not mem[mem[(32 * idx) + 128] + 204 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(s) != mem[mem[(32 * idx) + 128] + 204 len 20]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_592]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _592 + 32] = mem[mem[(32 * idx) + 128] + 96]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_592 + (32 * _590) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _592 + (32 * _590) + 64] = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    _1187 = mem[96]
                    idx = idx + 1
                    s = mem[mem[(32 * idx) + 128] + 160]
                    continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[_592]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _592 + 32] = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[_592 + (32 * _590) + 32]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _592 + (32 * _590) + 64] = mem[mem[(32 * idx) + 128] + 96]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            _1187 = mem[96]
            idx = idx + 1
            s = mem[mem[(32 * idx) + 128] + 192]
            continue 
        if 0 >= mem[_592]:
            revert with 'NH{q', 50
        if 0 >= mem[_592 + (32 * _590) + 32]:
            revert with 'NH{q', 50
        if var170003 < 1:
            revert with 'NH{q', 17
        if var174002 < var174001:
            if var186003 > -2:
                revert with 'NH{q', 17
            idx = var188002 + 1
            s = var188007
            t = var188008
            u = var188009
            v = var188011
            v = var188012
            while idx < mem[_592]:
                if u > -2:
                    revert with 'NH{q', 17
                if u + 1 >= mem[_592 + (32 * _590) + 32]:
                    revert with 'NH{q', 50
                if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + _592 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if t > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * t and mem[(32 * idx) + _592 + 32] > -1 / 10000 * t:
                    revert with 'NH{q', 17
                if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + _592 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if 9970 * s and mem[(32 * u + 1) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                    revert with 'NH{q', 17
                if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if u == -1:
                    revert with 'NH{q', 17
                if mem[_592] < 1:
                    revert with 'NH{q', 17
                if u + 1 < mem[_592] - 1:
                    if u + 1 > -2:
                        revert with 'NH{q', 17
                    idx = u + 2
                    s = 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    t = 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    u = u + 1
                    v = 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    v = 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    continue 
                if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 9970 > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 9970 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 10000 > -1 / 9970 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) <= 3:
                    if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if not 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        if 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 0:
                            if 0 < 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                                revert with 'NH{q', 17
                            # nil
                        else:
                            mem[mem[64]] = 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / 9970
                            mem[mem[64] + 64] = 0
                            return mem[mem[64]], 0, 0
                    else:
                        if 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 1:
                            if 1 < 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                                revert with 'NH{q', 17
                            # nil
                        else:
                            mem[mem[64]] = (10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)) - 1 / 9970
                            mem[mem[64] + 64] = 0
                            return mem[mem[64]], 0, 0
                else:
                    if 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / 2 > -2:
                        revert with 'NH{q', 17
                    v = (99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / 2) + 1
                    w = 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    while v < w:
                        if not v:
                            revert with 'NH{q', 18
                        if 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / v > -v - 1:
                            revert with 'NH{q', 17
                        v = (99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / v) + v / 2
                        w = v
                        continue 
                    if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < w:
                        if w < 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        # nil
                    else:
                        mem[mem[64]] = (10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)) - w / 9970
                        mem[mem[64] + 64] = 0
                        return mem[mem[64]], 0, 0
            revert with 'NH{q', 50
        if var174005 and var174004 > -1 / var174005:
            revert with 'NH{q', 17
        if var174005 * var174004 and 9970 > -1 / var174005 * var174004:
            revert with 'NH{q', 17
        if 9970 * var174005 * var174004 and 10000 > -1 / 9970 * var174005 * var174004:
            revert with 'NH{q', 17
        if 99700000 * var174005 * var174004 <= 3:
            if var174005 and 10000 > -1 / var174005:
                revert with 'NH{q', 17
            if not 99700000 * var174005 * var174004:
                if 10000 * var174005 >= 0:
                    return 10000 * var174005 / 9970, 0, 0
                if 0 < 10000 * var174005:
                    revert with 'NH{q', 17
                idx = 0
                s = -10000 * var174005 / 9970
                while idx < mem[_592]:
                    if idx >= mem[_592]:
                        revert with 'NH{q', 50
                    if idx >= mem[_592 + (32 * _590) + 32]:
                        revert with 'NH{q', 50
                    if s <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if mem[(32 * idx) + _592 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[(32 * idx) + _592 + (32 * _590) + 64] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if s and 9970 > -1 / s:
                        revert with 'NH{q', 17
                    if 9970 * s / 9970 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                        if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                            revert with 'NH{q', 17
                        if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                            revert with 'NH{q', 18
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                        continue 
                    if 9970 * s and mem[(32 * idx) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                        revert with 'NH{q', 18
                    if 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / mem[(32 * idx) + _592 + (32 * _590) + 64] != 9970 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    continue 
                if s < -10000 * var174005 / 9970:
                    revert with 'NH{q', 17
                return -10000 * var174005 / 9970, s, s - (-10000 * var174005 / 9970)
            if 10000 * var174005 >= 1:
                return (10000 * var174005) - 1 / 9970, 0, 0
            if 1 < 10000 * var174005:
                revert with 'NH{q', 17
            idx = 0
            s = (-10000 * var174005) + 1 / 9970
            while idx < mem[_592]:
                if idx >= mem[_592]:
                    revert with 'NH{q', 50
                if idx >= mem[_592 + (32 * _590) + 32]:
                    revert with 'NH{q', 50
                if s <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if mem[(32 * idx) + _592 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if mem[(32 * idx) + _592 + (32 * _590) + 64] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if s and 9970 > -1 / s:
                    revert with 'NH{q', 17
                if 9970 * s / 9970 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                    if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    continue 
                if 9970 * s and mem[(32 * idx) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                    revert with 'NH{q', 18
                if 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / mem[(32 * idx) + _592 + (32 * _590) + 64] != 9970 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                continue 
            if s < (-10000 * var174005) + 1 / 9970:
                revert with 'NH{q', 17
            return (-10000 * var174005) + 1 / 9970, s, s - ((-10000 * var174005) + 1 / 9970)
        if 99700000 * var174005 * var174004 / 2 > -2:
            revert with 'NH{q', 17
        s = (99700000 * var174005 * var174004 / 2) + 1
        t = 99700000 * var174005 * var174004
        while s < t:
            if not s:
                revert with 'NH{q', 18
            if 99700000 * var174005 * var174004 / s > -s - 1:
                revert with 'NH{q', 17
            s = (99700000 * var174005 * var174004 / s) + s / 2
            t = s
            continue 
        if var174005 and 10000 > -1 / var174005:
            revert with 'NH{q', 17
        if 10000 * var174005 >= t:
            return (10000 * var174005) - t / 9970, 0, 0
        if t < 10000 * var174005:
            revert with 'NH{q', 17
        idx = 0
        s = t - (10000 * var174005) / 9970
        while idx < mem[_592]:
            if idx >= mem[_592]:
                revert with 'NH{q', 50
            if idx >= mem[_592 + (32 * _590) + 32]:
                revert with 'NH{q', 50
            if s <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if mem[(32 * idx) + _592 + 32] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[(32 * idx) + _592 + (32 * _590) + 64] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if s and 9970 > -1 / s:
                revert with 'NH{q', 17
            if 9970 * s / 9970 != s:
                revert with 0, 'ds-math-mul-overflow'
            if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                continue 
            if 9970 * s and mem[(32 * idx) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                revert with 'NH{q', 17
            if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                revert with 'NH{q', 18
            if 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / mem[(32 * idx) + _592 + (32 * _590) + 64] != 9970 * s:
                revert with 0, 'ds-math-mul-overflow'
            if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                revert with 0, 'ds-math-mul-overflow'
            if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                revert with 0, 'ds-math-add-overflow'
            if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
            continue 
        if s < t - (10000 * var174005) / 9970:
            revert with 'NH{q', 17
        return t - (10000 * var174005) / 9970, s, s - (t - (10000 * var174005) / 9970)
    mem[_592 + (32 * _590) + 64 len 32 * mem[96]] = call.data[calldata.size len 32 * mem[96]]
    _1188 = mem[96]
    idx = 0
    s = stor0
    while idx < _1188:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + 128] + 172 len 20] == mem[mem[(32 * idx) + 128] + 204 len 20]:
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if mem[mem[(32 * idx) + 128] + 172 len 20] < mem[mem[(32 * idx) + 128] + 204 len 20]:
            if not mem[mem[(32 * idx) + 128] + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if address(s) != mem[mem[(32 * idx) + 128] + 172 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[_592]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _592 + 32] = mem[mem[(32 * idx) + 128] + 96]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[_592 + (32 * _590) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _592 + (32 * _590) + 64] = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                _1188 = mem[96]
                idx = idx + 1
                s = mem[mem[(32 * idx) + 128] + 160]
                continue 
        else:
            if not mem[mem[(32 * idx) + 128] + 204 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if address(s) != mem[mem[(32 * idx) + 128] + 204 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[_592]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _592 + 32] = mem[mem[(32 * idx) + 128] + 96]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[_592 + (32 * _590) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _592 + (32 * _590) + 64] = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                _1188 = mem[96]
                idx = idx + 1
                s = mem[mem[(32 * idx) + 128] + 160]
                continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[_592]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _592 + 32] = mem[mem[(32 * idx) + 128] + 64]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[_592 + (32 * _590) + 32]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _592 + (32 * _590) + 64] = mem[mem[(32 * idx) + 128] + 96]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        _1188 = mem[96]
        idx = idx + 1
        s = mem[mem[(32 * idx) + 128] + 192]
        continue 
    if 0 >= mem[_592]:
        revert with 'NH{q', 50
    if 0 >= mem[_592 + (32 * _590) + 32]:
        revert with 'NH{q', 50
    if var171003 < 1:
        revert with 'NH{q', 17
    if var175002 < var175001:
        if var187003 > -2:
            revert with 'NH{q', 17
        idx = var189002 + 1
        s = var189007
        t = var189008
        u = var189009
        v = var189011
        v = var189012
        while idx < mem[_592]:
            if u > -2:
                revert with 'NH{q', 17
            if u + 1 >= mem[_592 + (32 * _590) + 32]:
                revert with 'NH{q', 50
            if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                revert with 'NH{q', 17
            if mem[(32 * idx) + _592 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if t > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * t and mem[(32 * idx) + _592 + 32] > -1 / 10000 * t:
                revert with 'NH{q', 17
            if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                revert with 'NH{q', 18
            if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                revert with 'NH{q', 17
            if mem[(32 * idx) + _592 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                revert with 'NH{q', 17
            if 9970 * s and mem[(32 * u + 1) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                revert with 'NH{q', 17
            if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                revert with 'NH{q', 18
            if u == -1:
                revert with 'NH{q', 17
            if mem[_592] < 1:
                revert with 'NH{q', 17
            if u + 1 < mem[_592] - 1:
                if u + 1 > -2:
                    revert with 'NH{q', 17
                idx = u + 2
                s = 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                t = 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                u = u + 1
                v = 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                v = 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                continue 
            if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                revert with 'NH{q', 17
            if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 9970 > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                revert with 'NH{q', 17
            if 9970 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 10000 > -1 / 9970 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                revert with 'NH{q', 17
            if 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) <= 3:
                if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if not 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    if 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 0:
                        if 0 < 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        # nil
                    else:
                        mem[mem[64]] = 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / 9970
                        mem[mem[64] + 64] = 0
                        return mem[mem[64]], 0, 0
                else:
                    if 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 1:
                        if 1 < 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        # nil
                    else:
                        mem[mem[64]] = (10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)) - 1 / 9970
                        mem[mem[64] + 64] = 0
                        return mem[mem[64]], 0, 0
            else:
                if 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / 2 > -2:
                    revert with 'NH{q', 17
                v = (99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / 2) + 1
                w = 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                while v < w:
                    if not v:
                        revert with 'NH{q', 18
                    if 99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / v > -v - 1:
                        revert with 'NH{q', 17
                    v = (99700000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) / v) + v / 2
                    w = v
                    continue 
                if 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < w:
                    if w < 10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    # nil
                else:
                    mem[mem[64]] = (10000 * 10000 * t * mem[(32 * idx) + _592 + 32] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)) - w / 9970
                    mem[mem[64] + 64] = 0
                    return mem[mem[64]], 0, 0
        revert with 'NH{q', 50
    if var175005 and var175004 > -1 / var175005:
        revert with 'NH{q', 17
    if var175005 * var175004 and 9970 > -1 / var175005 * var175004:
        revert with 'NH{q', 17
    if 9970 * var175005 * var175004 and 10000 > -1 / 9970 * var175005 * var175004:
        revert with 'NH{q', 17
    if 99700000 * var175005 * var175004 <= 3:
        if var175005 and 10000 > -1 / var175005:
            revert with 'NH{q', 17
        if not 99700000 * var175005 * var175004:
            if 10000 * var175005 >= 0:
                return 10000 * var175005 / 9970, 0, 0
            if 0 < 10000 * var175005:
                revert with 'NH{q', 17
            idx = 0
            s = -10000 * var175005 / 9970
            while idx < mem[_592]:
                if idx >= mem[_592]:
                    revert with 'NH{q', 50
                if idx >= mem[_592 + (32 * _590) + 32]:
                    revert with 'NH{q', 50
                if s <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if mem[(32 * idx) + _592 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if mem[(32 * idx) + _592 + (32 * _590) + 64] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if s and 9970 > -1 / s:
                    revert with 'NH{q', 17
                if 9970 * s / 9970 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                    if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                    continue 
                if 9970 * s and mem[(32 * idx) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                    revert with 'NH{q', 18
                if 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / mem[(32 * idx) + _592 + (32 * _590) + 64] != 9970 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                continue 
            if s < -10000 * var175005 / 9970:
                revert with 'NH{q', 17
            return -10000 * var175005 / 9970, s, s - (-10000 * var175005 / 9970)
        if 10000 * var175005 >= 1:
            return (10000 * var175005) - 1 / 9970, 0, 0
        if 1 < 10000 * var175005:
            revert with 'NH{q', 17
        idx = 0
        s = (-10000 * var175005) + 1 / 9970
        while idx < mem[_592]:
            if idx >= mem[_592]:
                revert with 'NH{q', 50
            if idx >= mem[_592 + (32 * _590) + 32]:
                revert with 'NH{q', 50
            if s <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if mem[(32 * idx) + _592 + 32] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[(32 * idx) + _592 + (32 * _590) + 64] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if s and 9970 > -1 / s:
                revert with 'NH{q', 17
            if 9970 * s / 9970 != s:
                revert with 0, 'ds-math-mul-overflow'
            if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
                continue 
            if 9970 * s and mem[(32 * idx) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
                revert with 'NH{q', 17
            if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
                revert with 'NH{q', 18
            if 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / mem[(32 * idx) + _592 + (32 * _590) + 64] != 9970 * s:
                revert with 0, 'ds-math-mul-overflow'
            if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                revert with 0, 'ds-math-mul-overflow'
            if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                revert with 0, 'ds-math-add-overflow'
            if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
            continue 
        if s < (-10000 * var175005) + 1 / 9970:
            revert with 'NH{q', 17
        return (-10000 * var175005) + 1 / 9970, s, s - ((-10000 * var175005) + 1 / 9970)
    if 99700000 * var175005 * var175004 / 2 > -2:
        revert with 'NH{q', 17
    s = (99700000 * var175005 * var175004 / 2) + 1
    t = 99700000 * var175005 * var175004
    while s < t:
        if not s:
            revert with 'NH{q', 18
        if 99700000 * var175005 * var175004 / s > -s - 1:
            revert with 'NH{q', 17
        s = (99700000 * var175005 * var175004 / s) + s / 2
        t = s
        continue 
    if var175005 and 10000 > -1 / var175005:
        revert with 'NH{q', 17
    if 10000 * var175005 >= t:
        return (10000 * var175005) - t / 9970, 0, 0
    if t < 10000 * var175005:
        revert with 'NH{q', 17
    idx = 0
    s = t - (10000 * var175005) / 9970
    while idx < mem[_592]:
        if idx >= mem[_592]:
            revert with 'NH{q', 50
        if idx >= mem[_592 + (32 * _590) + 32]:
            revert with 'NH{q', 50
        if s <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if mem[(32 * idx) + _592 + 32] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if mem[(32 * idx) + _592 + (32 * _590) + 64] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if s and 9970 > -1 / s:
            revert with 'NH{q', 17
        if 9970 * s / 9970 != s:
            revert with 0, 'ds-math-mul-overflow'
        if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
            if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
                revert with 0, 'ds-math-mul-overflow'
            if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
                revert with 0, 'ds-math-add-overflow'
            if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 0 / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
            continue 
        if 9970 * s and mem[(32 * idx) + _592 + (32 * _590) + 64] > -1 / 9970 * s:
            revert with 'NH{q', 17
        if not mem[(32 * idx) + _592 + (32 * _590) + 64]:
            revert with 'NH{q', 18
        if 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / mem[(32 * idx) + _592 + (32 * _590) + 64] != 9970 * s:
            revert with 0, 'ds-math-mul-overflow'
        if mem[(32 * idx) + _592 + 32] and 10000 > -1 / mem[(32 * idx) + _592 + 32]:
            revert with 'NH{q', 17
        if 10000 * mem[(32 * idx) + _592 + 32] / 10000 != mem[(32 * idx) + _592 + 32]:
            revert with 0, 'ds-math-mul-overflow'
        if 10000 * mem[(32 * idx) + _592 + 32] > (-9970 * s) - 1:
            revert with 'NH{q', 17
        if (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _592 + 32]:
            revert with 0, 'ds-math-add-overflow'
        if not (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s):
            revert with 'NH{q', 18
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = 9970 * s * mem[(32 * idx) + _592 + (32 * _590) + 64] / (10000 * mem[(32 * idx) + _592 + 32]) + (9970 * s)
        continue 
    if s < t - (10000 * var175005) / 9970:
        revert with 'NH{q', 17
    return t - (10000 * var175005) / 9970, s, s - (t - (10000 * var175005) / 9970)
}



}
