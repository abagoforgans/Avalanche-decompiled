contract main {




// =====================  Runtime code  =====================


#
#  - sub_5fa637f6(?)
#  - sub_96eca84b(?)
#
array of struct sub_2f71da6c;

function sub_2f71da6c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require 0 < sub_2f71da6c.length
    idx = 0
    while sub_2f71da6c[idx].field_256 != address(arg1):
        if idx == -1:
            revert with 'NH{q', 17
        require idx + 1 < sub_2f71da6c.length
        mem[0] = 1
        idx = idx + 1
        continue 
    if None + 2 >= sub_2f71da6c.length:
        revert with 'NH{q', 50
    return sub_2f71da6c[None + 2].field_0
}

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

function sub_7f3b6c8b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < sub_2f71da6c.length:
        mem[0] = 1
        if sub_2f71da6c[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_2f71da6c.length:
            revert with 'NH{q', 50
        return sub_2f71da6c[idx].field_768
    return 5
}

function sub_92e2ce22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < sub_2f71da6c.length:
        mem[0] = 1
        if sub_2f71da6c[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_2f71da6c.length:
            revert with 'NH{q', 50
        return sub_2f71da6c[idx].field_512
    return 30
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

function sub_61323eef(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
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
        return ext_call.return_data[0] << 192, 
               address(ext_call.return_data[0]),
               0,
               0,
               0,
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               0
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
    idx = 0
    while idx < sub_2f71da6c.length:
        mem[0] = 1
        if sub_2f71da6c[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_2f71da6c.length:
            revert with 'NH{q', 50
        s = 0
        while s < sub_2f71da6c.length:
            mem[0] = 1
            if sub_2f71da6c[s].field_0 != address(arg1):
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if s >= sub_2f71da6c.length:
                revert with 'NH{q', 50
            return arg1 << 192, 
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0] << 144,
                   ext_call.return_data[32] << 144,
                   sub_2f71da6c[s].field_512,
                   address(ext_call.return_data[0]),
                   address(ext_call.return_data[0]),
                   sub_2f71da6c[idx].field_768
        return arg1 << 192, 
               address(ext_call.return_data[0]),
               ext_call.return_data[0] << 144,
               ext_call.return_data[32] << 144,
               30,
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               sub_2f71da6c[idx].field_768
    idx = 0
    while idx < sub_2f71da6c.length:
        mem[0] = 1
        if sub_2f71da6c[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_2f71da6c.length:
            revert with 'NH{q', 50
        return arg1 << 192, 
               address(ext_call.return_data[0]),
               ext_call.return_data[0] << 144,
               ext_call.return_data[32] << 144,
               sub_2f71da6c[idx].field_512,
               address(ext_call.return_data[0]),
               address(ext_call.return_data[0]),
               5
    return arg1 << 192, 
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           30,
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           5
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



}
