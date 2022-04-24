contract main {




// =====================  Runtime code  =====================


#
#  - sub_185f7d4d(?)
#  - sub_45c350e4(?)
#  - sub_9da78307(?)
#  - sub_aef022b8(?)
#
address stor0;

function _fallback() payable {
    revert
}

function sub_92e2ce22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^6, 10^12, 10^12
    if not ext_call.success:
        return 30, 0, 0, 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -101:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
        revert with 'NH{q', 17
    if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
        revert with 'NH{q', 17
    return -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 
           ext_call.return_data[0],
           ext_call.return_data[0] + 100,
           ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100
}

function sub_0d543d05(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[0] << 192, 
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           arg4,
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0])
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if 10000 < arg4:
        revert with 'NH{q', 17
    if not -arg4 + 10000:
        if arg3:
            if False and arg3 > 0:
                revert with 'NH{q', 17
            if not arg3:
                revert with 'NH{q', 18
            if 0 / arg3:
                revert with 0, 'ds-math-mul-overflow'
        if arg2 and 10000 > -1 / arg2:
            revert with 'NH{q', 17
        if 10000 * arg2 / 10000 != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if 10000 * arg2 > -1:
            revert with 'NH{q', 17
        if 10000 * arg2 < 10000 * arg2:
            revert with 0, 'ds-math-add-overflow'
        if not 10000 * arg2:
            revert with 'NH{q', 18
        return (0 / 10000 * arg2)
    if arg1 and -arg4 + 10000 > -1 / arg1:
        revert with 'NH{q', 17
    if not -arg4 + 10000:
        revert with 'NH{q', 18
    if (10000 * arg1) - (arg4 * arg1) / -arg4 + 10000 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    if not arg3:
        if arg2 and 10000 > -1 / arg2:
            revert with 'NH{q', 17
        if 10000 * arg2 / 10000 != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if 10000 * arg2 > (-10000 * arg1) + (arg4 * arg1) - 1:
            revert with 'NH{q', 17
        if (10000 * arg2) + (10000 * arg1) - (arg4 * arg1) < 10000 * arg2:
            revert with 0, 'ds-math-add-overflow'
        if not (10000 * arg2) + (10000 * arg1) - (arg4 * arg1):
            revert with 'NH{q', 18
        return (0 / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1))
    if (10000 * arg1) - (arg4 * arg1) and arg3 > -1 / (10000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 17
    if not arg3:
        revert with 'NH{q', 18
    if (10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / arg3 != (10000 * arg1) - (arg4 * arg1):
        revert with 0, 'ds-math-mul-overflow'
    if arg2 and 10000 > -1 / arg2:
        revert with 'NH{q', 17
    if 10000 * arg2 / 10000 != arg2:
        revert with 0, 'ds-math-mul-overflow'
    if 10000 * arg2 > (-10000 * arg1) + (arg4 * arg1) - 1:
        revert with 'NH{q', 17
    if (10000 * arg2) + (10000 * arg1) - (arg4 * arg1) < 10000 * arg2:
        revert with 0, 'ds-math-add-overflow'
    if not (10000 * arg2) + (10000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 18
    return ((10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1))
}

function sub_dc2c2564(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    idx = 0
    s = cd[4]
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if s <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if mem[(32 * idx) + floor32(('cd', 36).length) + 129] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if 10000 < cd[100]:
            revert with 'NH{q', 17
        if not -cd[100] + 10000:
            if mem[(32 * idx) + floor32(('cd', 36).length) + 129]:
                if False and mem[(32 * idx) + floor32(('cd', 36).length) + 129] > 0:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + floor32(('cd', 36).length) + 129]:
                    revert with 'NH{q', 18
                if 0 / mem[(32 * idx) + floor32(('cd', 36).length) + 129]:
                    revert with 0, 'ds-math-mul-overflow'
            if mem[(32 * idx) + 128] and 10000 > -1 / mem[(32 * idx) + 128]:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + 128] / 10000 != mem[(32 * idx) + 128]:
                revert with 0, 'ds-math-mul-overflow'
            if 10000 * mem[(32 * idx) + 128] > -1:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + 128] < 10000 * mem[(32 * idx) + 128]:
                revert with 0, 'ds-math-add-overflow'
            if not 10000 * mem[(32 * idx) + 128]:
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 0 / 10000 * mem[(32 * idx) + 128]
            continue 
        if s and -cd[100] + 10000 > -1 / s:
            revert with 'NH{q', 17
        if not -cd[100] + 10000:
            revert with 'NH{q', 18
        if (10000 * s) - (cd[100] * s) / -cd[100] + 10000 != s:
            revert with 0, 'ds-math-mul-overflow'
        if not mem[(32 * idx) + floor32(('cd', 36).length) + 129]:
            if mem[(32 * idx) + 128] and 10000 > -1 / mem[(32 * idx) + 128]:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + 128] / 10000 != mem[(32 * idx) + 128]:
                revert with 0, 'ds-math-mul-overflow'
            if 10000 * mem[(32 * idx) + 128] > (-10000 * s) + (cd[100] * s) - 1:
                revert with 'NH{q', 17
            if (10000 * mem[(32 * idx) + 128]) + (10000 * s) - (cd[100] * s) < 10000 * mem[(32 * idx) + 128]:
                revert with 0, 'ds-math-add-overflow'
            if not (10000 * mem[(32 * idx) + 128]) + (10000 * s) - (cd[100] * s):
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 0 / (10000 * mem[(32 * idx) + 128]) + (10000 * s) - (cd[100] * s)
            continue 
        if (10000 * s) - (cd[100] * s) and mem[(32 * idx) + floor32(('cd', 36).length) + 129] > -1 / (10000 * s) - (cd[100] * s):
            revert with 'NH{q', 17
        if not mem[(32 * idx) + floor32(('cd', 36).length) + 129]:
            revert with 'NH{q', 18
        if (10000 * s * mem[(32 * idx) + floor32(('cd', 36).length) + 129]) - (cd[100] * s * mem[(32 * idx) + floor32(('cd', 36).length) + 129]) / mem[(32 * idx) + floor32(('cd', 36).length) + 129] != (10000 * s) - (cd[100] * s):
            revert with 0, 'ds-math-mul-overflow'
        if mem[(32 * idx) + 128] and 10000 > -1 / mem[(32 * idx) + 128]:
            revert with 'NH{q', 17
        if 10000 * mem[(32 * idx) + 128] / 10000 != mem[(32 * idx) + 128]:
            revert with 0, 'ds-math-mul-overflow'
        if 10000 * mem[(32 * idx) + 128] > (-10000 * s) + (cd[100] * s) - 1:
            revert with 'NH{q', 17
        if (10000 * mem[(32 * idx) + 128]) + (10000 * s) - (cd[100] * s) < 10000 * mem[(32 * idx) + 128]:
            revert with 0, 'ds-math-add-overflow'
        if not (10000 * mem[(32 * idx) + 128]) + (10000 * s) - (cd[100] * s):
            revert with 'NH{q', 18
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = (10000 * s * mem[(32 * idx) + floor32(('cd', 36).length) + 129]) - (cd[100] * s * mem[(32 * idx) + floor32(('cd', 36).length) + 129]) / (10000 * mem[(32 * idx) + 128]) + (10000 * s) - (cd[100] * s)
        continue 
    return s
}

function sub_3dab7bea(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if var176003 < 1:
        revert with 'NH{q', 17
    if var180002 < var180001:
        if var192003 > -2:
            revert with 'NH{q', 17
        idx = var194002 + 1
        s = var194007
        t = var194008
        u = var194009
        v = var194011
        v = var194012
        while idx < ('cd', 4).length:
            if u > -2:
                revert with 'NH{q', 17
            if u + 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                revert with 'NH{q', 17
            if mem[(32 * idx) + 128] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + 128] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if t > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * t and mem[(32 * idx) + 128] > -1 / 10000 * t:
                revert with 'NH{q', 17
            if not (10000 * mem[(32 * idx) + 128]) + (9970 * s):
                revert with 'NH{q', 18
            if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                revert with 'NH{q', 17
            if mem[(32 * idx) + 128] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + 128] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                revert with 'NH{q', 17
            if 9970 * s and mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] > -1 / 9970 * s:
                revert with 'NH{q', 17
            if not (10000 * mem[(32 * idx) + 128]) + (9970 * s):
                revert with 'NH{q', 18
            if u == -1:
                revert with 'NH{q', 17
            if ('cd', 4).length < 1:
                revert with 'NH{q', 17
            if u + 1 < ('cd', 4).length - 1:
                if u + 1 > -2:
                    revert with 'NH{q', 17
                idx = u + 2
                s = 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s)
                t = 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s)
                u = u + 1
                v = 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s)
                v = 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s)
                continue 
            if 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) and 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) > -1 / 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s):
                revert with 'NH{q', 17
            if 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) and 9970 > -1 / 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s):
                revert with 'NH{q', 17
            if 9970 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) and 10000 > -1 / 9970 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s):
                revert with 'NH{q', 17
            if 99700000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) <= 3:
                if 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s):
                    revert with 'NH{q', 17
                if not 99700000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s):
                    if 10000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) > 0:
                        return 0
                    if 0 < 10000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s):
                        revert with 'NH{q', 17
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = -10000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) / 9970
                else:
                    if 10000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) > 1:
                        return 0
                    if 1 < 10000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s):
                        revert with 'NH{q', 17
                    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = (-10000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s)) + 1 / 9970
            else:
                if 99700000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) / 2 > -2:
                    revert with 'NH{q', 17
                v = (99700000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) / 2) + 1
                w = 99700000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s)
                while v < w:
                    if not v:
                        revert with 'NH{q', 18
                    if 99700000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) / v > -v - 1:
                        revert with 'NH{q', 17
                    v = (99700000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + floor32(('cd', 4).length) + 129] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) / v) + v / 2
                    w = v
                    continue 
                if 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s):
                    revert with 'NH{q', 17
                if 10000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s) > w:
                    return 0
                if w < 10000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s):
                    revert with 'NH{q', 17
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = w - (10000 * 10000 * t * mem[(32 * idx) + 128] / (10000 * mem[(32 * idx) + 128]) + (9970 * s)) / 9970
            return memory
              from floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98
               len 32
        revert with 'NH{q', 50
    if var180005 and var180004 > -1 / var180005:
        revert with 'NH{q', 17
    if var180005 * var180004 and 9970 > -1 / var180005 * var180004:
        revert with 'NH{q', 17
    if 9970 * var180005 * var180004 and 10000 > -1 / 9970 * var180005 * var180004:
        revert with 'NH{q', 17
    if 99700000 * var180005 * var180004 <= 3:
        if var180005 and 10000 > -1 / var180005:
            revert with 'NH{q', 17
        if not 99700000 * var180005 * var180004:
            if 10000 * var180005 > 0:
                return 0
            if 0 < 10000 * var180005:
                revert with 'NH{q', 17
            return (-10000 * var180005 / 9970)
        if 10000 * var180005 > 1:
            return 0
        if 1 < 10000 * var180005:
            revert with 'NH{q', 17
        return ((-10000 * var180005) + 1 / 9970)
    if 99700000 * var180005 * var180004 / 2 > -2:
        revert with 'NH{q', 17
    s = (99700000 * var180005 * var180004 / 2) + 1
    t = 99700000 * var180005 * var180004
    while s < t:
        if not s:
            revert with 'NH{q', 18
        if 99700000 * var180005 * var180004 / s > -s - 1:
            revert with 'NH{q', 17
        s = (99700000 * var180005 * var180004 / s) + s / 2
        t = s
        continue 
    if var180005 and 10000 > -1 / var180005:
        revert with 'NH{q', 17
    if 10000 * var180005 > t:
        return 0
    if t < 10000 * var180005:
        revert with 'NH{q', 17
    return (t - (10000 * var180005) / 9970)
}

function sub_6b6b2fe9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (192 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 192
        _618 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_618] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_618 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_618 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_618 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_618 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_618 + 160] = cd[(s + 160)]
        mem[t] = _618
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    _617 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _619 = mem[64]
    mem[mem[64]] = mem[96]
    if not _617:
        _620 = mem[96]
        if mem[96] > test266151307():
            revert with 'NH{q', 65
        mem[mem[64] + (32 * _617) + 32] = mem[96]
        mem[64] = _619 + (32 * _617) + (32 * _620) + 64
        if not _620:
            _1236 = mem[96]
            idx = 0
            s = stor0
            while idx < _1236:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * idx) + 128] + 140 len 20] == mem[mem[(32 * idx) + 128] + 172 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[mem[(32 * idx) + 128] + 140 len 20] < mem[mem[(32 * idx) + 128] + 172 len 20]:
                    if not mem[mem[(32 * idx) + 128] + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if address(s) != mem[mem[(32 * idx) + 128] + 140 len 20]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[_619]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _619 + 32] = mem[mem[(32 * idx) + 128] + 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[_619 + (32 * _617) + 32]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _619 + (32 * _617) + 64] = mem[mem[(32 * idx) + 128] + 32]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        _1236 = mem[96]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + 128] + 128]
                        continue 
                else:
                    if not mem[mem[(32 * idx) + 128] + 172 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if address(s) != mem[mem[(32 * idx) + 128] + 172 len 20]:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[_619]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _619 + 32] = mem[mem[(32 * idx) + 128] + 64]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[_619 + (32 * _617) + 32]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _619 + (32 * _617) + 64] = mem[mem[(32 * idx) + 128] + 32]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        _1236 = mem[96]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + 128] + 128]
                        continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[_619]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _619 + 32] = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[_619 + (32 * _617) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _619 + (32 * _617) + 64] = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                _1236 = mem[96]
                idx = idx + 1
                s = mem[mem[(32 * idx) + 128] + 160]
                continue 
            if 0 >= mem[_619]:
                revert with 'NH{q', 50
            if 0 >= mem[_619 + (32 * _617) + 32]:
                revert with 'NH{q', 50
            if var162003 < 1:
                revert with 'NH{q', 17
            if var166002 < var166001:
                if var178003 > -2:
                    revert with 'NH{q', 17
                idx = var180002 + 1
                s = var180007
                t = var180008
                u = var180009
                v = var180011
                v = var180012
                while idx < mem[_619]:
                    if u > -2:
                        revert with 'NH{q', 17
                    if u + 1 >= mem[_619 + (32 * _617) + 32]:
                        revert with 'NH{q', 50
                    if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + _619 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if t > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * t and mem[(32 * idx) + _619 + 32] > -1 / 10000 * t:
                        revert with 'NH{q', 17
                    if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                        revert with 'NH{q', 17
                    if mem[(32 * idx) + _619 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                        revert with 'NH{q', 17
                    if 9970 * s and mem[(32 * u + 1) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                        revert with 'NH{q', 17
                    if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if u == -1:
                        revert with 'NH{q', 17
                    if mem[_619] < 1:
                        revert with 'NH{q', 17
                    if u + 1 < mem[_619] - 1:
                        if u + 1 > -2:
                            revert with 'NH{q', 17
                        idx = u + 2
                        s = 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                        t = 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                        u = u + 1
                        v = 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                        v = 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                        continue 
                    if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 9970 > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if 9970 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 10000 > -1 / 9970 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) <= 3:
                        if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        if not 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                            if 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > 0:
                                return 0
                            if 0 < 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                                revert with 'NH{q', 17
                            if -10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / 9970 <= 0:
                                return 0
                            # nil
                        else:
                            if 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > 1:
                                return 0
                            if 1 < 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                                revert with 'NH{q', 17
                            if (-10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)) + 1 / 9970 <= 0:
                                return 0
                            # nil
                    else:
                        if 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / 2 > -2:
                            revert with 'NH{q', 17
                        v = (99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / 2) + 1
                        w = 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                        while v < w:
                            if not v:
                                revert with 'NH{q', 18
                            if 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / v > -v - 1:
                                revert with 'NH{q', 17
                            v = (99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / v) + v / 2
                            w = v
                            continue 
                        if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        if 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > w:
                            return 0
                        if w < 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        if w - (10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)) / 9970 <= 0:
                            return 0
                        # nil
                revert with 'NH{q', 50
            if var166005 and var166004 > -1 / var166005:
                revert with 'NH{q', 17
            if var166005 * var166004 and 9970 > -1 / var166005 * var166004:
                revert with 'NH{q', 17
            if 9970 * var166005 * var166004 and 10000 > -1 / 9970 * var166005 * var166004:
                revert with 'NH{q', 17
            if 99700000 * var166005 * var166004 <= 3:
                if var166005 and 10000 > -1 / var166005:
                    revert with 'NH{q', 17
                if not 99700000 * var166005 * var166004:
                    if 10000 * var166005 > 0:
                        return 0
                    if 0 < 10000 * var166005:
                        revert with 'NH{q', 17
                    if -10000 * var166005 / 9970 <= 0:
                        return 0
                    idx = 0
                    s = -10000 * var166005 / 9970
                    while idx < mem[_619]:
                        if idx >= mem[_619]:
                            revert with 'NH{q', 50
                        if idx >= mem[_619 + (32 * _617) + 32]:
                            revert with 'NH{q', 50
                        if s <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[(32 * idx) + _619 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if mem[(32 * idx) + _619 + (32 * _617) + 64] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if s and 9970 > -1 / s:
                            revert with 'NH{q', 17
                        if 9970 * s / 9970 != s:
                            revert with 0, 'ds-math-mul-overflow'
                        if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                            if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                                revert with 'NH{q', 17
                            if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                                revert with 0, 'ds-math-add-overflow'
                            if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                                revert with 'NH{q', 18
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0 / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                            continue 
                        if 9970 * s and mem[(32 * idx) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                            revert with 'NH{q', 17
                        if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                            revert with 'NH{q', 18
                        if 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / mem[(32 * idx) + _619 + (32 * _617) + 64] != 9970 * s:
                            revert with 0, 'ds-math-mul-overflow'
                        if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                            revert with 'NH{q', 17
                        if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                            revert with 'NH{q', 18
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                        continue 
                    if s < -10000 * var166005 / 9970:
                        revert with 'NH{q', 17
                    return -10000 * var166005 / 9970, s, s - (-10000 * var166005 / 9970)
                if 10000 * var166005 > 1:
                    return 0
                if 1 < 10000 * var166005:
                    revert with 'NH{q', 17
                if (-10000 * var166005) + 1 / 9970 <= 0:
                    return 0
                idx = 0
                s = (-10000 * var166005) + 1 / 9970
                while idx < mem[_619]:
                    if idx >= mem[_619]:
                        revert with 'NH{q', 50
                    if idx >= mem[_619 + (32 * _617) + 32]:
                        revert with 'NH{q', 50
                    if s <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if mem[(32 * idx) + _619 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[(32 * idx) + _619 + (32 * _617) + 64] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if s and 9970 > -1 / s:
                        revert with 'NH{q', 17
                    if 9970 * s / 9970 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                        if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                            revert with 'NH{q', 17
                        if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                            revert with 'NH{q', 18
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                        continue 
                    if 9970 * s and mem[(32 * idx) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                        revert with 'NH{q', 18
                    if 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / mem[(32 * idx) + _619 + (32 * _617) + 64] != 9970 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    continue 
                if s < (-10000 * var166005) + 1 / 9970:
                    revert with 'NH{q', 17
                return (-10000 * var166005) + 1 / 9970, s, s - ((-10000 * var166005) + 1 / 9970)
            if 99700000 * var166005 * var166004 / 2 > -2:
                revert with 'NH{q', 17
            s = (99700000 * var166005 * var166004 / 2) + 1
            t = 99700000 * var166005 * var166004
            while s < t:
                if not s:
                    revert with 'NH{q', 18
                if 99700000 * var166005 * var166004 / s > -s - 1:
                    revert with 'NH{q', 17
                s = (99700000 * var166005 * var166004 / s) + s / 2
                t = s
                continue 
            if var166005 and 10000 > -1 / var166005:
                revert with 'NH{q', 17
            if 10000 * var166005 > t:
                return 0
            if t < 10000 * var166005:
                revert with 'NH{q', 17
            if t - (10000 * var166005) / 9970 <= 0:
                return 0
            idx = 0
            s = t - (10000 * var166005) / 9970
            while idx < mem[_619]:
                if idx >= mem[_619]:
                    revert with 'NH{q', 50
                if idx >= mem[_619 + (32 * _617) + 32]:
                    revert with 'NH{q', 50
                if s <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if mem[(32 * idx) + _619 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if mem[(32 * idx) + _619 + (32 * _617) + 64] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if s and 9970 > -1 / s:
                    revert with 'NH{q', 17
                if 9970 * s / 9970 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                    if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    continue 
                if 9970 * s and mem[(32 * idx) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                    revert with 'NH{q', 18
                if 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / mem[(32 * idx) + _619 + (32 * _617) + 64] != 9970 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                continue 
            if s < t - (10000 * var166005) / 9970:
                revert with 'NH{q', 17
            return t - (10000 * var166005) / 9970, s, s - (t - (10000 * var166005) / 9970)
        mem[_619 + (32 * _617) + 64 len 32 * _620] = call.data[calldata.size len 32 * _620]
        _1237 = mem[96]
        idx = 0
        s = stor0
        while idx < _1237:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128] + 140 len 20] == mem[mem[(32 * idx) + 128] + 172 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[mem[(32 * idx) + 128] + 140 len 20] < mem[mem[(32 * idx) + 128] + 172 len 20]:
                if not mem[mem[(32 * idx) + 128] + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(s) != mem[mem[(32 * idx) + 128] + 140 len 20]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_619]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _619 + 32] = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_619 + (32 * _617) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _619 + (32 * _617) + 64] = mem[mem[(32 * idx) + 128] + 32]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    _1237 = mem[96]
                    idx = idx + 1
                    s = mem[mem[(32 * idx) + 128] + 128]
                    continue 
            else:
                if not mem[mem[(32 * idx) + 128] + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(s) != mem[mem[(32 * idx) + 128] + 172 len 20]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_619]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _619 + 32] = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_619 + (32 * _617) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _619 + (32 * _617) + 64] = mem[mem[(32 * idx) + 128] + 32]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    _1237 = mem[96]
                    idx = idx + 1
                    s = mem[mem[(32 * idx) + 128] + 128]
                    continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[_619]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _619 + 32] = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[_619 + (32 * _617) + 32]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _619 + (32 * _617) + 64] = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            _1237 = mem[96]
            idx = idx + 1
            s = mem[mem[(32 * idx) + 128] + 160]
            continue 
        if 0 >= mem[_619]:
            revert with 'NH{q', 50
        if 0 >= mem[_619 + (32 * _617) + 32]:
            revert with 'NH{q', 50
        if var163003 < 1:
            revert with 'NH{q', 17
        if var167002 < var167001:
            if var179003 > -2:
                revert with 'NH{q', 17
            idx = var181002 + 1
            s = var181007
            t = var181008
            u = var181009
            v = var181011
            v = var181012
            while idx < mem[_619]:
                if u > -2:
                    revert with 'NH{q', 17
                if u + 1 >= mem[_619 + (32 * _617) + 32]:
                    revert with 'NH{q', 50
                if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + _619 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if t > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * t and mem[(32 * idx) + _619 + 32] > -1 / 10000 * t:
                    revert with 'NH{q', 17
                if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + _619 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if 9970 * s and mem[(32 * u + 1) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                    revert with 'NH{q', 17
                if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if u == -1:
                    revert with 'NH{q', 17
                if mem[_619] < 1:
                    revert with 'NH{q', 17
                if u + 1 < mem[_619] - 1:
                    if u + 1 > -2:
                        revert with 'NH{q', 17
                    idx = u + 2
                    s = 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    t = 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    u = u + 1
                    v = 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    v = 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    continue 
                if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 9970 > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 9970 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 10000 > -1 / 9970 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) <= 3:
                    if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if not 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        if 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > 0:
                            return 0
                        if 0 < 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        if -10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / 9970 <= 0:
                            return 0
                        # nil
                    else:
                        if 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > 1:
                            return 0
                        if 1 < 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        if (-10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)) + 1 / 9970 <= 0:
                            return 0
                        # nil
                else:
                    if 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / 2 > -2:
                        revert with 'NH{q', 17
                    v = (99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / 2) + 1
                    w = 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    while v < w:
                        if not v:
                            revert with 'NH{q', 18
                        if 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / v > -v - 1:
                            revert with 'NH{q', 17
                        v = (99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / v) + v / 2
                        w = v
                        continue 
                    if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > w:
                        return 0
                    if w < 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if w - (10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)) / 9970 <= 0:
                        return 0
                    # nil
            revert with 'NH{q', 50
        if var167005 and var167004 > -1 / var167005:
            revert with 'NH{q', 17
        if var167005 * var167004 and 9970 > -1 / var167005 * var167004:
            revert with 'NH{q', 17
        if 9970 * var167005 * var167004 and 10000 > -1 / 9970 * var167005 * var167004:
            revert with 'NH{q', 17
        if 99700000 * var167005 * var167004 <= 3:
            if var167005 and 10000 > -1 / var167005:
                revert with 'NH{q', 17
            if not 99700000 * var167005 * var167004:
                if 10000 * var167005 > 0:
                    return 0
                if 0 < 10000 * var167005:
                    revert with 'NH{q', 17
                if -10000 * var167005 / 9970 <= 0:
                    return 0
                idx = 0
                s = -10000 * var167005 / 9970
                while idx < mem[_619]:
                    if idx >= mem[_619]:
                        revert with 'NH{q', 50
                    if idx >= mem[_619 + (32 * _617) + 32]:
                        revert with 'NH{q', 50
                    if s <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if mem[(32 * idx) + _619 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[(32 * idx) + _619 + (32 * _617) + 64] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if s and 9970 > -1 / s:
                        revert with 'NH{q', 17
                    if 9970 * s / 9970 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                        if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                            revert with 'NH{q', 17
                        if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                            revert with 'NH{q', 18
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                        continue 
                    if 9970 * s and mem[(32 * idx) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                        revert with 'NH{q', 18
                    if 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / mem[(32 * idx) + _619 + (32 * _617) + 64] != 9970 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    continue 
                if s < -10000 * var167005 / 9970:
                    revert with 'NH{q', 17
                return -10000 * var167005 / 9970, s, s - (-10000 * var167005 / 9970)
            if 10000 * var167005 > 1:
                return 0
            if 1 < 10000 * var167005:
                revert with 'NH{q', 17
            if (-10000 * var167005) + 1 / 9970 <= 0:
                return 0
            idx = 0
            s = (-10000 * var167005) + 1 / 9970
            while idx < mem[_619]:
                if idx >= mem[_619]:
                    revert with 'NH{q', 50
                if idx >= mem[_619 + (32 * _617) + 32]:
                    revert with 'NH{q', 50
                if s <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if mem[(32 * idx) + _619 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if mem[(32 * idx) + _619 + (32 * _617) + 64] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if s and 9970 > -1 / s:
                    revert with 'NH{q', 17
                if 9970 * s / 9970 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                    if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    continue 
                if 9970 * s and mem[(32 * idx) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                    revert with 'NH{q', 18
                if 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / mem[(32 * idx) + _619 + (32 * _617) + 64] != 9970 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                continue 
            if s < (-10000 * var167005) + 1 / 9970:
                revert with 'NH{q', 17
            return (-10000 * var167005) + 1 / 9970, s, s - ((-10000 * var167005) + 1 / 9970)
        if 99700000 * var167005 * var167004 / 2 > -2:
            revert with 'NH{q', 17
        s = (99700000 * var167005 * var167004 / 2) + 1
        t = 99700000 * var167005 * var167004
        while s < t:
            if not s:
                revert with 'NH{q', 18
            if 99700000 * var167005 * var167004 / s > -s - 1:
                revert with 'NH{q', 17
            s = (99700000 * var167005 * var167004 / s) + s / 2
            t = s
            continue 
        if var167005 and 10000 > -1 / var167005:
            revert with 'NH{q', 17
        if 10000 * var167005 > t:
            return 0
        if t < 10000 * var167005:
            revert with 'NH{q', 17
        if t - (10000 * var167005) / 9970 <= 0:
            return 0
        idx = 0
        s = t - (10000 * var167005) / 9970
        while idx < mem[_619]:
            if idx >= mem[_619]:
                revert with 'NH{q', 50
            if idx >= mem[_619 + (32 * _617) + 32]:
                revert with 'NH{q', 50
            if s <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if mem[(32 * idx) + _619 + 32] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[(32 * idx) + _619 + (32 * _617) + 64] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if s and 9970 > -1 / s:
                revert with 'NH{q', 17
            if 9970 * s / 9970 != s:
                revert with 0, 'ds-math-mul-overflow'
            if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                continue 
            if 9970 * s and mem[(32 * idx) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                revert with 'NH{q', 17
            if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                revert with 'NH{q', 18
            if 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / mem[(32 * idx) + _619 + (32 * _617) + 64] != 9970 * s:
                revert with 0, 'ds-math-mul-overflow'
            if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                revert with 0, 'ds-math-mul-overflow'
            if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                revert with 0, 'ds-math-add-overflow'
            if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
            continue 
        if s < t - (10000 * var167005) / 9970:
            revert with 'NH{q', 17
        return t - (10000 * var167005) / 9970, s, s - (t - (10000 * var167005) / 9970)
    mem[mem[64] + 32 len 32 * _617] = call.data[calldata.size len 32 * _617]
    _622 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    mem[mem[64] + (32 * _617) + 32] = mem[96]
    mem[64] = _619 + (32 * _617) + (32 * _622) + 64
    if not _622:
        _1238 = mem[96]
        idx = 0
        s = stor0
        while idx < _1238:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128] + 140 len 20] == mem[mem[(32 * idx) + 128] + 172 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[mem[(32 * idx) + 128] + 140 len 20] < mem[mem[(32 * idx) + 128] + 172 len 20]:
                if not mem[mem[(32 * idx) + 128] + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(s) != mem[mem[(32 * idx) + 128] + 140 len 20]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_619]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _619 + 32] = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_619 + (32 * _617) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _619 + (32 * _617) + 64] = mem[mem[(32 * idx) + 128] + 32]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    _1238 = mem[96]
                    idx = idx + 1
                    s = mem[mem[(32 * idx) + 128] + 128]
                    continue 
            else:
                if not mem[mem[(32 * idx) + 128] + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(s) != mem[mem[(32 * idx) + 128] + 172 len 20]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_619]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _619 + 32] = mem[mem[(32 * idx) + 128] + 64]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[_619 + (32 * _617) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _619 + (32 * _617) + 64] = mem[mem[(32 * idx) + 128] + 32]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    _1238 = mem[96]
                    idx = idx + 1
                    s = mem[mem[(32 * idx) + 128] + 128]
                    continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[_619]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _619 + 32] = mem[mem[(32 * idx) + 128] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[_619 + (32 * _617) + 32]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _619 + (32 * _617) + 64] = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            _1238 = mem[96]
            idx = idx + 1
            s = mem[mem[(32 * idx) + 128] + 160]
            continue 
        if 0 >= mem[_619]:
            revert with 'NH{q', 50
        if 0 >= mem[_619 + (32 * _617) + 32]:
            revert with 'NH{q', 50
        if var163003 < 1:
            revert with 'NH{q', 17
        if var167002 < var167001:
            if var179003 > -2:
                revert with 'NH{q', 17
            idx = var181002 + 1
            s = var181007
            t = var181008
            u = var181009
            v = var181011
            v = var181012
            while idx < mem[_619]:
                if u > -2:
                    revert with 'NH{q', 17
                if u + 1 >= mem[_619 + (32 * _617) + 32]:
                    revert with 'NH{q', 50
                if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + _619 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if t > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * t and mem[(32 * idx) + _619 + 32] > -1 / 10000 * t:
                    revert with 'NH{q', 17
                if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if mem[(32 * idx) + _619 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                    revert with 'NH{q', 17
                if 9970 * s and mem[(32 * u + 1) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                    revert with 'NH{q', 17
                if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if u == -1:
                    revert with 'NH{q', 17
                if mem[_619] < 1:
                    revert with 'NH{q', 17
                if u + 1 < mem[_619] - 1:
                    if u + 1 > -2:
                        revert with 'NH{q', 17
                    idx = u + 2
                    s = 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    t = 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    u = u + 1
                    v = 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    v = 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    continue 
                if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 9970 > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 9970 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 10000 > -1 / 9970 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) <= 3:
                    if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if not 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        if 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > 0:
                            return 0
                        if 0 < 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        if -10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / 9970 <= 0:
                            return 0
                        # nil
                    else:
                        if 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > 1:
                            return 0
                        if 1 < 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                            revert with 'NH{q', 17
                        if (-10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)) + 1 / 9970 <= 0:
                            return 0
                        # nil
                else:
                    if 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / 2 > -2:
                        revert with 'NH{q', 17
                    v = (99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / 2) + 1
                    w = 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    while v < w:
                        if not v:
                            revert with 'NH{q', 18
                        if 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / v > -v - 1:
                            revert with 'NH{q', 17
                        v = (99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / v) + v / 2
                        w = v
                        continue 
                    if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > w:
                        return 0
                    if w < 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if w - (10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)) / 9970 <= 0:
                        return 0
                    # nil
            revert with 'NH{q', 50
        if var167005 and var167004 > -1 / var167005:
            revert with 'NH{q', 17
        if var167005 * var167004 and 9970 > -1 / var167005 * var167004:
            revert with 'NH{q', 17
        if 9970 * var167005 * var167004 and 10000 > -1 / 9970 * var167005 * var167004:
            revert with 'NH{q', 17
        if 99700000 * var167005 * var167004 <= 3:
            if var167005 and 10000 > -1 / var167005:
                revert with 'NH{q', 17
            if not 99700000 * var167005 * var167004:
                if 10000 * var167005 > 0:
                    return 0
                if 0 < 10000 * var167005:
                    revert with 'NH{q', 17
                if -10000 * var167005 / 9970 <= 0:
                    return 0
                idx = 0
                s = -10000 * var167005 / 9970
                while idx < mem[_619]:
                    if idx >= mem[_619]:
                        revert with 'NH{q', 50
                    if idx >= mem[_619 + (32 * _617) + 32]:
                        revert with 'NH{q', 50
                    if s <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if mem[(32 * idx) + _619 + 32] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if mem[(32 * idx) + _619 + (32 * _617) + 64] <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if s and 9970 > -1 / s:
                        revert with 'NH{q', 17
                    if 9970 * s / 9970 != s:
                        revert with 0, 'ds-math-mul-overflow'
                    if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                        if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                            revert with 'NH{q', 17
                        if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                            revert with 0, 'ds-math-add-overflow'
                        if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                            revert with 'NH{q', 18
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0 / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                        continue 
                    if 9970 * s and mem[(32 * idx) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                        revert with 'NH{q', 17
                    if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                        revert with 'NH{q', 18
                    if 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / mem[(32 * idx) + _619 + (32 * _617) + 64] != 9970 * s:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    continue 
                if s < -10000 * var167005 / 9970:
                    revert with 'NH{q', 17
                return -10000 * var167005 / 9970, s, s - (-10000 * var167005 / 9970)
            if 10000 * var167005 > 1:
                return 0
            if 1 < 10000 * var167005:
                revert with 'NH{q', 17
            if (-10000 * var167005) + 1 / 9970 <= 0:
                return 0
            idx = 0
            s = (-10000 * var167005) + 1 / 9970
            while idx < mem[_619]:
                if idx >= mem[_619]:
                    revert with 'NH{q', 50
                if idx >= mem[_619 + (32 * _617) + 32]:
                    revert with 'NH{q', 50
                if s <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if mem[(32 * idx) + _619 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if mem[(32 * idx) + _619 + (32 * _617) + 64] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if s and 9970 > -1 / s:
                    revert with 'NH{q', 17
                if 9970 * s / 9970 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                    if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    continue 
                if 9970 * s and mem[(32 * idx) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                    revert with 'NH{q', 18
                if 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / mem[(32 * idx) + _619 + (32 * _617) + 64] != 9970 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                continue 
            if s < (-10000 * var167005) + 1 / 9970:
                revert with 'NH{q', 17
            return (-10000 * var167005) + 1 / 9970, s, s - ((-10000 * var167005) + 1 / 9970)
        if 99700000 * var167005 * var167004 / 2 > -2:
            revert with 'NH{q', 17
        s = (99700000 * var167005 * var167004 / 2) + 1
        t = 99700000 * var167005 * var167004
        while s < t:
            if not s:
                revert with 'NH{q', 18
            if 99700000 * var167005 * var167004 / s > -s - 1:
                revert with 'NH{q', 17
            s = (99700000 * var167005 * var167004 / s) + s / 2
            t = s
            continue 
        if var167005 and 10000 > -1 / var167005:
            revert with 'NH{q', 17
        if 10000 * var167005 > t:
            return 0
        if t < 10000 * var167005:
            revert with 'NH{q', 17
        if t - (10000 * var167005) / 9970 <= 0:
            return 0
        idx = 0
        s = t - (10000 * var167005) / 9970
        while idx < mem[_619]:
            if idx >= mem[_619]:
                revert with 'NH{q', 50
            if idx >= mem[_619 + (32 * _617) + 32]:
                revert with 'NH{q', 50
            if s <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if mem[(32 * idx) + _619 + 32] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[(32 * idx) + _619 + (32 * _617) + 64] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if s and 9970 > -1 / s:
                revert with 'NH{q', 17
            if 9970 * s / 9970 != s:
                revert with 0, 'ds-math-mul-overflow'
            if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                continue 
            if 9970 * s and mem[(32 * idx) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                revert with 'NH{q', 17
            if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                revert with 'NH{q', 18
            if 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / mem[(32 * idx) + _619 + (32 * _617) + 64] != 9970 * s:
                revert with 0, 'ds-math-mul-overflow'
            if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                revert with 0, 'ds-math-mul-overflow'
            if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                revert with 0, 'ds-math-add-overflow'
            if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
            continue 
        if s < t - (10000 * var167005) / 9970:
            revert with 'NH{q', 17
        return t - (10000 * var167005) / 9970, s, s - (t - (10000 * var167005) / 9970)
    mem[_619 + (32 * _617) + 64 len 32 * _622] = call.data[calldata.size len 32 * _622]
    _1239 = mem[96]
    idx = 0
    s = stor0
    while idx < _1239:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + 128] + 140 len 20] == mem[mem[(32 * idx) + 128] + 172 len 20]:
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if mem[mem[(32 * idx) + 128] + 140 len 20] < mem[mem[(32 * idx) + 128] + 172 len 20]:
            if not mem[mem[(32 * idx) + 128] + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if address(s) != mem[mem[(32 * idx) + 128] + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[_619]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _619 + 32] = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[_619 + (32 * _617) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _619 + (32 * _617) + 64] = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                _1239 = mem[96]
                idx = idx + 1
                s = mem[mem[(32 * idx) + 128] + 128]
                continue 
        else:
            if not mem[mem[(32 * idx) + 128] + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if address(s) != mem[mem[(32 * idx) + 128] + 172 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[_619]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _619 + 32] = mem[mem[(32 * idx) + 128] + 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[_619 + (32 * _617) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _619 + (32 * _617) + 64] = mem[mem[(32 * idx) + 128] + 32]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                _1239 = mem[96]
                idx = idx + 1
                s = mem[mem[(32 * idx) + 128] + 128]
                continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[_619]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _619 + 32] = mem[mem[(32 * idx) + 128] + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[_619 + (32 * _617) + 32]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _619 + (32 * _617) + 64] = mem[mem[(32 * idx) + 128] + 64]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        _1239 = mem[96]
        idx = idx + 1
        s = mem[mem[(32 * idx) + 128] + 160]
        continue 
    if 0 >= mem[_619]:
        revert with 'NH{q', 50
    if 0 >= mem[_619 + (32 * _617) + 32]:
        revert with 'NH{q', 50
    if var164003 < 1:
        revert with 'NH{q', 17
    if var168002 < var168001:
        if var180003 > -2:
            revert with 'NH{q', 17
        idx = var182002 + 1
        s = var182007
        t = var182008
        u = var182009
        v = var182011
        v = var182012
        while idx < mem[_619]:
            if u > -2:
                revert with 'NH{q', 17
            if u + 1 >= mem[_619 + (32 * _617) + 32]:
                revert with 'NH{q', 50
            if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                revert with 'NH{q', 17
            if mem[(32 * idx) + _619 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if t > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * t and mem[(32 * idx) + _619 + 32] > -1 / 10000 * t:
                revert with 'NH{q', 17
            if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                revert with 'NH{q', 18
            if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                revert with 'NH{q', 17
            if mem[(32 * idx) + _619 + 32] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if s > 0x692c518cdd3bb98acf5e21ca7d338214705cd91ffe5b4eb9cc8b1119d4c28:
                revert with 'NH{q', 17
            if 9970 * s and mem[(32 * u + 1) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                revert with 'NH{q', 17
            if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                revert with 'NH{q', 18
            if u == -1:
                revert with 'NH{q', 17
            if mem[_619] < 1:
                revert with 'NH{q', 17
            if u + 1 < mem[_619] - 1:
                if u + 1 > -2:
                    revert with 'NH{q', 17
                idx = u + 2
                s = 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                t = 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                u = u + 1
                v = 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                v = 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                continue 
            if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                revert with 'NH{q', 17
            if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 9970 > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                revert with 'NH{q', 17
            if 9970 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 10000 > -1 / 9970 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                revert with 'NH{q', 17
            if 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) <= 3:
                if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if not 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    if 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > 0:
                        return 0
                    if 0 < 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if -10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / 9970 <= 0:
                        return 0
                    # nil
                else:
                    if 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > 1:
                        return 0
                    if 1 < 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 17
                    if (-10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)) + 1 / 9970 <= 0:
                        return 0
                    # nil
            else:
                if 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / 2 > -2:
                    revert with 'NH{q', 17
                v = (99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / 2) + 1
                w = 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                while v < w:
                    if not v:
                        revert with 'NH{q', 18
                    if 99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / v > -v - 1:
                        revert with 'NH{q', 17
                    v = (99700000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) * 9970 * s * mem[(32 * u + 1) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) / v) + v / 2
                    w = v
                    continue 
                if 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) and 10000 > -1 / 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) > w:
                    return 0
                if w < 10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 17
                if w - (10000 * 10000 * t * mem[(32 * idx) + _619 + 32] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)) / 9970 <= 0:
                    return 0
                # nil
        revert with 'NH{q', 50
    if var168005 and var168004 > -1 / var168005:
        revert with 'NH{q', 17
    if var168005 * var168004 and 9970 > -1 / var168005 * var168004:
        revert with 'NH{q', 17
    if 9970 * var168005 * var168004 and 10000 > -1 / 9970 * var168005 * var168004:
        revert with 'NH{q', 17
    if 99700000 * var168005 * var168004 <= 3:
        if var168005 and 10000 > -1 / var168005:
            revert with 'NH{q', 17
        if not 99700000 * var168005 * var168004:
            if 10000 * var168005 > 0:
                return 0
            if 0 < 10000 * var168005:
                revert with 'NH{q', 17
            if -10000 * var168005 / 9970 <= 0:
                return 0
            idx = 0
            s = -10000 * var168005 / 9970
            while idx < mem[_619]:
                if idx >= mem[_619]:
                    revert with 'NH{q', 50
                if idx >= mem[_619 + (32 * _617) + 32]:
                    revert with 'NH{q', 50
                if s <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if mem[(32 * idx) + _619 + 32] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if mem[(32 * idx) + _619 + (32 * _617) + 64] <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if s and 9970 > -1 / s:
                    revert with 'NH{q', 17
                if 9970 * s / 9970 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                    if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                        revert with 'NH{q', 17
                    if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                        revert with 0, 'ds-math-add-overflow'
                    if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                        revert with 'NH{q', 18
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0 / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                    continue 
                if 9970 * s and mem[(32 * idx) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                    revert with 'NH{q', 17
                if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                    revert with 'NH{q', 18
                if 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / mem[(32 * idx) + _619 + (32 * _617) + 64] != 9970 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                continue 
            if s < -10000 * var168005 / 9970:
                revert with 'NH{q', 17
            return -10000 * var168005 / 9970, s, s - (-10000 * var168005 / 9970)
        if 10000 * var168005 > 1:
            return 0
        if 1 < 10000 * var168005:
            revert with 'NH{q', 17
        if (-10000 * var168005) + 1 / 9970 <= 0:
            return 0
        idx = 0
        s = (-10000 * var168005) + 1 / 9970
        while idx < mem[_619]:
            if idx >= mem[_619]:
                revert with 'NH{q', 50
            if idx >= mem[_619 + (32 * _617) + 32]:
                revert with 'NH{q', 50
            if s <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if mem[(32 * idx) + _619 + 32] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if mem[(32 * idx) + _619 + (32 * _617) + 64] <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if s and 9970 > -1 / s:
                revert with 'NH{q', 17
            if 9970 * s / 9970 != s:
                revert with 0, 'ds-math-mul-overflow'
            if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                    revert with 'NH{q', 17
                if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                    revert with 'NH{q', 17
                if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                    revert with 0, 'ds-math-add-overflow'
                if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                    revert with 'NH{q', 18
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0 / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
                continue 
            if 9970 * s and mem[(32 * idx) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
                revert with 'NH{q', 17
            if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
                revert with 'NH{q', 18
            if 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / mem[(32 * idx) + _619 + (32 * _617) + 64] != 9970 * s:
                revert with 0, 'ds-math-mul-overflow'
            if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                revert with 0, 'ds-math-mul-overflow'
            if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                revert with 0, 'ds-math-add-overflow'
            if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
            continue 
        if s < (-10000 * var168005) + 1 / 9970:
            revert with 'NH{q', 17
        return (-10000 * var168005) + 1 / 9970, s, s - ((-10000 * var168005) + 1 / 9970)
    if 99700000 * var168005 * var168004 / 2 > -2:
        revert with 'NH{q', 17
    s = (99700000 * var168005 * var168004 / 2) + 1
    t = 99700000 * var168005 * var168004
    while s < t:
        if not s:
            revert with 'NH{q', 18
        if 99700000 * var168005 * var168004 / s > -s - 1:
            revert with 'NH{q', 17
        s = (99700000 * var168005 * var168004 / s) + s / 2
        t = s
        continue 
    if var168005 and 10000 > -1 / var168005:
        revert with 'NH{q', 17
    if 10000 * var168005 > t:
        return 0
    if t < 10000 * var168005:
        revert with 'NH{q', 17
    if t - (10000 * var168005) / 9970 <= 0:
        return 0
    idx = 0
    s = t - (10000 * var168005) / 9970
    while idx < mem[_619]:
        if idx >= mem[_619]:
            revert with 'NH{q', 50
        if idx >= mem[_619 + (32 * _617) + 32]:
            revert with 'NH{q', 50
        if s <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if mem[(32 * idx) + _619 + 32] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if mem[(32 * idx) + _619 + (32 * _617) + 64] <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if s and 9970 > -1 / s:
            revert with 'NH{q', 17
        if 9970 * s / 9970 != s:
            revert with 0, 'ds-math-mul-overflow'
        if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
            if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
                revert with 'NH{q', 17
            if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
                revert with 0, 'ds-math-mul-overflow'
            if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
                revert with 'NH{q', 17
            if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
                revert with 0, 'ds-math-add-overflow'
            if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
                revert with 'NH{q', 18
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 0 / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
            continue 
        if 9970 * s and mem[(32 * idx) + _619 + (32 * _617) + 64] > -1 / 9970 * s:
            revert with 'NH{q', 17
        if not mem[(32 * idx) + _619 + (32 * _617) + 64]:
            revert with 'NH{q', 18
        if 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / mem[(32 * idx) + _619 + (32 * _617) + 64] != 9970 * s:
            revert with 0, 'ds-math-mul-overflow'
        if mem[(32 * idx) + _619 + 32] and 10000 > -1 / mem[(32 * idx) + _619 + 32]:
            revert with 'NH{q', 17
        if 10000 * mem[(32 * idx) + _619 + 32] / 10000 != mem[(32 * idx) + _619 + 32]:
            revert with 0, 'ds-math-mul-overflow'
        if 10000 * mem[(32 * idx) + _619 + 32] > (-9970 * s) - 1:
            revert with 'NH{q', 17
        if (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s) < 10000 * mem[(32 * idx) + _619 + 32]:
            revert with 0, 'ds-math-add-overflow'
        if not (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s):
            revert with 'NH{q', 18
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = 9970 * s * mem[(32 * idx) + _619 + (32 * _617) + 64] / (10000 * mem[(32 * idx) + _619 + 32]) + (9970 * s)
        continue 
    if s < t - (10000 * var168005) / 9970:
        revert with 'NH{q', 17
    return t - (10000 * var168005) / 9970, s, s - (t - (10000 * var168005) / 9970)
}

function sub_53737f2a(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (192 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require calldata.size - s >= 192
        _505 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_505] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_505 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == cd[(s + 64)]
        mem[_505 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == cd[(s + 96)]
        mem[_505 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_505 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_505 + 160] = cd[(s + 160)]
        mem[t] = _505
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    _506 = mem[64]
    if mem[64] + floor32(('cd', 100).length) + 1 > test266151307() or mem[64] + floor32(('cd', 100).length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(('cd', 100).length) + 1
    mem[_506] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = _506 + 32
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if cd[4] > test266151307():
        revert with 'NH{q', 65
    _775 = mem[64]
    mem[mem[64]] = cd[4]
    mem[64] = mem[64] + (32 * cd[4]) + 32
    if not cd[4]:
        _1055 = mem[floor32(('cd', 36).length) + 97]
        idx = 0
        while idx < _1055:
            _1337 = mem[_506]
            s = 0
            while s < _1337:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 140 len 20] != stor0:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx + 1) + 140 len 20] != stor0:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] != stor0:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx + 1) + 140 len 20] != stor0:
                                _2248 = mem[_506]
                                t = 0
                                u = 0
                                while t < _2248:
                                    if s >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _2254 = mem[(32 * s) + _506 + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2290 = mem[(32 * idx + 1) + 128]
                                    _2294 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_2294] = 0
                                    mem[_2294 + 32] = 0
                                    mem[_2294 + 64] = 0
                                    mem[_2294 + 96] = 0
                                    mem[_2294 + 128] = 0
                                    mem[_2294 + 160] = 0
                                    require ext_code.size(address(_2254))
                                    staticcall address(_2254).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2301 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2308 = mem[_2301]
                                    require mem[_2301] == mem[_2301 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_2290)
                                    require ext_code.size(address(_2308))
                                    staticcall address(_2308).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_2290)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2376 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2381 = mem[_2376]
                                    require mem[_2376] == mem[_2376 + 12 len 20]
                                    require ext_code.size(mem[_2376 + 12 len 20])
                                    staticcall mem[_2376 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2399 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _2401 = mem[_2399]
                                    require mem[_2399] == mem[_2399 + 18 len 14]
                                    _2405 = mem[_2399 + 32]
                                    require mem[_2399 + 32] == mem[_2399 + 50 len 14]
                                    require mem[_2399 + 64] == mem[_2399 + 92 len 4]
                                    require ext_code.size(address(_2381))
                                    staticcall address(_2381).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2421 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2430 = mem[_2421]
                                    require mem[_2421] == mem[_2421 + 12 len 20]
                                    require ext_code.size(address(_2381))
                                    staticcall address(_2381).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2441 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2445 = mem[_2441]
                                    require mem[_2441] == mem[_2441 + 12 len 20]
                                    _2451 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_2451] = address(_2381)
                                    mem[_2451 + 32] = Mask(112, 0, _2401)
                                    mem[_2451 + 64] = Mask(112, 0, _2405)
                                    mem[_2451 + 96] = 30
                                    mem[_2451 + 128] = address(_2430)
                                    mem[_2451 + 160] = address(_2445)
                                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                                        revert with 'NH{q', 50
                                    _2457 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                                    if t >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _2462 = mem[(32 * t) + _506 + 32]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2466 = mem[(32 * idx) + 128]
                                    _2470 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_2470] = 0
                                    mem[_2470 + 32] = 0
                                    mem[_2470 + 64] = 0
                                    mem[_2470 + 96] = 0
                                    mem[_2470 + 128] = 0
                                    mem[_2470 + 160] = 0
                                    require ext_code.size(address(_2462))
                                    staticcall address(_2462).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2474 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2478 = mem[_2474]
                                    require mem[_2474] == mem[_2474 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_2466)
                                    require ext_code.size(address(_2478))
                                    staticcall address(_2478).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_2466)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2518 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2525 = mem[_2518]
                                    require mem[_2518] == mem[_2518 + 12 len 20]
                                    require ext_code.size(mem[_2518 + 12 len 20])
                                    staticcall mem[_2518 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2540 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _2541 = mem[_2540]
                                    require mem[_2540] == mem[_2540 + 18 len 14]
                                    _2543 = mem[_2540 + 32]
                                    require mem[_2540 + 32] == mem[_2540 + 50 len 14]
                                    require mem[_2540 + 64] == mem[_2540 + 92 len 4]
                                    require ext_code.size(address(_2525))
                                    staticcall address(_2525).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2555 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2563 = mem[_2555]
                                    require mem[_2555] == mem[_2555 + 12 len 20]
                                    require ext_code.size(address(_2525))
                                    staticcall address(_2525).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2573 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2580 = mem[_2573]
                                    require mem[_2573] == mem[_2573 + 12 len 20]
                                    _2647 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_2647] = address(_2525)
                                    mem[_2647 + 32] = Mask(112, 0, _2541)
                                    mem[_2647 + 64] = Mask(112, 0, _2543)
                                    mem[_2647 + 96] = 30
                                    mem[_2647 + 128] = address(_2563)
                                    mem[_2647 + 160] = address(_2580)
                                    _2648 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2648] = 0
                                    mem[_2648 + 32] = 0
                                    mem[_2648 + 64] = 0
                                    _2649 = mem[64]
                                    mem[mem[64]] = 3
                                    _3129 = mem[64] + 128
                                    mem[64] = mem[64] + 320
                                    mem[_3129] = 0
                                    mem[_3129 + 32] = 0
                                    mem[_3129 + 64] = 0
                                    mem[_3129 + 96] = 0
                                    mem[_3129 + 128] = 0
                                    mem[_3129 + 160] = 0
                                    mem[var330001] = _3129
                                    s = var330001
                                    idx = var330002
                                    while idx - 1:
                                        _1055 = mem[floor32(('cd', 36).length) + 97]
                                        _1337 = mem[_506]
                                        _2248 = mem[_506]
                                        _3129 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_3129] = 0
                                        mem[_3129 + 32] = 0
                                        mem[_3129 + 64] = 0
                                        mem[_3129 + 96] = 0
                                        mem[_3129 + 128] = 0
                                        mem[_3129 + 160] = 0
                                        mem[s + 32] = _3129
                                        s = s + 32
                                        idx = idx - 1
                                        continue 
                                    mem[_2648 + 96] = _2649
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u) + _775 + 32] = _2648
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[_2649]:
                                        revert with 'NH{q', 50
                                    mem[_2649 + 32] = _2451
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 1 >= mem[_2649]:
                                        revert with 'NH{q', 50
                                    mem[_2649 + 64] = _2457
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 2 >= mem[_2649]:
                                        revert with 'NH{q', 50
                                    mem[_2649 + 96] = _2647
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    _1055 = mem[floor32(('cd', 36).length) + 97]
                                    _1337 = mem[_506]
                                    _2248 = mem[_506]
                                    t = t + 1
                                    u = u + 1
                                    continue 
                    else:
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _1363 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                        if s >= mem[_506]:
                            revert with 'NH{q', 50
                        _1365 = mem[(32 * s) + _506 + 32]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1369 = mem[(32 * idx) + 128]
                        _1375 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1375] = 0
                        mem[_1375 + 32] = 0
                        mem[_1375 + 64] = 0
                        mem[_1375 + 96] = 0
                        mem[_1375 + 128] = 0
                        mem[_1375 + 160] = 0
                        require ext_code.size(address(_1365))
                        staticcall address(_1365).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1389 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1400 = mem[_1389]
                        require mem[_1389] == mem[_1389 + 12 len 20]
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = address(_1369)
                        require ext_code.size(address(_1400))
                        staticcall address(_1400).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor0, address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1453 = mem[_1448]
                        require mem[_1448] == mem[_1448 + 12 len 20]
                        require ext_code.size(mem[_1448 + 12 len 20])
                        staticcall mem[_1448 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1473 = mem[_1469]
                        require mem[_1469] == mem[_1469 + 18 len 14]
                        _1485 = mem[_1469 + 32]
                        require mem[_1469 + 32] == mem[_1469 + 50 len 14]
                        require mem[_1469 + 64] == mem[_1469 + 92 len 4]
                        require ext_code.size(address(_1453))
                        staticcall address(_1453).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1506 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1511 = mem[_1506]
                        require mem[_1506] == mem[_1506 + 12 len 20]
                        require ext_code.size(address(_1453))
                        staticcall address(_1453).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1527 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1531 = mem[_1527]
                        require mem[_1527] == mem[_1527 + 12 len 20]
                        _1549 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1549] = address(_1453)
                        mem[_1549 + 32] = Mask(112, 0, _1473)
                        mem[_1549 + 64] = Mask(112, 0, _1485)
                        mem[_1549 + 96] = 30
                        mem[_1549 + 128] = address(_1511)
                        mem[_1549 + 160] = address(_1531)
                        _1552 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1552] = 0
                        mem[_1552 + 32] = 0
                        mem[_1552 + 64] = 0
                        _1553 = mem[64]
                        mem[mem[64]] = 2
                        _1936 = mem[64] + 96
                        mem[64] = mem[64] + 288
                        mem[_1936] = 0
                        mem[_1936 + 32] = 0
                        mem[_1936 + 64] = 0
                        mem[_1936 + 96] = 0
                        mem[_1936 + 128] = 0
                        mem[_1936 + 160] = 0
                        mem[var206001] = _1936
                        u = var206001
                        t = var206002
                        while t - 1:
                            _1055 = mem[floor32(('cd', 36).length) + 97]
                            _1337 = mem[_506]
                            _1936 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_1936] = 0
                            mem[_1936 + 32] = 0
                            mem[_1936 + 64] = 0
                            mem[_1936 + 96] = 0
                            mem[_1936 + 128] = 0
                            mem[_1936 + 160] = 0
                            mem[u + 32] = _1936
                            u = u + 32
                            t = t - 1
                            continue 
                        mem[_1552 + 96] = _1553
                        if 0 >= mem[_775]:
                            revert with 'NH{q', 50
                        mem[_775 + 32] = _1552
                        if 0 >= mem[_775]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_1553]:
                            revert with 'NH{q', 50
                        mem[_1553 + 32] = _1363
                        if 0 >= mem[_775]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_1553]:
                            revert with 'NH{q', 50
                        mem[_1553 + 64] = _1549
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] != stor0:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx + 1) + 140 len 20] != stor0:
                                _2844 = mem[_506]
                                t = 0
                                u = 1
                                while t < _2844:
                                    if s >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _2852 = mem[(32 * s) + _506 + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2883 = mem[(32 * idx + 1) + 128]
                                    _2890 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_2890] = 0
                                    mem[_2890 + 32] = 0
                                    mem[_2890 + 64] = 0
                                    mem[_2890 + 96] = 0
                                    mem[_2890 + 128] = 0
                                    mem[_2890 + 160] = 0
                                    require ext_code.size(address(_2852))
                                    staticcall address(_2852).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2902 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2909 = mem[_2902]
                                    require mem[_2902] == mem[_2902 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_2883)
                                    require ext_code.size(address(_2909))
                                    staticcall address(_2909).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_2883)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2950 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2956 = mem[_2950]
                                    require mem[_2950] == mem[_2950 + 12 len 20]
                                    require ext_code.size(mem[_2950 + 12 len 20])
                                    staticcall mem[_2950 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2971 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _2974 = mem[_2971]
                                    require mem[_2971] == mem[_2971 + 18 len 14]
                                    _2977 = mem[_2971 + 32]
                                    require mem[_2971 + 32] == mem[_2971 + 50 len 14]
                                    require mem[_2971 + 64] == mem[_2971 + 92 len 4]
                                    require ext_code.size(address(_2956))
                                    staticcall address(_2956).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2992 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2998 = mem[_2992]
                                    require mem[_2992] == mem[_2992 + 12 len 20]
                                    require ext_code.size(address(_2956))
                                    staticcall address(_2956).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3009 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3012 = mem[_3009]
                                    require mem[_3009] == mem[_3009 + 12 len 20]
                                    _3016 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3016] = address(_2956)
                                    mem[_3016 + 32] = Mask(112, 0, _2974)
                                    mem[_3016 + 64] = Mask(112, 0, _2977)
                                    mem[_3016 + 96] = 30
                                    mem[_3016 + 128] = address(_2998)
                                    mem[_3016 + 160] = address(_3012)
                                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                                        revert with 'NH{q', 50
                                    _3024 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                                    if t >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _3031 = mem[(32 * t) + _506 + 32]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _3037 = mem[(32 * idx) + 128]
                                    _3041 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3041] = 0
                                    mem[_3041 + 32] = 0
                                    mem[_3041 + 64] = 0
                                    mem[_3041 + 96] = 0
                                    mem[_3041 + 128] = 0
                                    mem[_3041 + 160] = 0
                                    require ext_code.size(address(_3031))
                                    staticcall address(_3031).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3050 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3053 = mem[_3050]
                                    require mem[_3050] == mem[_3050 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_3037)
                                    require ext_code.size(address(_3053))
                                    staticcall address(_3053).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_3037)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3076 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3080 = mem[_3076]
                                    require mem[_3076] == mem[_3076 + 12 len 20]
                                    require ext_code.size(mem[_3076 + 12 len 20])
                                    staticcall mem[_3076 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3091 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3094 = mem[_3091]
                                    require mem[_3091] == mem[_3091 + 18 len 14]
                                    _3097 = mem[_3091 + 32]
                                    require mem[_3091 + 32] == mem[_3091 + 50 len 14]
                                    require mem[_3091 + 64] == mem[_3091 + 92 len 4]
                                    require ext_code.size(address(_3080))
                                    staticcall address(_3080).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3112 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3118 = mem[_3112]
                                    require mem[_3112] == mem[_3112 + 12 len 20]
                                    require ext_code.size(address(_3080))
                                    staticcall address(_3080).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3130 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3138 = mem[_3130]
                                    require mem[_3130] == mem[_3130 + 12 len 20]
                                    _3201 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3201] = address(_3080)
                                    mem[_3201 + 32] = Mask(112, 0, _3094)
                                    mem[_3201 + 64] = Mask(112, 0, _3097)
                                    mem[_3201 + 96] = 30
                                    mem[_3201 + 128] = address(_3118)
                                    mem[_3201 + 160] = address(_3138)
                                    _3204 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_3204] = 0
                                    mem[_3204 + 32] = 0
                                    mem[_3204 + 64] = 0
                                    _3207 = mem[64]
                                    mem[mem[64]] = 3
                                    _3489 = mem[64] + 128
                                    mem[64] = mem[64] + 320
                                    mem[_3489] = 0
                                    mem[_3489 + 32] = 0
                                    mem[_3489 + 64] = 0
                                    mem[_3489 + 96] = 0
                                    mem[_3489 + 128] = 0
                                    mem[_3489 + 160] = 0
                                    mem[var453001] = _3489
                                    s = var453001
                                    idx = var453002
                                    while idx - 1:
                                        _1055 = mem[floor32(('cd', 36).length) + 97]
                                        _1337 = mem[_506]
                                        _2844 = mem[_506]
                                        _3489 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_3489] = 0
                                        mem[_3489 + 32] = 0
                                        mem[_3489 + 64] = 0
                                        mem[_3489 + 96] = 0
                                        mem[_3489 + 128] = 0
                                        mem[_3489 + 160] = 0
                                        mem[s + 32] = _3489
                                        s = s + 32
                                        idx = idx - 1
                                        continue 
                                    mem[_3204 + 96] = _3207
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u) + _775 + 32] = _3204
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[_3207]:
                                        revert with 'NH{q', 50
                                    mem[_3207 + 32] = _3016
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 1 >= mem[_3207]:
                                        revert with 'NH{q', 50
                                    mem[_3207 + 64] = _3024
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 2 >= mem[_3207]:
                                        revert with 'NH{q', 50
                                    mem[_3207 + 96] = _3201
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    _1055 = mem[floor32(('cd', 36).length) + 97]
                                    _1337 = mem[_506]
                                    _2844 = mem[_506]
                                    t = t + 1
                                    u = u + 1
                                    continue 
                else:
                    if s >= mem[_506]:
                        revert with 'NH{q', 50
                    _1345 = mem[(32 * s) + _506 + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1361 = mem[(32 * idx + 1) + 128]
                    _1367 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1367] = 0
                    mem[_1367 + 32] = 0
                    mem[_1367 + 64] = 0
                    mem[_1367 + 96] = 0
                    mem[_1367 + 128] = 0
                    mem[_1367 + 160] = 0
                    require ext_code.size(address(_1345))
                    staticcall address(_1345).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1376 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1390 = mem[_1376]
                    require mem[_1376] == mem[_1376 + 12 len 20]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = address(_1361)
                    require ext_code.size(address(_1390))
                    staticcall address(_1390).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor0, address(_1361)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1444 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1449 = mem[_1444]
                    require mem[_1444] == mem[_1444 + 12 len 20]
                    require ext_code.size(mem[_1444 + 12 len 20])
                    staticcall mem[_1444 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1465 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1470 = mem[_1465]
                    require mem[_1465] == mem[_1465 + 18 len 14]
                    _1482 = mem[_1465 + 32]
                    require mem[_1465 + 32] == mem[_1465 + 50 len 14]
                    require mem[_1465 + 64] == mem[_1465 + 92 len 4]
                    require ext_code.size(address(_1449))
                    staticcall address(_1449).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1500 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1507 = mem[_1500]
                    require mem[_1500] == mem[_1500 + 12 len 20]
                    require ext_code.size(address(_1449))
                    staticcall address(_1449).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1524 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1528 = mem[_1524]
                    require mem[_1524] == mem[_1524 + 12 len 20]
                    _1542 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1542] = address(_1449)
                    mem[_1542 + 32] = Mask(112, 0, _1470)
                    mem[_1542 + 64] = Mask(112, 0, _1482)
                    mem[_1542 + 96] = 30
                    mem[_1542 + 128] = address(_1507)
                    mem[_1542 + 160] = address(_1528)
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    _1547 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                    _1548 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1548] = 0
                    mem[_1548 + 32] = 0
                    mem[_1548 + 64] = 0
                    _1550 = mem[64]
                    mem[mem[64]] = 2
                    _1937 = mem[64] + 96
                    mem[64] = mem[64] + 288
                    mem[_1937] = 0
                    mem[_1937 + 32] = 0
                    mem[_1937 + 64] = 0
                    mem[_1937 + 96] = 0
                    mem[_1937 + 128] = 0
                    mem[_1937 + 160] = 0
                    mem[var204001] = _1937
                    u = var204001
                    t = var204002
                    while t - 1:
                        _1055 = mem[floor32(('cd', 36).length) + 97]
                        _1337 = mem[_506]
                        _1937 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1937] = 0
                        mem[_1937 + 32] = 0
                        mem[_1937 + 64] = 0
                        mem[_1937 + 96] = 0
                        mem[_1937 + 128] = 0
                        mem[_1937 + 160] = 0
                        mem[u + 32] = _1937
                        u = u + 32
                        t = t - 1
                        continue 
                    mem[_1548 + 96] = _1550
                    if 0 >= mem[_775]:
                        revert with 'NH{q', 50
                    mem[_775 + 32] = _1548
                    if 0 >= mem[_775]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_1550]:
                        revert with 'NH{q', 50
                    mem[_1550 + 32] = _1542
                    if 0 >= mem[_775]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_1550]:
                        revert with 'NH{q', 50
                    mem[_1550 + 64] = _1547
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx + 1) + 140 len 20] != stor0:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] != stor0:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx + 1) + 140 len 20] != stor0:
                                _2845 = mem[_506]
                                t = 0
                                u = 1
                                while t < _2845:
                                    if s >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _2853 = mem[(32 * s) + _506 + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2884 = mem[(32 * idx + 1) + 128]
                                    _2891 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_2891] = 0
                                    mem[_2891 + 32] = 0
                                    mem[_2891 + 64] = 0
                                    mem[_2891 + 96] = 0
                                    mem[_2891 + 128] = 0
                                    mem[_2891 + 160] = 0
                                    require ext_code.size(address(_2853))
                                    staticcall address(_2853).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2903 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2910 = mem[_2903]
                                    require mem[_2903] == mem[_2903 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_2884)
                                    require ext_code.size(address(_2910))
                                    staticcall address(_2910).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_2884)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2951 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2957 = mem[_2951]
                                    require mem[_2951] == mem[_2951 + 12 len 20]
                                    require ext_code.size(mem[_2951 + 12 len 20])
                                    staticcall mem[_2951 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2972 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _2975 = mem[_2972]
                                    require mem[_2972] == mem[_2972 + 18 len 14]
                                    _2978 = mem[_2972 + 32]
                                    require mem[_2972 + 32] == mem[_2972 + 50 len 14]
                                    require mem[_2972 + 64] == mem[_2972 + 92 len 4]
                                    require ext_code.size(address(_2957))
                                    staticcall address(_2957).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2993 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2999 = mem[_2993]
                                    require mem[_2993] == mem[_2993 + 12 len 20]
                                    require ext_code.size(address(_2957))
                                    staticcall address(_2957).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3010 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3013 = mem[_3010]
                                    require mem[_3010] == mem[_3010 + 12 len 20]
                                    _3017 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3017] = address(_2957)
                                    mem[_3017 + 32] = Mask(112, 0, _2975)
                                    mem[_3017 + 64] = Mask(112, 0, _2978)
                                    mem[_3017 + 96] = 30
                                    mem[_3017 + 128] = address(_2999)
                                    mem[_3017 + 160] = address(_3013)
                                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                                        revert with 'NH{q', 50
                                    _3026 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                                    if t >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _3033 = mem[(32 * t) + _506 + 32]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _3038 = mem[(32 * idx) + 128]
                                    _3042 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3042] = 0
                                    mem[_3042 + 32] = 0
                                    mem[_3042 + 64] = 0
                                    mem[_3042 + 96] = 0
                                    mem[_3042 + 128] = 0
                                    mem[_3042 + 160] = 0
                                    require ext_code.size(address(_3033))
                                    staticcall address(_3033).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3051 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3054 = mem[_3051]
                                    require mem[_3051] == mem[_3051 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_3038)
                                    require ext_code.size(address(_3054))
                                    staticcall address(_3054).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_3038)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3077 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3081 = mem[_3077]
                                    require mem[_3077] == mem[_3077 + 12 len 20]
                                    require ext_code.size(mem[_3077 + 12 len 20])
                                    staticcall mem[_3077 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3092 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3095 = mem[_3092]
                                    require mem[_3092] == mem[_3092 + 18 len 14]
                                    _3098 = mem[_3092 + 32]
                                    require mem[_3092 + 32] == mem[_3092 + 50 len 14]
                                    require mem[_3092 + 64] == mem[_3092 + 92 len 4]
                                    require ext_code.size(address(_3081))
                                    staticcall address(_3081).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3113 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3119 = mem[_3113]
                                    require mem[_3113] == mem[_3113 + 12 len 20]
                                    require ext_code.size(address(_3081))
                                    staticcall address(_3081).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3131 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3139 = mem[_3131]
                                    require mem[_3131] == mem[_3131 + 12 len 20]
                                    _3202 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3202] = address(_3081)
                                    mem[_3202 + 32] = Mask(112, 0, _3095)
                                    mem[_3202 + 64] = Mask(112, 0, _3098)
                                    mem[_3202 + 96] = 30
                                    mem[_3202 + 128] = address(_3119)
                                    mem[_3202 + 160] = address(_3139)
                                    _3205 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_3205] = 0
                                    mem[_3205 + 32] = 0
                                    mem[_3205 + 64] = 0
                                    _3208 = mem[64]
                                    mem[mem[64]] = 3
                                    _3490 = mem[64] + 128
                                    mem[64] = mem[64] + 320
                                    mem[_3490] = 0
                                    mem[_3490 + 32] = 0
                                    mem[_3490 + 64] = 0
                                    mem[_3490 + 96] = 0
                                    mem[_3490 + 128] = 0
                                    mem[_3490 + 160] = 0
                                    mem[var460001] = _3490
                                    s = var460001
                                    idx = var460002
                                    while idx - 1:
                                        _1055 = mem[floor32(('cd', 36).length) + 97]
                                        _1337 = mem[_506]
                                        _2845 = mem[_506]
                                        _3490 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_3490] = 0
                                        mem[_3490 + 32] = 0
                                        mem[_3490 + 64] = 0
                                        mem[_3490 + 96] = 0
                                        mem[_3490 + 128] = 0
                                        mem[_3490 + 160] = 0
                                        mem[s + 32] = _3490
                                        s = s + 32
                                        idx = idx - 1
                                        continue 
                                    mem[_3205 + 96] = _3208
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u) + _775 + 32] = _3205
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[_3208]:
                                        revert with 'NH{q', 50
                                    mem[_3208 + 32] = _3017
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 1 >= mem[_3208]:
                                        revert with 'NH{q', 50
                                    mem[_3208 + 64] = _3026
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 2 >= mem[_3208]:
                                        revert with 'NH{q', 50
                                    mem[_3208 + 96] = _3202
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    _1055 = mem[floor32(('cd', 36).length) + 97]
                                    _1337 = mem[_506]
                                    _2845 = mem[_506]
                                    t = t + 1
                                    u = u + 1
                                    continue 
                    else:
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _2015 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                        if s >= mem[_506]:
                            revert with 'NH{q', 50
                        _2018 = mem[(32 * s) + _506 + 32]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2021 = mem[(32 * idx) + 128]
                        _2027 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_2027] = 0
                        mem[_2027 + 32] = 0
                        mem[_2027 + 64] = 0
                        mem[_2027 + 96] = 0
                        mem[_2027 + 128] = 0
                        mem[_2027 + 160] = 0
                        require ext_code.size(address(_2018))
                        staticcall address(_2018).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2032 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2037 = mem[_2032]
                        require mem[_2032] == mem[_2032 + 12 len 20]
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = address(_2021)
                        require ext_code.size(address(_2037))
                        staticcall address(_2037).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor0, address(_2021)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2078 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2082 = mem[_2078]
                        require mem[_2078] == mem[_2078 + 12 len 20]
                        require ext_code.size(mem[_2078 + 12 len 20])
                        staticcall mem[_2078 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2097 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2098 = mem[_2097]
                        require mem[_2097] == mem[_2097 + 18 len 14]
                        _2109 = mem[_2097 + 32]
                        require mem[_2097 + 32] == mem[_2097 + 50 len 14]
                        require mem[_2097 + 64] == mem[_2097 + 92 len 4]
                        require ext_code.size(address(_2082))
                        staticcall address(_2082).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2132 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2138 = mem[_2132]
                        require mem[_2132] == mem[_2132 + 12 len 20]
                        require ext_code.size(address(_2082))
                        staticcall address(_2082).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2156 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2162 = mem[_2156]
                        require mem[_2156] == mem[_2156 + 12 len 20]
                        _2176 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_2176] = address(_2082)
                        mem[_2176 + 32] = Mask(112, 0, _2098)
                        mem[_2176 + 64] = Mask(112, 0, _2109)
                        mem[_2176 + 96] = 30
                        mem[_2176 + 128] = address(_2138)
                        mem[_2176 + 160] = address(_2162)
                        _2178 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2178] = 0
                        mem[_2178 + 32] = 0
                        mem[_2178 + 64] = 0
                        _2180 = mem[64]
                        mem[mem[64]] = 2
                        _2574 = mem[64] + 96
                        mem[64] = mem[64] + 288
                        mem[_2574] = 0
                        mem[_2574 + 32] = 0
                        mem[_2574 + 64] = 0
                        mem[_2574 + 96] = 0
                        mem[_2574 + 128] = 0
                        mem[_2574 + 160] = 0
                        mem[var336001] = _2574
                        u = var336001
                        t = var336002
                        while t - 1:
                            _1055 = mem[floor32(('cd', 36).length) + 97]
                            _1337 = mem[_506]
                            _2574 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_2574] = 0
                            mem[_2574 + 32] = 0
                            mem[_2574 + 64] = 0
                            mem[_2574 + 96] = 0
                            mem[_2574 + 128] = 0
                            mem[_2574 + 160] = 0
                            mem[u + 32] = _2574
                            u = u + 32
                            t = t - 1
                            continue 
                        mem[_2178 + 96] = _2180
                        if 1 >= mem[_775]:
                            revert with 'NH{q', 50
                        mem[_775 + 64] = _2178
                        if 1 >= mem[_775]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2180]:
                            revert with 'NH{q', 50
                        mem[_2180 + 32] = _2015
                        if 1 >= mem[_775]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2180]:
                            revert with 'NH{q', 50
                        mem[_2180 + 64] = _2176
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] != stor0:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx + 1) + 140 len 20] != stor0:
                                _3266 = mem[_506]
                                t = 0
                                u = 2
                                while t < _3266:
                                    if s >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _3275 = mem[(32 * s) + _506 + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    _3318 = mem[(32 * idx + 1) + 128]
                                    _3326 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3326] = 0
                                    mem[_3326 + 32] = 0
                                    mem[_3326 + 64] = 0
                                    mem[_3326 + 96] = 0
                                    mem[_3326 + 128] = 0
                                    mem[_3326 + 160] = 0
                                    require ext_code.size(address(_3275))
                                    staticcall address(_3275).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3336 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3340 = mem[_3336]
                                    require mem[_3336] == mem[_3336 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_3318)
                                    require ext_code.size(address(_3340))
                                    staticcall address(_3340).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_3318)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3356 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3360 = mem[_3356]
                                    require mem[_3356] == mem[_3356 + 12 len 20]
                                    require ext_code.size(mem[_3356 + 12 len 20])
                                    staticcall mem[_3356 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3369 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3372 = mem[_3369]
                                    require mem[_3369] == mem[_3369 + 18 len 14]
                                    _3375 = mem[_3369 + 32]
                                    require mem[_3369 + 32] == mem[_3369 + 50 len 14]
                                    require mem[_3369 + 64] == mem[_3369 + 92 len 4]
                                    require ext_code.size(address(_3360))
                                    staticcall address(_3360).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3387 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3390 = mem[_3387]
                                    require mem[_3387] == mem[_3387 + 12 len 20]
                                    require ext_code.size(address(_3360))
                                    staticcall address(_3360).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3399 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3402 = mem[_3399]
                                    require mem[_3399] == mem[_3399 + 12 len 20]
                                    _3405 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3405] = address(_3360)
                                    mem[_3405 + 32] = Mask(112, 0, _3372)
                                    mem[_3405 + 64] = Mask(112, 0, _3375)
                                    mem[_3405 + 96] = 30
                                    mem[_3405 + 128] = address(_3390)
                                    mem[_3405 + 160] = address(_3402)
                                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                                        revert with 'NH{q', 50
                                    _3411 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                                    if t >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _3417 = mem[(32 * t) + _506 + 32]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _3423 = mem[(32 * idx) + 128]
                                    _3426 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3426] = 0
                                    mem[_3426 + 32] = 0
                                    mem[_3426 + 64] = 0
                                    mem[_3426 + 96] = 0
                                    mem[_3426 + 128] = 0
                                    mem[_3426 + 160] = 0
                                    require ext_code.size(address(_3417))
                                    staticcall address(_3417).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3435 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3438 = mem[_3435]
                                    require mem[_3435] == mem[_3435 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_3423)
                                    require ext_code.size(address(_3438))
                                    staticcall address(_3438).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_3423)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3447 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3450 = mem[_3447]
                                    require mem[_3447] == mem[_3447 + 12 len 20]
                                    require ext_code.size(mem[_3447 + 12 len 20])
                                    staticcall mem[_3447 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3459 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3462 = mem[_3459]
                                    require mem[_3459] == mem[_3459 + 18 len 14]
                                    _3465 = mem[_3459 + 32]
                                    require mem[_3459 + 32] == mem[_3459 + 50 len 14]
                                    require mem[_3459 + 64] == mem[_3459 + 92 len 4]
                                    require ext_code.size(address(_3450))
                                    staticcall address(_3450).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3477 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3480 = mem[_3477]
                                    require mem[_3477] == mem[_3477 + 12 len 20]
                                    require ext_code.size(address(_3450))
                                    staticcall address(_3450).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3491 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3498 = mem[_3491]
                                    require mem[_3491] == mem[_3491 + 12 len 20]
                                    _3551 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3551] = address(_3450)
                                    mem[_3551 + 32] = Mask(112, 0, _3462)
                                    mem[_3551 + 64] = Mask(112, 0, _3465)
                                    mem[_3551 + 96] = 30
                                    mem[_3551 + 128] = address(_3480)
                                    mem[_3551 + 160] = address(_3498)
                                    _3554 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_3554] = 0
                                    mem[_3554 + 32] = 0
                                    mem[_3554 + 64] = 0
                                    _3557 = mem[64]
                                    mem[mem[64]] = 3
                                    _3661 = mem[64] + 128
                                    mem[64] = mem[64] + 320
                                    mem[_3661] = 0
                                    mem[_3661 + 32] = 0
                                    mem[_3661 + 64] = 0
                                    mem[_3661 + 96] = 0
                                    mem[_3661 + 128] = 0
                                    mem[_3661 + 160] = 0
                                    mem[var583001] = _3661
                                    s = var583001
                                    idx = var583002
                                    while idx - 1:
                                        _1055 = mem[floor32(('cd', 36).length) + 97]
                                        _1337 = mem[_506]
                                        _3266 = mem[_506]
                                        _3661 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_3661] = 0
                                        mem[_3661 + 32] = 0
                                        mem[_3661 + 64] = 0
                                        mem[_3661 + 96] = 0
                                        mem[_3661 + 128] = 0
                                        mem[_3661 + 160] = 0
                                        mem[s + 32] = _3661
                                        s = s + 32
                                        idx = idx - 1
                                        continue 
                                    mem[_3554 + 96] = _3557
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u) + _775 + 32] = _3554
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[_3557]:
                                        revert with 'NH{q', 50
                                    mem[_3557 + 32] = _3405
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 1 >= mem[_3557]:
                                        revert with 'NH{q', 50
                                    mem[_3557 + 64] = _3411
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 2 >= mem[_3557]:
                                        revert with 'NH{q', 50
                                    mem[_3557 + 96] = _3551
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    _1055 = mem[floor32(('cd', 36).length) + 97]
                                    _1337 = mem[_506]
                                    _3266 = mem[_506]
                                    t = t + 1
                                    u = u + 1
                                    continue 
                if s == -1:
                    revert with 'NH{q', 17
                _1055 = mem[floor32(('cd', 36).length) + 97]
                _1337 = mem[_506]
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            _1055 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            continue 
        _1057 = mem[64]
        mem[mem[64]] = 32
        _1061 = mem[_775]
        mem[mem[64] + 32] = mem[_775]
        idx = 0
        s = _775 + 32
        t = mem[64] + (32 * _1061) + 64
        u = mem[64] + 64
        while idx < _1061:
            mem[u] = t + -_1057 - 64
            _1339 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1339 + 32]
            mem[t + 64] = mem[_1339 + 64]
            _1368 = mem[_1339 + 96]
            mem[t + 96] = 128
            _1374 = mem[_1368]
            mem[t + 128] = mem[_1368]
            v = 0
            w = _1368 + 32
            x = t + 160
            while v < _1374:
                _1617 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_1617 + 32]
                mem[x + 64] = mem[_1617 + 64]
                mem[x + 96] = mem[_1617 + 96]
                mem[x + 128] = mem[_1617 + 140 len 20]
                mem[x + 160] = mem[_1617 + 172 len 20]
                v = v + 1
                w = w + 32
                x = x + 192
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (192 * _1374) + 160
            u = u + 32
            continue 
    else:
        mem[64] = _775 + (32 * cd[4]) + 160
        mem[_775 + (32 * cd[4]) + 32] = 0
        mem[_775 + (32 * cd[4]) + 64] = 0
        mem[_775 + (32 * cd[4]) + 96] = 0
        mem[_775 + (32 * cd[4]) + 128] = 96
        mem[var84001] = _775 + (32 * cd[4]) + 32
        s = var84001
        idx = var84002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_775 + (32 * cd[4]) + 32] = 0
            mem[_775 + (32 * cd[4]) + 64] = 0
            mem[_775 + (32 * cd[4]) + 96] = 0
            mem[_775 + (32 * cd[4]) + 128] = 96
            mem[s + 32] = _775 + (32 * cd[4]) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _1616 = mem[floor32(('cd', 36).length) + 97]
        idx = 0
        while idx < _1616:
            _1938 = mem[_506]
            s = 0
            while s < _1938:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 140 len 20] != stor0:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx + 1) + 140 len 20] != stor0:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] != stor0:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx + 1) + 140 len 20] != stor0:
                                _2846 = mem[_506]
                                t = 0
                                u = 0
                                while t < _2846:
                                    if s >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _2854 = mem[(32 * s) + _506 + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2885 = mem[(32 * idx + 1) + 128]
                                    _2892 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_2892] = 0
                                    mem[_2892 + 32] = 0
                                    mem[_2892 + 64] = 0
                                    mem[_2892 + 96] = 0
                                    mem[_2892 + 128] = 0
                                    mem[_2892 + 160] = 0
                                    require ext_code.size(address(_2854))
                                    staticcall address(_2854).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2904 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2911 = mem[_2904]
                                    require mem[_2904] == mem[_2904 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_2885)
                                    require ext_code.size(address(_2911))
                                    staticcall address(_2911).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_2885)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2952 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2958 = mem[_2952]
                                    require mem[_2952] == mem[_2952 + 12 len 20]
                                    require ext_code.size(mem[_2952 + 12 len 20])
                                    staticcall mem[_2952 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2973 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _2976 = mem[_2973]
                                    require mem[_2973] == mem[_2973 + 18 len 14]
                                    _2979 = mem[_2973 + 32]
                                    require mem[_2973 + 32] == mem[_2973 + 50 len 14]
                                    require mem[_2973 + 64] == mem[_2973 + 92 len 4]
                                    require ext_code.size(address(_2958))
                                    staticcall address(_2958).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2994 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3000 = mem[_2994]
                                    require mem[_2994] == mem[_2994 + 12 len 20]
                                    require ext_code.size(address(_2958))
                                    staticcall address(_2958).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3011 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3014 = mem[_3011]
                                    require mem[_3011] == mem[_3011 + 12 len 20]
                                    _3018 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3018] = address(_2958)
                                    mem[_3018 + 32] = Mask(112, 0, _2976)
                                    mem[_3018 + 64] = Mask(112, 0, _2979)
                                    mem[_3018 + 96] = 30
                                    mem[_3018 + 128] = address(_3000)
                                    mem[_3018 + 160] = address(_3014)
                                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                                        revert with 'NH{q', 50
                                    _3028 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                                    if t >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _3035 = mem[(32 * t) + _506 + 32]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _3039 = mem[(32 * idx) + 128]
                                    _3043 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3043] = 0
                                    mem[_3043 + 32] = 0
                                    mem[_3043 + 64] = 0
                                    mem[_3043 + 96] = 0
                                    mem[_3043 + 128] = 0
                                    mem[_3043 + 160] = 0
                                    require ext_code.size(address(_3035))
                                    staticcall address(_3035).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3052 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3055 = mem[_3052]
                                    require mem[_3052] == mem[_3052 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_3039)
                                    require ext_code.size(address(_3055))
                                    staticcall address(_3055).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_3039)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3078 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3082 = mem[_3078]
                                    require mem[_3078] == mem[_3078 + 12 len 20]
                                    require ext_code.size(mem[_3078 + 12 len 20])
                                    staticcall mem[_3078 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3093 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3096 = mem[_3093]
                                    require mem[_3093] == mem[_3093 + 18 len 14]
                                    _3099 = mem[_3093 + 32]
                                    require mem[_3093 + 32] == mem[_3093 + 50 len 14]
                                    require mem[_3093 + 64] == mem[_3093 + 92 len 4]
                                    require ext_code.size(address(_3082))
                                    staticcall address(_3082).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3114 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3120 = mem[_3114]
                                    require mem[_3114] == mem[_3114 + 12 len 20]
                                    require ext_code.size(address(_3082))
                                    staticcall address(_3082).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3132 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3140 = mem[_3132]
                                    require mem[_3132] == mem[_3132 + 12 len 20]
                                    _3203 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3203] = address(_3082)
                                    mem[_3203 + 32] = Mask(112, 0, _3096)
                                    mem[_3203 + 64] = Mask(112, 0, _3099)
                                    mem[_3203 + 96] = 30
                                    mem[_3203 + 128] = address(_3120)
                                    mem[_3203 + 160] = address(_3140)
                                    _3206 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_3206] = 0
                                    mem[_3206 + 32] = 0
                                    mem[_3206 + 64] = 0
                                    _3209 = mem[64]
                                    mem[mem[64]] = 3
                                    _3492 = mem[64] + 128
                                    mem[64] = mem[64] + 320
                                    mem[_3492] = 0
                                    mem[_3492 + 32] = 0
                                    mem[_3492 + 64] = 0
                                    mem[_3492 + 96] = 0
                                    mem[_3492 + 128] = 0
                                    mem[_3492 + 160] = 0
                                    mem[var337001] = _3492
                                    s = var337001
                                    idx = var337002
                                    while idx - 1:
                                        _1616 = mem[floor32(('cd', 36).length) + 97]
                                        _1938 = mem[_506]
                                        _2846 = mem[_506]
                                        _3492 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_3492] = 0
                                        mem[_3492 + 32] = 0
                                        mem[_3492 + 64] = 0
                                        mem[_3492 + 96] = 0
                                        mem[_3492 + 128] = 0
                                        mem[_3492 + 160] = 0
                                        mem[s + 32] = _3492
                                        s = s + 32
                                        idx = idx - 1
                                        continue 
                                    mem[_3206 + 96] = _3209
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u) + _775 + 32] = _3206
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[_3209]:
                                        revert with 'NH{q', 50
                                    mem[_3209 + 32] = _3018
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 1 >= mem[_3209]:
                                        revert with 'NH{q', 50
                                    mem[_3209 + 64] = _3028
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 2 >= mem[_3209]:
                                        revert with 'NH{q', 50
                                    mem[_3209 + 96] = _3203
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    _1616 = mem[floor32(('cd', 36).length) + 97]
                                    _1938 = mem[_506]
                                    _2846 = mem[_506]
                                    t = t + 1
                                    u = u + 1
                                    continue 
                    else:
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _1987 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                        if s >= mem[_506]:
                            revert with 'NH{q', 50
                        _1990 = mem[(32 * s) + _506 + 32]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1995 = mem[(32 * idx) + 128]
                        _1999 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1999] = 0
                        mem[_1999 + 32] = 0
                        mem[_1999 + 64] = 0
                        mem[_1999 + 96] = 0
                        mem[_1999 + 128] = 0
                        mem[_1999 + 160] = 0
                        require ext_code.size(address(_1990))
                        staticcall address(_1990).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2003 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2012 = mem[_2003]
                        require mem[_2003] == mem[_2003 + 12 len 20]
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = address(_1995)
                        require ext_code.size(address(_2012))
                        staticcall address(_2012).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor0, address(_1995)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2065 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2071 = mem[_2065]
                        require mem[_2065] == mem[_2065 + 12 len 20]
                        require ext_code.size(mem[_2065 + 12 len 20])
                        staticcall mem[_2065 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2083 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2086 = mem[_2083]
                        require mem[_2083] == mem[_2083 + 18 len 14]
                        _2095 = mem[_2083 + 32]
                        require mem[_2083 + 32] == mem[_2083 + 50 len 14]
                        require mem[_2083 + 64] == mem[_2083 + 92 len 4]
                        require ext_code.size(address(_2071))
                        staticcall address(_2071).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2118 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2123 = mem[_2118]
                        require mem[_2118] == mem[_2118 + 12 len 20]
                        require ext_code.size(address(_2071))
                        staticcall address(_2071).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2139 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2142 = mem[_2139]
                        require mem[_2139] == mem[_2139 + 12 len 20]
                        _2159 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_2159] = address(_2071)
                        mem[_2159 + 32] = Mask(112, 0, _2086)
                        mem[_2159 + 64] = Mask(112, 0, _2095)
                        mem[_2159 + 96] = 30
                        mem[_2159 + 128] = address(_2123)
                        mem[_2159 + 160] = address(_2142)
                        _2161 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2161] = 0
                        mem[_2161 + 32] = 0
                        mem[_2161 + 64] = 0
                        _2163 = mem[64]
                        mem[mem[64]] = 2
                        _2575 = mem[64] + 96
                        mem[64] = mem[64] + 288
                        mem[_2575] = 0
                        mem[_2575 + 32] = 0
                        mem[_2575 + 64] = 0
                        mem[_2575 + 96] = 0
                        mem[_2575 + 128] = 0
                        mem[_2575 + 160] = 0
                        mem[var213001] = _2575
                        u = var213001
                        t = var213002
                        while t - 1:
                            _1616 = mem[floor32(('cd', 36).length) + 97]
                            _1938 = mem[_506]
                            _2575 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_2575] = 0
                            mem[_2575 + 32] = 0
                            mem[_2575 + 64] = 0
                            mem[_2575 + 96] = 0
                            mem[_2575 + 128] = 0
                            mem[_2575 + 160] = 0
                            mem[u + 32] = _2575
                            u = u + 32
                            t = t - 1
                            continue 
                        mem[_2161 + 96] = _2163
                        if 0 >= mem[_775]:
                            revert with 'NH{q', 50
                        mem[_775 + 32] = _2161
                        if 0 >= mem[_775]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2163]:
                            revert with 'NH{q', 50
                        mem[_2163 + 32] = _1987
                        if 0 >= mem[_775]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2163]:
                            revert with 'NH{q', 50
                        mem[_2163 + 64] = _2159
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] != stor0:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx + 1) + 140 len 20] != stor0:
                                _3267 = mem[_506]
                                t = 0
                                u = 1
                                while t < _3267:
                                    if s >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _3276 = mem[(32 * s) + _506 + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    _3322 = mem[(32 * idx + 1) + 128]
                                    _3327 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3327] = 0
                                    mem[_3327 + 32] = 0
                                    mem[_3327 + 64] = 0
                                    mem[_3327 + 96] = 0
                                    mem[_3327 + 128] = 0
                                    mem[_3327 + 160] = 0
                                    require ext_code.size(address(_3276))
                                    staticcall address(_3276).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3337 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3341 = mem[_3337]
                                    require mem[_3337] == mem[_3337 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_3322)
                                    require ext_code.size(address(_3341))
                                    staticcall address(_3341).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_3322)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3357 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3361 = mem[_3357]
                                    require mem[_3357] == mem[_3357 + 12 len 20]
                                    require ext_code.size(mem[_3357 + 12 len 20])
                                    staticcall mem[_3357 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3370 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3373 = mem[_3370]
                                    require mem[_3370] == mem[_3370 + 18 len 14]
                                    _3376 = mem[_3370 + 32]
                                    require mem[_3370 + 32] == mem[_3370 + 50 len 14]
                                    require mem[_3370 + 64] == mem[_3370 + 92 len 4]
                                    require ext_code.size(address(_3361))
                                    staticcall address(_3361).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3388 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3391 = mem[_3388]
                                    require mem[_3388] == mem[_3388 + 12 len 20]
                                    require ext_code.size(address(_3361))
                                    staticcall address(_3361).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3400 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3403 = mem[_3400]
                                    require mem[_3400] == mem[_3400 + 12 len 20]
                                    _3406 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3406] = address(_3361)
                                    mem[_3406 + 32] = Mask(112, 0, _3373)
                                    mem[_3406 + 64] = Mask(112, 0, _3376)
                                    mem[_3406 + 96] = 30
                                    mem[_3406 + 128] = address(_3391)
                                    mem[_3406 + 160] = address(_3403)
                                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                                        revert with 'NH{q', 50
                                    _3413 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                                    if t >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _3419 = mem[(32 * t) + _506 + 32]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _3424 = mem[(32 * idx) + 128]
                                    _3427 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3427] = 0
                                    mem[_3427 + 32] = 0
                                    mem[_3427 + 64] = 0
                                    mem[_3427 + 96] = 0
                                    mem[_3427 + 128] = 0
                                    mem[_3427 + 160] = 0
                                    require ext_code.size(address(_3419))
                                    staticcall address(_3419).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3436 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3439 = mem[_3436]
                                    require mem[_3436] == mem[_3436 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_3424)
                                    require ext_code.size(address(_3439))
                                    staticcall address(_3439).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_3424)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3448 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3451 = mem[_3448]
                                    require mem[_3448] == mem[_3448 + 12 len 20]
                                    require ext_code.size(mem[_3448 + 12 len 20])
                                    staticcall mem[_3448 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3460 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3463 = mem[_3460]
                                    require mem[_3460] == mem[_3460 + 18 len 14]
                                    _3466 = mem[_3460 + 32]
                                    require mem[_3460 + 32] == mem[_3460 + 50 len 14]
                                    require mem[_3460 + 64] == mem[_3460 + 92 len 4]
                                    require ext_code.size(address(_3451))
                                    staticcall address(_3451).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3478 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3481 = mem[_3478]
                                    require mem[_3478] == mem[_3478 + 12 len 20]
                                    require ext_code.size(address(_3451))
                                    staticcall address(_3451).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3493 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3500 = mem[_3493]
                                    require mem[_3493] == mem[_3493 + 12 len 20]
                                    _3552 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3552] = address(_3451)
                                    mem[_3552 + 32] = Mask(112, 0, _3463)
                                    mem[_3552 + 64] = Mask(112, 0, _3466)
                                    mem[_3552 + 96] = 30
                                    mem[_3552 + 128] = address(_3481)
                                    mem[_3552 + 160] = address(_3500)
                                    _3555 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_3555] = 0
                                    mem[_3555 + 32] = 0
                                    mem[_3555 + 64] = 0
                                    _3558 = mem[64]
                                    mem[mem[64]] = 3
                                    _3662 = mem[64] + 128
                                    mem[64] = mem[64] + 320
                                    mem[_3662] = 0
                                    mem[_3662 + 32] = 0
                                    mem[_3662 + 64] = 0
                                    mem[_3662 + 96] = 0
                                    mem[_3662 + 128] = 0
                                    mem[_3662 + 160] = 0
                                    mem[var460001] = _3662
                                    s = var460001
                                    idx = var460002
                                    while idx - 1:
                                        _1616 = mem[floor32(('cd', 36).length) + 97]
                                        _1938 = mem[_506]
                                        _3267 = mem[_506]
                                        _3662 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_3662] = 0
                                        mem[_3662 + 32] = 0
                                        mem[_3662 + 64] = 0
                                        mem[_3662 + 96] = 0
                                        mem[_3662 + 128] = 0
                                        mem[_3662 + 160] = 0
                                        mem[s + 32] = _3662
                                        s = s + 32
                                        idx = idx - 1
                                        continue 
                                    mem[_3555 + 96] = _3558
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u) + _775 + 32] = _3555
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[_3558]:
                                        revert with 'NH{q', 50
                                    mem[_3558 + 32] = _3406
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 1 >= mem[_3558]:
                                        revert with 'NH{q', 50
                                    mem[_3558 + 64] = _3413
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 2 >= mem[_3558]:
                                        revert with 'NH{q', 50
                                    mem[_3558 + 96] = _3552
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    _1616 = mem[floor32(('cd', 36).length) + 97]
                                    _1938 = mem[_506]
                                    _3267 = mem[_506]
                                    t = t + 1
                                    u = u + 1
                                    continue 
                else:
                    if s >= mem[_506]:
                        revert with 'NH{q', 50
                    _1951 = mem[(32 * s) + _506 + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1985 = mem[(32 * idx + 1) + 128]
                    _1992 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1992] = 0
                    mem[_1992 + 32] = 0
                    mem[_1992 + 64] = 0
                    mem[_1992 + 96] = 0
                    mem[_1992 + 128] = 0
                    mem[_1992 + 160] = 0
                    require ext_code.size(address(_1951))
                    staticcall address(_1951).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2000 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2004 = mem[_2000]
                    require mem[_2000] == mem[_2000 + 12 len 20]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = address(_1985)
                    require ext_code.size(address(_2004))
                    staticcall address(_2004).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor0, address(_1985)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2061 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2066 = mem[_2061]
                    require mem[_2061] == mem[_2061 + 12 len 20]
                    require ext_code.size(mem[_2061 + 12 len 20])
                    staticcall mem[_2061 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2079 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2084 = mem[_2079]
                    require mem[_2079] == mem[_2079 + 18 len 14]
                    _2090 = mem[_2079 + 32]
                    require mem[_2079 + 32] == mem[_2079 + 50 len 14]
                    require mem[_2079 + 64] == mem[_2079 + 92 len 4]
                    require ext_code.size(address(_2066))
                    staticcall address(_2066).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2119 = mem[_2114]
                    require mem[_2114] == mem[_2114 + 12 len 20]
                    require ext_code.size(address(_2066))
                    staticcall address(_2066).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2140 = mem[_2134]
                    require mem[_2134] == mem[_2134 + 12 len 20]
                    _2153 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_2153] = address(_2066)
                    mem[_2153 + 32] = Mask(112, 0, _2084)
                    mem[_2153 + 64] = Mask(112, 0, _2090)
                    mem[_2153 + 96] = 30
                    mem[_2153 + 128] = address(_2119)
                    mem[_2153 + 160] = address(_2140)
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    _2157 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                    _2158 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2158] = 0
                    mem[_2158 + 32] = 0
                    mem[_2158 + 64] = 0
                    _2160 = mem[64]
                    mem[mem[64]] = 2
                    _2576 = mem[64] + 96
                    mem[64] = mem[64] + 288
                    mem[_2576] = 0
                    mem[_2576 + 32] = 0
                    mem[_2576 + 64] = 0
                    mem[_2576 + 96] = 0
                    mem[_2576 + 128] = 0
                    mem[_2576 + 160] = 0
                    mem[var211001] = _2576
                    u = var211001
                    t = var211002
                    while t - 1:
                        _1616 = mem[floor32(('cd', 36).length) + 97]
                        _1938 = mem[_506]
                        _2576 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_2576] = 0
                        mem[_2576 + 32] = 0
                        mem[_2576 + 64] = 0
                        mem[_2576 + 96] = 0
                        mem[_2576 + 128] = 0
                        mem[_2576 + 160] = 0
                        mem[u + 32] = _2576
                        u = u + 32
                        t = t - 1
                        continue 
                    mem[_2158 + 96] = _2160
                    if 0 >= mem[_775]:
                        revert with 'NH{q', 50
                    mem[_775 + 32] = _2158
                    if 0 >= mem[_775]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_2160]:
                        revert with 'NH{q', 50
                    mem[_2160 + 32] = _2153
                    if 0 >= mem[_775]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_2160]:
                        revert with 'NH{q', 50
                    mem[_2160 + 64] = _2157
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx + 1) + 140 len 20] != stor0:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] != stor0:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx + 1) + 140 len 20] != stor0:
                                _3268 = mem[_506]
                                t = 0
                                u = 1
                                while t < _3268:
                                    if s >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _3277 = mem[(32 * s) + _506 + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    _3323 = mem[(32 * idx + 1) + 128]
                                    _3328 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3328] = 0
                                    mem[_3328 + 32] = 0
                                    mem[_3328 + 64] = 0
                                    mem[_3328 + 96] = 0
                                    mem[_3328 + 128] = 0
                                    mem[_3328 + 160] = 0
                                    require ext_code.size(address(_3277))
                                    staticcall address(_3277).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3338 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3342 = mem[_3338]
                                    require mem[_3338] == mem[_3338 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_3323)
                                    require ext_code.size(address(_3342))
                                    staticcall address(_3342).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_3323)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3358 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3362 = mem[_3358]
                                    require mem[_3358] == mem[_3358 + 12 len 20]
                                    require ext_code.size(mem[_3358 + 12 len 20])
                                    staticcall mem[_3358 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3371 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3374 = mem[_3371]
                                    require mem[_3371] == mem[_3371 + 18 len 14]
                                    _3377 = mem[_3371 + 32]
                                    require mem[_3371 + 32] == mem[_3371 + 50 len 14]
                                    require mem[_3371 + 64] == mem[_3371 + 92 len 4]
                                    require ext_code.size(address(_3362))
                                    staticcall address(_3362).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3389 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3392 = mem[_3389]
                                    require mem[_3389] == mem[_3389 + 12 len 20]
                                    require ext_code.size(address(_3362))
                                    staticcall address(_3362).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3401 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3404 = mem[_3401]
                                    require mem[_3401] == mem[_3401 + 12 len 20]
                                    _3407 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3407] = address(_3362)
                                    mem[_3407 + 32] = Mask(112, 0, _3374)
                                    mem[_3407 + 64] = Mask(112, 0, _3377)
                                    mem[_3407 + 96] = 30
                                    mem[_3407 + 128] = address(_3392)
                                    mem[_3407 + 160] = address(_3404)
                                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                                        revert with 'NH{q', 50
                                    _3415 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                                    if t >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _3421 = mem[(32 * t) + _506 + 32]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _3425 = mem[(32 * idx) + 128]
                                    _3428 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3428] = 0
                                    mem[_3428 + 32] = 0
                                    mem[_3428 + 64] = 0
                                    mem[_3428 + 96] = 0
                                    mem[_3428 + 128] = 0
                                    mem[_3428 + 160] = 0
                                    require ext_code.size(address(_3421))
                                    staticcall address(_3421).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3437 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3440 = mem[_3437]
                                    require mem[_3437] == mem[_3437 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_3425)
                                    require ext_code.size(address(_3440))
                                    staticcall address(_3440).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_3425)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3449 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3452 = mem[_3449]
                                    require mem[_3449] == mem[_3449 + 12 len 20]
                                    require ext_code.size(mem[_3449 + 12 len 20])
                                    staticcall mem[_3449 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3461 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3464 = mem[_3461]
                                    require mem[_3461] == mem[_3461 + 18 len 14]
                                    _3467 = mem[_3461 + 32]
                                    require mem[_3461 + 32] == mem[_3461 + 50 len 14]
                                    require mem[_3461 + 64] == mem[_3461 + 92 len 4]
                                    require ext_code.size(address(_3452))
                                    staticcall address(_3452).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3479 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3482 = mem[_3479]
                                    require mem[_3479] == mem[_3479 + 12 len 20]
                                    require ext_code.size(address(_3452))
                                    staticcall address(_3452).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3494 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3501 = mem[_3494]
                                    require mem[_3494] == mem[_3494 + 12 len 20]
                                    _3553 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3553] = address(_3452)
                                    mem[_3553 + 32] = Mask(112, 0, _3464)
                                    mem[_3553 + 64] = Mask(112, 0, _3467)
                                    mem[_3553 + 96] = 30
                                    mem[_3553 + 128] = address(_3482)
                                    mem[_3553 + 160] = address(_3501)
                                    _3556 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_3556] = 0
                                    mem[_3556 + 32] = 0
                                    mem[_3556 + 64] = 0
                                    _3559 = mem[64]
                                    mem[mem[64]] = 3
                                    _3663 = mem[64] + 128
                                    mem[64] = mem[64] + 320
                                    mem[_3663] = 0
                                    mem[_3663 + 32] = 0
                                    mem[_3663 + 64] = 0
                                    mem[_3663 + 96] = 0
                                    mem[_3663 + 128] = 0
                                    mem[_3663 + 160] = 0
                                    mem[var467001] = _3663
                                    s = var467001
                                    idx = var467002
                                    while idx - 1:
                                        _1616 = mem[floor32(('cd', 36).length) + 97]
                                        _1938 = mem[_506]
                                        _3268 = mem[_506]
                                        _3663 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_3663] = 0
                                        mem[_3663 + 32] = 0
                                        mem[_3663 + 64] = 0
                                        mem[_3663 + 96] = 0
                                        mem[_3663 + 128] = 0
                                        mem[_3663 + 160] = 0
                                        mem[s + 32] = _3663
                                        s = s + 32
                                        idx = idx - 1
                                        continue 
                                    mem[_3556 + 96] = _3559
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u) + _775 + 32] = _3556
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[_3559]:
                                        revert with 'NH{q', 50
                                    mem[_3559 + 32] = _3407
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 1 >= mem[_3559]:
                                        revert with 'NH{q', 50
                                    mem[_3559 + 64] = _3415
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 2 >= mem[_3559]:
                                        revert with 'NH{q', 50
                                    mem[_3559 + 96] = _3553
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    _1616 = mem[floor32(('cd', 36).length) + 97]
                                    _1938 = mem[_506]
                                    _3268 = mem[_506]
                                    t = t + 1
                                    u = u + 1
                                    continue 
                    else:
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _2664 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                        if s >= mem[_506]:
                            revert with 'NH{q', 50
                        _2666 = mem[(32 * s) + _506 + 32]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2668 = mem[(32 * idx) + 128]
                        _2673 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_2673] = 0
                        mem[_2673 + 32] = 0
                        mem[_2673 + 64] = 0
                        mem[_2673 + 96] = 0
                        mem[_2673 + 128] = 0
                        mem[_2673 + 160] = 0
                        require ext_code.size(address(_2666))
                        staticcall address(_2666).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2678 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2681 = mem[_2678]
                        require mem[_2678] == mem[_2678 + 12 len 20]
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = address(_2668)
                        require ext_code.size(address(_2681))
                        staticcall address(_2681).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor0, address(_2668)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2710 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2711 = mem[_2710]
                        require mem[_2710] == mem[_2710 + 12 len 20]
                        require ext_code.size(mem[_2710 + 12 len 20])
                        staticcall mem[_2710 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2721 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2722 = mem[_2721]
                        require mem[_2721] == mem[_2721 + 18 len 14]
                        _2730 = mem[_2721 + 32]
                        require mem[_2721 + 32] == mem[_2721 + 50 len 14]
                        require mem[_2721 + 64] == mem[_2721 + 92 len 4]
                        require ext_code.size(address(_2711))
                        staticcall address(_2711).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2744 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2747 = mem[_2744]
                        require mem[_2744] == mem[_2744 + 12 len 20]
                        require ext_code.size(address(_2711))
                        staticcall address(_2711).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2760 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2761 = mem[_2760]
                        require mem[_2760] == mem[_2760 + 12 len 20]
                        _2772 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_2772] = address(_2711)
                        mem[_2772 + 32] = Mask(112, 0, _2722)
                        mem[_2772 + 64] = Mask(112, 0, _2730)
                        mem[_2772 + 96] = 30
                        mem[_2772 + 128] = address(_2747)
                        mem[_2772 + 160] = address(_2761)
                        _2773 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2773] = 0
                        mem[_2773 + 32] = 0
                        mem[_2773 + 64] = 0
                        _2776 = mem[64]
                        mem[mem[64]] = 2
                        _3133 = mem[64] + 96
                        mem[64] = mem[64] + 288
                        mem[_3133] = 0
                        mem[_3133 + 32] = 0
                        mem[_3133 + 64] = 0
                        mem[_3133 + 96] = 0
                        mem[_3133 + 128] = 0
                        mem[_3133 + 160] = 0
                        mem[var343001] = _3133
                        u = var343001
                        t = var343002
                        while t - 1:
                            _1616 = mem[floor32(('cd', 36).length) + 97]
                            _1938 = mem[_506]
                            _3133 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_3133] = 0
                            mem[_3133 + 32] = 0
                            mem[_3133 + 64] = 0
                            mem[_3133 + 96] = 0
                            mem[_3133 + 128] = 0
                            mem[_3133 + 160] = 0
                            mem[u + 32] = _3133
                            u = u + 32
                            t = t - 1
                            continue 
                        mem[_2773 + 96] = _2776
                        if 1 >= mem[_775]:
                            revert with 'NH{q', 50
                        mem[_775 + 64] = _2773
                        if 1 >= mem[_775]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_2776]:
                            revert with 'NH{q', 50
                        mem[_2776 + 32] = _2664
                        if 1 >= mem[_775]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_2776]:
                            revert with 'NH{q', 50
                        mem[_2776 + 64] = _2772
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] != stor0:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx + 1) + 140 len 20] != stor0:
                                _3563 = mem[_506]
                                t = 0
                                u = 2
                                while t < _3563:
                                    if s >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _3568 = mem[(32 * s) + _506 + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    _3609 = mem[(32 * idx + 1) + 128]
                                    _3610 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3610] = 0
                                    mem[_3610 + 32] = 0
                                    mem[_3610 + 64] = 0
                                    mem[_3610 + 96] = 0
                                    mem[_3610 + 128] = 0
                                    mem[_3610 + 160] = 0
                                    require ext_code.size(address(_3568))
                                    staticcall address(_3568).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3613 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3614 = mem[_3613]
                                    require mem[_3613] == mem[_3613 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_3609)
                                    require ext_code.size(address(_3614))
                                    staticcall address(_3614).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_3609)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3617 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3618 = mem[_3617]
                                    require mem[_3617] == mem[_3617 + 12 len 20]
                                    require ext_code.size(mem[_3617 + 12 len 20])
                                    staticcall mem[_3617 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3621 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3622 = mem[_3621]
                                    require mem[_3621] == mem[_3621 + 18 len 14]
                                    _3623 = mem[_3621 + 32]
                                    require mem[_3621 + 32] == mem[_3621 + 50 len 14]
                                    require mem[_3621 + 64] == mem[_3621 + 92 len 4]
                                    require ext_code.size(address(_3618))
                                    staticcall address(_3618).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3627 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3628 = mem[_3627]
                                    require mem[_3627] == mem[_3627 + 12 len 20]
                                    require ext_code.size(address(_3618))
                                    staticcall address(_3618).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3631 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3632 = mem[_3631]
                                    require mem[_3631] == mem[_3631 + 12 len 20]
                                    _3633 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3633] = address(_3618)
                                    mem[_3633 + 32] = Mask(112, 0, _3622)
                                    mem[_3633 + 64] = Mask(112, 0, _3623)
                                    mem[_3633 + 96] = 30
                                    mem[_3633 + 128] = address(_3628)
                                    mem[_3633 + 160] = address(_3632)
                                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                                        revert with 'NH{q', 50
                                    _3635 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                                    if t >= mem[_506]:
                                        revert with 'NH{q', 50
                                    _3637 = mem[(32 * t) + _506 + 32]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _3639 = mem[(32 * idx) + 128]
                                    _3640 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3640] = 0
                                    mem[_3640 + 32] = 0
                                    mem[_3640 + 64] = 0
                                    mem[_3640 + 96] = 0
                                    mem[_3640 + 128] = 0
                                    mem[_3640 + 160] = 0
                                    require ext_code.size(address(_3637))
                                    staticcall address(_3637).factory() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3643 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3644 = mem[_3643]
                                    require mem[_3643] == mem[_3643 + 12 len 20]
                                    mem[mem[64] + 4] = stor0
                                    mem[mem[64] + 36] = address(_3639)
                                    require ext_code.size(address(_3644))
                                    staticcall address(_3644).getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args stor0, address(_3639)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3647 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3648 = mem[_3647]
                                    require mem[_3647] == mem[_3647 + 12 len 20]
                                    require ext_code.size(mem[_3647 + 12 len 20])
                                    staticcall mem[_3647 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3651 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3652 = mem[_3651]
                                    require mem[_3651] == mem[_3651 + 18 len 14]
                                    _3653 = mem[_3651 + 32]
                                    require mem[_3651 + 32] == mem[_3651 + 50 len 14]
                                    require mem[_3651 + 64] == mem[_3651 + 92 len 4]
                                    require ext_code.size(address(_3648))
                                    staticcall address(_3648).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3657 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3658 = mem[_3657]
                                    require mem[_3657] == mem[_3657 + 12 len 20]
                                    require ext_code.size(address(_3648))
                                    staticcall address(_3648).token1() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3664 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3668 = mem[_3664]
                                    require mem[_3664] == mem[_3664 + 12 len 20]
                                    _3705 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_3705] = address(_3648)
                                    mem[_3705 + 32] = Mask(112, 0, _3652)
                                    mem[_3705 + 64] = Mask(112, 0, _3653)
                                    mem[_3705 + 96] = 30
                                    mem[_3705 + 128] = address(_3658)
                                    mem[_3705 + 160] = address(_3668)
                                    _3706 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_3706] = 0
                                    mem[_3706 + 32] = 0
                                    mem[_3706 + 64] = 0
                                    _3707 = mem[64]
                                    mem[mem[64]] = 3
                                    _3723 = mem[64] + 128
                                    mem[64] = mem[64] + 320
                                    mem[_3723] = 0
                                    mem[_3723 + 32] = 0
                                    mem[_3723 + 64] = 0
                                    mem[_3723 + 96] = 0
                                    mem[_3723 + 128] = 0
                                    mem[_3723 + 160] = 0
                                    mem[var590001] = _3723
                                    s = var590001
                                    idx = var590002
                                    while idx - 1:
                                        _1616 = mem[floor32(('cd', 36).length) + 97]
                                        _1938 = mem[_506]
                                        _3563 = mem[_506]
                                        _3723 = mem[64]
                                        mem[64] = mem[64] + 192
                                        mem[_3723] = 0
                                        mem[_3723 + 32] = 0
                                        mem[_3723 + 64] = 0
                                        mem[_3723 + 96] = 0
                                        mem[_3723 + 128] = 0
                                        mem[_3723 + 160] = 0
                                        mem[s + 32] = _3723
                                        s = s + 32
                                        idx = idx - 1
                                        continue 
                                    mem[_3706 + 96] = _3707
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    mem[(32 * u) + _775 + 32] = _3706
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[_3707]:
                                        revert with 'NH{q', 50
                                    mem[_3707 + 32] = _3633
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 1 >= mem[_3707]:
                                        revert with 'NH{q', 50
                                    mem[_3707 + 64] = _3635
                                    if u >= mem[_775]:
                                        revert with 'NH{q', 50
                                    if 2 >= mem[_3707]:
                                        revert with 'NH{q', 50
                                    mem[_3707 + 96] = _3705
                                    if u == -1:
                                        revert with 'NH{q', 17
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    _1616 = mem[floor32(('cd', 36).length) + 97]
                                    _1938 = mem[_506]
                                    _3563 = mem[_506]
                                    t = t + 1
                                    u = u + 1
                                    continue 
                if s == -1:
                    revert with 'NH{q', 17
                _1616 = mem[floor32(('cd', 36).length) + 97]
                _1938 = mem[_506]
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            _1616 = mem[floor32(('cd', 36).length) + 97]
            idx = idx + 1
            continue 
        _1621 = mem[64]
        mem[mem[64]] = 32
        _1630 = mem[_775]
        mem[mem[64] + 32] = mem[_775]
        idx = 0
        s = _775 + 32
        t = mem[64] + (32 * _1630) + 64
        u = mem[64] + 64
        while idx < _1630:
            mem[u] = t + -_1621 - 64
            _1940 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1940 + 32]
            mem[t + 64] = mem[_1940 + 64]
            _1994 = mem[_1940 + 96]
            mem[t + 96] = 128
            _1998 = mem[_1994]
            mem[t + 128] = mem[_1994]
            v = 0
            w = _1994 + 32
            x = t + 160
            while v < _1998:
                _2251 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_2251 + 32]
                mem[x + 64] = mem[_2251 + 64]
                mem[x + 96] = mem[_2251 + 96]
                mem[x + 128] = mem[_2251 + 140 len 20]
                mem[x + 160] = mem[_2251 + 172 len 20]
                v = v + 1
                w = w + 32
                x = x + 192
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (192 * _1998) + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
