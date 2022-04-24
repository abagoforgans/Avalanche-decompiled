contract main {




// =====================  Runtime code  =====================


#
#  - sub_185f7d4d(?)
#  - sub_45c350e4(?)
#  - sub_53737f2a(?)
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
    if not ext_call.return_data[12 len 20]:
        return ext_call.return_data[0] << 192, 0, 0, 0, address(ext_call.return_data[0]), address(ext_call.return_data[0])
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



}
