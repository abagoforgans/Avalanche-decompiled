contract main {




// =====================  Runtime code  =====================


#
#  - sub_1d05f544(?)
#  - sub_6076a0b4(?)
#  - sub_680acf58(?)
#  - sub_c3e363d0(?)
#
const sub_23db1361(?) = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const sub_503be17a(?) = 0xefa94de7a4656d787667c749f7e1223d71e9fd88

const sub_5ba4df91(?) = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab

const sub_b21baf03(?) = 2

const sub_cc26e9fc(?) = 2

const sub_d8e8251e(?) = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const sub_e6b594bc(?) = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const USDC = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const WETH = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


function _fallback() payable {
    revert
}

function sqrt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > -2:
        revert with 'NH{q', 17
    s = arg1 + 1 / 2
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
    if not arg1 - arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        return address(arg1), arg2
    if not arg2:
        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
    return address(arg2), arg1
}

function getReserves(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg2 - arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: IDENTICAL_ADDRESSES'
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        staticcall arg1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 == arg2:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not arg3:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        staticcall arg1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if arg2 == arg3:
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_2ae40e6f(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    mem[floor32(('cd', 4).length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 4).length) + 101] = cd[36]
    mem[floor32(('cd', 4).length) + 133] = 64
    mem[floor32(('cd', 4).length) + 165] = ('cd', 4).length
    idx = 0
    s = 128
    t = floor32(('cd', 4).length) + 197
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall address(cd[68]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[36], Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + 197 len 32 * ('cd', 4).length])
    if not ext_call.success:
        return 0
    mem[floor32(('cd', 4).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _37 = mem[floor32(('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[floor32(('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128 < floor32(('cd', 4).length) + return_data.size + 97
    _39 = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    if mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 4).length) + mem[floor32(('cd', 4).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    require _37 + (32 * _39) + 32 <= return_data.size
    idx = floor32(('cd', 4).length) + _37 + 129
    s = floor32(('cd', 4).length) + ceil32(return_data.size) + 129
    while idx < floor32(('cd', 4).length) + _37 + (32 * _39) + 129:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 4).length < 1:
        revert with 'NH{q', 17
    if ('cd', 4).length - 1 >= _39:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * ('cd', 4).length - 1) + floor32(('cd', 4).length) + ceil32(return_data.size) + 129]
    return memory
      from mem[64]
       len 32
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    if not arg1:
        if not arg2:
            return 0
        if arg2 and 10000 > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if 10000 * arg2 / arg2 != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 10000 * arg2 > -1:
            revert with 'NH{q', 17
        if 10000 * arg2 < 10000 * arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not 10000 * arg2:
            return 0
        if not 10000 * arg2:
            revert with 'NH{q', 18
        return (0 / 10000 * arg2)
    if arg1 and 9975 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if 9975 * arg1 / arg1 != 9975:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not 9975 * arg1:
        if not arg2:
            if 0 > (-9975 * arg1) - 1:
                revert with 'NH{q', 17
            if 9975 * arg1 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 9975 * arg1:
                return 0
            if not 9975 * arg1:
                revert with 'NH{q', 18
            return (0 / 9975 * arg1)
        if arg2 and 10000 > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if 10000 * arg2 / arg2 != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 10000 * arg2 > (-9975 * arg1) - 1:
            revert with 'NH{q', 17
        if (10000 * arg2) + (9975 * arg1) < 10000 * arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not (10000 * arg2) + (9975 * arg1):
            return 0
        if not (10000 * arg2) + (9975 * arg1):
            revert with 'NH{q', 18
        return (0 / (10000 * arg2) + (9975 * arg1))
    if 9975 * arg1 and arg3 > -1 / 9975 * arg1:
        revert with 'NH{q', 17
    if not 9975 * arg1:
        revert with 'NH{q', 18
    if 9975 * arg1 * arg3 / 9975 * arg1 != arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg2:
        if 0 > (-9975 * arg1) - 1:
            revert with 'NH{q', 17
        if 9975 * arg1 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not 9975 * arg1:
            return 0
        if not 9975 * arg1:
            revert with 'NH{q', 18
        return (9975 * arg1 * arg3 / 9975 * arg1)
    if arg2 and 10000 > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if 10000 * arg2 / arg2 != 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if 10000 * arg2 > (-9975 * arg1) - 1:
        revert with 'NH{q', 17
    if (10000 * arg2) + (9975 * arg1) < 10000 * arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not (10000 * arg2) + (9975 * arg1):
        return 0
    if not (10000 * arg2) + (9975 * arg1):
        revert with 'NH{q', 18
    return (9975 * arg1 * arg3 / (10000 * arg2) + (9975 * arg1))
}

function sub_4250ac87(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        mem[192] = 2
        mem[224] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[256] = address(arg2)
        mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[292] = 0
        mem[324] = 64
        mem[356] = 2
        idx = 0
        s = 224
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 0, 64, 2, mem[388 len 64]
        if not ext_call.success:
            return 0
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _106 = mem[288 len 4], 0
        require mem[288 len 4], 0 <= test266151307()
        require mem[288 len 4], 0 + 319 < return_data.size + 288
        _109 = mem[mem[288 len 4], 0 + 288]
        if mem[mem[288 len 4], 0 + 288] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[288 len 4], 0 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], 0 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], 0 + 288]) + 289
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
        require _106 + (32 * _109) + 32 <= return_data.size
        idx = _106 + 320
        s = ceil32(return_data.size) + 320
        while idx < _106 + (32 * _109) + 320:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _109:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[ceil32(return_data.size) + 352]
    else:
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _57 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _59 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require _57 + (32 * _59) + 32 <= return_data.size
        idx = _57 + 224
        s = ceil32(return_data.size) + 224
        while idx < _57 + (32 * _59) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _59:
            revert with 'NH{q', 50
        _112 = mem[ceil32(return_data.size) + 256]
        _114 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_114]:
            revert with 'NH{q', 50
        mem[_114 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 1 >= mem[_114]:
            revert with 'NH{q', 50
        mem[_114 + 64] = address(arg2)
        mem[_114 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_114 + 100] = _112
        mem[_114 + 132] = 64
        mem[_114 + 164] = mem[_114]
        idx = 0
        s = _114 + 32
        t = _114 + 196
        while idx < mem[_114]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _114 + (32 * mem[_114]) + -mem[64] + 192]
        if not ext_call.success:
            return 0
        _142 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _144 = mem[_142]
        require mem[_142] <= test266151307()
        require _142 + mem[_142] + 31 < _142 + return_data.size
        _146 = mem[_142 + mem[_142]]
        if mem[_142 + mem[_142]] > test266151307():
            revert with 'NH{q', 65
        if _142 + ceil32(return_data.size) + floor32(mem[_142 + mem[_142]]) + 1 > test266151307() or floor32(mem[_142 + mem[_142]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _142 + ceil32(return_data.size) + floor32(mem[_142 + mem[_142]]) + 1
        mem[_142 + ceil32(return_data.size)] = _146
        require _144 + (32 * _146) + 32 <= return_data.size
        idx = _142 + _144 + 32
        s = _142 + ceil32(return_data.size) + 32
        while idx < _142 + _144 + (32 * _146) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[_114] < 1:
            revert with 'NH{q', 17
        if mem[_114] - 1 >= _146:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[(32 * mem[_114] - 1) + _142 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_56f5d154(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        mem[192] = 2
        mem[224] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[256] = address(arg2)
        mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[292] = 0
        mem[324] = 64
        mem[356] = 2
        idx = 0
        s = 224
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 0, 64, 2, mem[388 len 64]
        if not ext_call.success:
            return 0
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _106 = mem[288 len 4], 0
        require mem[288 len 4], 0 <= test266151307()
        require mem[288 len 4], 0 + 319 < return_data.size + 288
        _109 = mem[mem[288 len 4], 0 + 288]
        if mem[mem[288 len 4], 0 + 288] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[288 len 4], 0 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], 0 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], 0 + 288]) + 289
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
        require _106 + (32 * _109) + 32 <= return_data.size
        idx = _106 + 320
        s = ceil32(return_data.size) + 320
        while idx < _106 + (32 * _109) + 320:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _109:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[ceil32(return_data.size) + 352]
    else:
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _57 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _59 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require _57 + (32 * _59) + 32 <= return_data.size
        idx = _57 + 224
        s = ceil32(return_data.size) + 224
        while idx < _57 + (32 * _59) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _59:
            revert with 'NH{q', 50
        _112 = mem[ceil32(return_data.size) + 256]
        _114 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_114]:
            revert with 'NH{q', 50
        mem[_114 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 1 >= mem[_114]:
            revert with 'NH{q', 50
        mem[_114 + 64] = address(arg2)
        mem[_114 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_114 + 100] = _112
        mem[_114 + 132] = 64
        mem[_114 + 164] = mem[_114]
        idx = 0
        s = _114 + 32
        t = _114 + 196
        while idx < mem[_114]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _114 + (32 * mem[_114]) + -mem[64] + 192]
        if not ext_call.success:
            return 0
        _142 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _144 = mem[_142]
        require mem[_142] <= test266151307()
        require _142 + mem[_142] + 31 < _142 + return_data.size
        _146 = mem[_142 + mem[_142]]
        if mem[_142 + mem[_142]] > test266151307():
            revert with 'NH{q', 65
        if _142 + ceil32(return_data.size) + floor32(mem[_142 + mem[_142]]) + 1 > test266151307() or floor32(mem[_142 + mem[_142]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _142 + ceil32(return_data.size) + floor32(mem[_142 + mem[_142]]) + 1
        mem[_142 + ceil32(return_data.size)] = _146
        require _144 + (32 * _146) + 32 <= return_data.size
        idx = _142 + _144 + 32
        s = _142 + ceil32(return_data.size) + 32
        while idx < _142 + _144 + (32 * _146) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[_114] < 1:
            revert with 'NH{q', 17
        if mem[_114] - 1 >= _146:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[(32 * mem[_114] - 1) + _142 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_82ea3cc1(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    mem[96] = 2
    if arg1:
        if arg1 - 1:
            return 0
        mem[128] = address(arg2)
        mem[160] = address(arg3)
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg4
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg4, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            return 0
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _82 = mem[192 len 4], Mask(224, 32, arg4) >> 32
        require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223 < return_data.size + 192
        _85 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        require _82 + (32 * _85) + 32 <= return_data.size
        idx = _82 + 224
        s = ceil32(return_data.size) + 224
        while idx < _82 + (32 * _85) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _85:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    else:
        mem[128] = address(arg2)
        mem[160] = address(arg3)
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg4
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg4, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            if arg1 - 1:
                return 0
            mem[128] = address(arg2)
            mem[160] = address(arg3)
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg4
            mem[228] = 64
            mem[260] = 2
            idx = 0
            s = 128
            t = 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg4, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                return 0
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _146 = mem[192 len 4], Mask(224, 32, arg4) >> 32
            require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223 < return_data.size + 192
            _149 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
            require _146 + (32 * _149) + 32 <= return_data.size
            idx = _146 + 224
            s = ceil32(return_data.size) + 224
            while idx < _146 + (32 * _149) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 1 >= _149:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[ceil32(return_data.size) + 256]
        else:
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _83 = mem[192 len 4], Mask(224, 32, arg4) >> 32
            require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223 < return_data.size + 192
            _87 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
            require _83 + (32 * _87) + 32 <= return_data.size
            idx = _83 + 224
            s = ceil32(return_data.size) + 224
            while idx < _83 + (32 * _87) + 224:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if 1 >= _87:
                revert with 'NH{q', 50
            if arg1 - 1:
                mem[mem[64]] = mem[ceil32(return_data.size) + 256]
            else:
                mem[128] = address(arg2)
                mem[160] = address(arg3)
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 2
                idx = 0
                s = 128
                t = mem[64] + 100
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg4, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    return 0
                _187 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _189 = mem[_187]
                require mem[_187] <= test266151307()
                require _187 + mem[_187] + 31 < _187 + return_data.size
                _191 = mem[_187 + mem[_187]]
                if mem[_187 + mem[_187]] > test266151307():
                    revert with 'NH{q', 65
                if _187 + ceil32(return_data.size) + floor32(mem[_187 + mem[_187]]) + 1 > test266151307() or floor32(mem[_187 + mem[_187]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _187 + ceil32(return_data.size) + floor32(mem[_187 + mem[_187]]) + 1
                mem[_187 + ceil32(return_data.size)] = _191
                require _189 + (32 * _191) + 32 <= return_data.size
                idx = _187 + _189 + 32
                s = _187 + ceil32(return_data.size) + 32
                while idx < _187 + _189 + (32 * _191) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 >= _191:
                    revert with 'NH{q', 50
                mem[mem[64]] = mem[(32 * mem[96] - 1) + _187 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_4372072d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if not address(arg2) - address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PancakeLibrary: IDENTICAL_ADDRESSES'
    if address(arg2) < address(arg3):
        if not address(arg2):
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        staticcall address(arg1).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg2) == address(arg2):
            if arg4 <= 0:
                revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
            if not arg4:
                if not ext_call.return_data[18 len 14]:
                    return 0
                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 10000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * ext_call.return_data[18 len 14] > -1:
                    revert with 'NH{q', 17
                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 10000 * ext_call.return_data[18 len 14]:
                    return 0
                if not 10000 * ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                return (0 / 10000 * ext_call.return_data[18 len 14])
            if arg4 and 9975 > -1 / arg4:
                revert with 'NH{q', 17
            if not arg4:
                revert with 'NH{q', 18
            if 9975 * arg4 / arg4 != 9975:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 9975 * arg4:
                if not ext_call.return_data[18 len 14]:
                    if 0 > (-9975 * arg4) - 1:
                        revert with 'NH{q', 17
                    if 9975 * arg4 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 9975 * arg4:
                        return 0
                    if not 9975 * arg4:
                        revert with 'NH{q', 18
                    return (0 / 9975 * arg4)
                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 10000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * ext_call.return_data[18 len 14] > (-9975 * arg4) - 1:
                    revert with 'NH{q', 17
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4) < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4):
                    return 0
                if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4):
                    revert with 'NH{q', 18
                return (0 / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4))
            if 9975 * arg4 and ext_call.return_data[50 len 14] > -1 / 9975 * arg4:
                revert with 'NH{q', 17
            if not 9975 * arg4:
                revert with 'NH{q', 18
            if 9975 * arg4 * ext_call.return_data[50 len 14] / 9975 * arg4 != ext_call.return_data[50 len 14]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[18 len 14]:
                if 0 > (-9975 * arg4) - 1:
                    revert with 'NH{q', 17
                if 9975 * arg4 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 9975 * arg4:
                    return 0
                if not 9975 * arg4:
                    revert with 'NH{q', 18
                return (9975 * arg4 * ext_call.return_data[50 len 14] / 9975 * arg4)
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if not ext_call.return_data[18 len 14]:
                revert with 'NH{q', 18
            if 10000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if 10000 * ext_call.return_data[18 len 14] > (-9975 * arg4) - 1:
                revert with 'NH{q', 17
            if (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4) < 10000 * ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4):
                return 0
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4):
                revert with 'NH{q', 18
            return (9975 * arg4 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4))
    else:
        if not address(arg3):
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        staticcall address(arg1).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg2) == address(arg3):
            if arg4 <= 0:
                revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
            if not arg4:
                if not ext_call.return_data[18 len 14]:
                    return 0
                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 10000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * ext_call.return_data[18 len 14] > -1:
                    revert with 'NH{q', 17
                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 10000 * ext_call.return_data[18 len 14]:
                    return 0
                if not 10000 * ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                return (0 / 10000 * ext_call.return_data[18 len 14])
            if arg4 and 9975 > -1 / arg4:
                revert with 'NH{q', 17
            if not arg4:
                revert with 'NH{q', 18
            if 9975 * arg4 / arg4 != 9975:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 9975 * arg4:
                if not ext_call.return_data[18 len 14]:
                    if 0 > (-9975 * arg4) - 1:
                        revert with 'NH{q', 17
                    if 9975 * arg4 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 9975 * arg4:
                        return 0
                    if not 9975 * arg4:
                        revert with 'NH{q', 18
                    return (0 / 9975 * arg4)
                if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[18 len 14]:
                    revert with 'NH{q', 18
                if 10000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * ext_call.return_data[18 len 14] > (-9975 * arg4) - 1:
                    revert with 'NH{q', 17
                if (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4) < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4):
                    return 0
                if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4):
                    revert with 'NH{q', 18
                return (0 / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4))
            if 9975 * arg4 and ext_call.return_data[50 len 14] > -1 / 9975 * arg4:
                revert with 'NH{q', 17
            if not 9975 * arg4:
                revert with 'NH{q', 18
            if 9975 * arg4 * ext_call.return_data[50 len 14] / 9975 * arg4 != ext_call.return_data[50 len 14]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[18 len 14]:
                if 0 > (-9975 * arg4) - 1:
                    revert with 'NH{q', 17
                if 9975 * arg4 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 9975 * arg4:
                    return 0
                if not 9975 * arg4:
                    revert with 'NH{q', 18
                return (9975 * arg4 * ext_call.return_data[50 len 14] / 9975 * arg4)
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if not ext_call.return_data[18 len 14]:
                revert with 'NH{q', 18
            if 10000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if 10000 * ext_call.return_data[18 len 14] > (-9975 * arg4) - 1:
                revert with 'NH{q', 17
            if (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4) < 10000 * ext_call.return_data[18 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4):
                return 0
            if not (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4):
                revert with 'NH{q', 18
            return (9975 * arg4 * ext_call.return_data[50 len 14] / (10000 * ext_call.return_data[18 len 14]) + (9975 * arg4))
    if arg4 <= 0:
        revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    if not arg4:
        if not ext_call.return_data[50 len 14]:
            return 0
        if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14]:
            revert with 'NH{q', 18
        if 10000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if 10000 * ext_call.return_data[50 len 14] > -1:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[50 len 14] < 10000 * ext_call.return_data[50 len 14]:
            revert with 0, 'SafeMath: addition overflow'
        if not 10000 * ext_call.return_data[50 len 14]:
            return 0
        if not 10000 * ext_call.return_data[50 len 14]:
            revert with 'NH{q', 18
        return (0 / 10000 * ext_call.return_data[50 len 14])
    if arg4 and 9975 > -1 / arg4:
        revert with 'NH{q', 17
    if not arg4:
        revert with 'NH{q', 18
    if 9975 * arg4 / arg4 != 9975:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 9975 * arg4:
        if not ext_call.return_data[50 len 14]:
            if 0 > (-9975 * arg4) - 1:
                revert with 'NH{q', 17
            if 9975 * arg4 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 9975 * arg4:
                return 0
            if not 9975 * arg4:
                revert with 'NH{q', 18
            return (0 / 9975 * arg4)
        if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if not ext_call.return_data[50 len 14]:
            revert with 'NH{q', 18
        if 10000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if 10000 * ext_call.return_data[50 len 14] > (-9975 * arg4) - 1:
            revert with 'NH{q', 17
        if (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4) < 10000 * ext_call.return_data[50 len 14]:
            revert with 0, 'SafeMath: addition overflow'
        if not (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4):
            return 0
        if not (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4):
            revert with 'NH{q', 18
        return (0 / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4))
    if 9975 * arg4 and ext_call.return_data[18 len 14] > -1 / 9975 * arg4:
        revert with 'NH{q', 17
    if not 9975 * arg4:
        revert with 'NH{q', 18
    if 9975 * arg4 * ext_call.return_data[18 len 14] / 9975 * arg4 != ext_call.return_data[18 len 14]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[50 len 14]:
        if 0 > (-9975 * arg4) - 1:
            revert with 'NH{q', 17
        if 9975 * arg4 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not 9975 * arg4:
            return 0
        if not 9975 * arg4:
            revert with 'NH{q', 18
        return (9975 * arg4 * ext_call.return_data[18 len 14] / 9975 * arg4)
    if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    if 10000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10000:
        revert with 0, 'SafeMath: multiplication overflow'
    if 10000 * ext_call.return_data[50 len 14] > (-9975 * arg4) - 1:
        revert with 'NH{q', 17
    if (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4) < 10000 * ext_call.return_data[50 len 14]:
        revert with 0, 'SafeMath: addition overflow'
    if not (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4):
        return 0
    if not (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4):
        revert with 'NH{q', 18
    return (9975 * arg4 * ext_call.return_data[18 len 14] / (10000 * ext_call.return_data[50 len 14]) + (9975 * arg4))
}

function sub_73f9571d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    mem[96 len 64] = call.data[calldata.size len 64]
    mem[160 len 64] = call.data[calldata.size len 64]
    mem[224] = 2
    mem[64] = 320
    mem[256 len 64] = call.data[calldata.size len 64]
    idx = 0
    while idx < 2:
        _27 = mem[64]
        mem[64] = mem[64] + 64
        mem[_27] = 26
        mem[_27 + 32] = 'SafeMath: division by zero'
        if arg4 <= 0:
            _29 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_29 + idx + 68] = mem[_27 + idx + 32]
                idx = idx + 32
                continue 
            mem[_29 + 94] = 0
            revert with memory
              from mem[64]
               len _29 + -mem[64] + 100
        if not arg4:
            revert with 'NH{q', 18
        _35 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_35 + 32 len 64] = call.data[calldata.size len 64]
        if idx:
            if idx - 1:
                if idx >= 2:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 96] = 0
                mem[(32 * idx) + 160] = 0
            else:
                if 0 >= mem[_35]:
                    revert with 'NH{q', 50
                mem[_35 + 32] = address(arg1)
                if 1 >= mem[_35]:
                    revert with 'NH{q', 50
                mem[_35 + 64] = address(arg2)
                mem[_35 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_35 + 100] = arg3 / arg4
                mem[_35 + 132] = 64
                mem[_35 + 164] = mem[_35]
                s = 0
                t = _35 + 32
                u = _35 + 196
                while s < mem[_35]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _35 + (32 * mem[_35]) + -mem[64] + 192]
                if not ext_call.success:
                    if idx >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 96] = 0
                    mem[(32 * idx) + 160] = 0
                else:
                    _115 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _117 = mem[_115]
                    require mem[_115] <= test266151307()
                    require _115 + mem[_115] + 31 < _115 + return_data.size
                    _121 = mem[_115 + mem[_115]]
                    if mem[_115 + mem[_115]] > test266151307():
                        revert with 'NH{q', 65
                    if _115 + ceil32(return_data.size) + floor32(mem[_115 + mem[_115]]) + 1 > test266151307() or floor32(mem[_115 + mem[_115]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _115 + ceil32(return_data.size) + floor32(mem[_115 + mem[_115]]) + 1
                    mem[_115 + ceil32(return_data.size)] = _121
                    require _117 + (32 * _121) + 32 <= return_data.size
                    s = _115 + _117 + 32
                    t = _115 + ceil32(return_data.size) + 32
                    while s < _115 + _117 + (32 * _121) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if mem[_35] < 1:
                        revert with 'NH{q', 17
                    if mem[_35] - 1 >= _121:
                        revert with 'NH{q', 50
                    if idx >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 96] = mem[(32 * mem[_35] - 1) + _115 + ceil32(return_data.size) + 32]
                    mem[(32 * idx) + 160] = mem[(32 * idx) + 96]
        else:
            if 0 >= mem[_35]:
                revert with 'NH{q', 50
            mem[_35 + 32] = address(arg1)
            if 1 >= mem[_35]:
                revert with 'NH{q', 50
            mem[_35 + 64] = address(arg2)
            mem[_35 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_35 + 100] = arg3 / arg4
            mem[_35 + 132] = 64
            mem[_35 + 164] = mem[_35]
            s = 0
            t = _35 + 32
            u = _35 + 196
            while s < mem[_35]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _35 + (32 * mem[_35]) + -mem[64] + 192]
            if not ext_call.success:
                if idx - 1:
                    if idx >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 96] = 0
                    mem[(32 * idx) + 160] = 0
                else:
                    if 0 >= mem[_35]:
                        revert with 'NH{q', 50
                    mem[_35 + 32] = address(arg1)
                    if 1 >= mem[_35]:
                        revert with 'NH{q', 50
                    mem[_35 + 64] = address(arg2)
                    _129 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3 / arg4
                    mem[mem[64] + 36] = 64
                    _134 = mem[_35]
                    mem[mem[64] + 68] = mem[_35]
                    s = 0
                    t = _35 + 32
                    u = mem[64] + 100
                    while s < _134:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _129 + (32 * _134) + -mem[64] + 96]
                    if not ext_call.success:
                        if idx >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 96] = 0
                        mem[(32 * idx) + 160] = 0
                    else:
                        _450 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _453 = mem[_450]
                        require mem[_450] <= test266151307()
                        require _450 + mem[_450] + 31 < _450 + return_data.size
                        _456 = mem[_450 + mem[_450]]
                        if mem[_450 + mem[_450]] > test266151307():
                            revert with 'NH{q', 65
                        if _450 + ceil32(return_data.size) + floor32(mem[_450 + mem[_450]]) + 1 > test266151307() or floor32(mem[_450 + mem[_450]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _450 + ceil32(return_data.size) + floor32(mem[_450 + mem[_450]]) + 1
                        mem[_450 + ceil32(return_data.size)] = _456
                        require _453 + (32 * _456) + 32 <= return_data.size
                        s = _450 + _453 + 32
                        t = _450 + ceil32(return_data.size) + 32
                        while s < _450 + _453 + (32 * _456) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if mem[_35] < 1:
                            revert with 'NH{q', 17
                        if mem[_35] - 1 >= _456:
                            revert with 'NH{q', 50
                        if idx >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 96] = mem[(32 * mem[_35] - 1) + _450 + ceil32(return_data.size) + 32]
                        mem[(32 * idx) + 160] = mem[(32 * idx) + 96]
            else:
                _116 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _118 = mem[_116]
                require mem[_116] <= test266151307()
                require _116 + mem[_116] + 31 < _116 + return_data.size
                _123 = mem[_116 + mem[_116]]
                if mem[_116 + mem[_116]] > test266151307():
                    revert with 'NH{q', 65
                if _116 + ceil32(return_data.size) + floor32(mem[_116 + mem[_116]]) + 1 > test266151307() or floor32(mem[_116 + mem[_116]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _116 + ceil32(return_data.size) + floor32(mem[_116 + mem[_116]]) + 1
                mem[_116 + ceil32(return_data.size)] = _123
                require _118 + (32 * _123) + 32 <= return_data.size
                s = _116 + _118 + 32
                t = _116 + ceil32(return_data.size) + 32
                while s < _116 + _118 + (32 * _123) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[_35] < 1:
                    revert with 'NH{q', 17
                if mem[_35] - 1 >= _123:
                    revert with 'NH{q', 50
                if idx - 1:
                    if idx >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 96] = mem[(32 * mem[_35] - 1) + _116 + ceil32(return_data.size) + 32]
                    mem[(32 * idx) + 160] = mem[(32 * idx) + 96]
                else:
                    if 0 >= mem[_35]:
                        revert with 'NH{q', 50
                    mem[_35 + 32] = address(arg1)
                    if 1 >= mem[_35]:
                        revert with 'NH{q', 50
                    mem[_35 + 64] = address(arg2)
                    _469 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3 / arg4
                    mem[mem[64] + 36] = 64
                    _471 = mem[_35]
                    mem[mem[64] + 68] = mem[_35]
                    s = 0
                    t = _35 + 32
                    u = mem[64] + 100
                    while s < _471:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _469 + (32 * _471) + -mem[64] + 96]
                    if not ext_call.success:
                        if idx >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 96] = 0
                        mem[(32 * idx) + 160] = 0
                    else:
                        _496 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _498 = mem[_496]
                        require mem[_496] <= test266151307()
                        require _496 + mem[_496] + 31 < _496 + return_data.size
                        _499 = mem[_496 + mem[_496]]
                        if mem[_496 + mem[_496]] > test266151307():
                            revert with 'NH{q', 65
                        if _496 + ceil32(return_data.size) + floor32(mem[_496 + mem[_496]]) + 1 > test266151307() or floor32(mem[_496 + mem[_496]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _496 + ceil32(return_data.size) + floor32(mem[_496 + mem[_496]]) + 1
                        mem[_496 + ceil32(return_data.size)] = _499
                        require _498 + (32 * _499) + 32 <= return_data.size
                        s = _496 + _498 + 32
                        t = _496 + ceil32(return_data.size) + 32
                        while s < _496 + _498 + (32 * _499) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if mem[_35] < 1:
                            revert with 'NH{q', 17
                        if mem[_35] - 1 >= _499:
                            revert with 'NH{q', 50
                        if idx >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 96] = mem[(32 * mem[_35] - 1) + _496 + ceil32(return_data.size) + 32]
                        mem[(32 * idx) + 160] = mem[(32 * idx) + 96]
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < arg4:
        t = 1
        u = 0
        while t < 2:
            if u >= 2:
                revert with 'NH{q', 50
            if t >= 2:
                revert with 'NH{q', 50
            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if mem[(32 * t) + 96] <= mem[(32 * u) + 96]:
                t = t + 1
                u = u
                continue 
            t = t + 1
            u = t
            continue 
        if u >= 2:
            revert with 'NH{q', 50
        _490 = mem[(32 * u) + 96]
        if s > -mem[(32 * u) + 96] - 1:
            revert with 'NH{q', 17
        if s + mem[(32 * u) + 96] < s:
            revert with 0, 'SafeMath: addition overflow'
        if u >= mem[224]:
            revert with 'NH{q', 50
        if not mem[(32 * u) + 256] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        mem[(32 * u) + 256] = mem[(32 * u) + 256] + 1
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= arg4:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * u) + 96]
            continue 
        if u >= mem[224]:
            revert with 'NH{q', 50
        _511 = mem[(32 * u) + 256]
        if mem[(32 * u) + 256] > -2:
            revert with 'NH{q', 17
        if not arg3:
            _515 = mem[64]
            mem[64] = mem[64] + 64
            mem[_515] = 26
            mem[_515 + 32] = 'SafeMath: division by zero'
            if arg4 <= 0:
                _516 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_516 + idx + 68] = mem[_515 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_516 + 94] = 0
                revert with memory
                  from mem[64]
                   len _516 + -mem[64] + 100
            if not arg4:
                revert with 'NH{q', 18
            _521 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_521 + 32 len 64] = call.data[calldata.size len 64]
            if u:
                if u - 1:
                    if u >= 2:
                        revert with 'NH{q', 50
                    if u >= 2:
                        revert with 'NH{q', 50
                    if 0 <= mem[(32 * u) + 160]:
                        mem[(32 * u) + 96] = 0
                    else:
                        _535 = mem[(32 * u) + 160]
                        mem[64] = _521 + 160
                        mem[_521 + 96] = 30
                        mem[_521 + 128] = 'SafeMath: subtraction overflow'
                        if _535 > 0:
                            mem[_521 + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_521 + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[_521 + idx + 228] = mem[_521 + idx + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_521 + 228 len 30], 0
                        if 0 < _535:
                            revert with 'NH{q', 17
                        if u >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 96] = -_535
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                if 0 >= mem[_521]:
                    revert with 'NH{q', 50
                mem[_521 + 32] = address(arg1)
                if 1 >= mem[_521]:
                    revert with 'NH{q', 50
                mem[_521 + 64] = address(arg2)
                mem[_521 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_521 + 100] = 0 / arg4
                mem[_521 + 132] = 64
                mem[_521 + 164] = mem[_521]
                t = 0
                v = _521 + 32
                w = _521 + 196
                while t < mem[_521]:
                    mem[w] = mem[v + 12 len 20]
                    t = t + 1
                    v = v + 32
                    w = w + 32
                    continue 
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _521 + (32 * mem[_521]) + -mem[64] + 192]
                if not ext_call.success:
                    if u >= 2:
                        revert with 'NH{q', 50
                    if u >= 2:
                        revert with 'NH{q', 50
                    if 0 <= mem[(32 * u) + 160]:
                        mem[(32 * u) + 96] = 0
                        mem[(32 * u) + 160] = 0
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + _490
                        continue 
                    _829 = mem[(32 * u) + 160]
                    _833 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_833] = 30
                    mem[_833 + 32] = 'SafeMath: subtraction overflow'
                    if _829 <= 0:
                        if 0 < _829:
                            revert with 'NH{q', 17
                        if u >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 96] = -_829
                        mem[(32 * u) + 160] = 0
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + _490
                        continue 
                    _842 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_842 + idx + 68] = mem[_833 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_842 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _842 + -mem[64] + 100
                _800 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _804 = mem[_800]
                require mem[_800] <= test266151307()
                require _800 + mem[_800] + 31 < _800 + return_data.size
                _818 = mem[_800 + mem[_800]]
                if mem[_800 + mem[_800]] > test266151307():
                    revert with 'NH{q', 65
                if _800 + ceil32(return_data.size) + floor32(mem[_800 + mem[_800]]) + 1 > test266151307() or floor32(mem[_800 + mem[_800]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _800 + ceil32(return_data.size) + floor32(mem[_800 + mem[_800]]) + 1
                mem[_800 + ceil32(return_data.size)] = _818
                require _804 + (32 * _818) + 32 <= return_data.size
                t = _800 + _804 + 32
                v = _800 + ceil32(return_data.size) + 32
                while t < _800 + _804 + (32 * _818) + 32:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    continue 
                if mem[_521] < 1:
                    revert with 'NH{q', 17
                if mem[_521] - 1 >= _818:
                    revert with 'NH{q', 50
                _1068 = mem[(32 * mem[_521] - 1) + _800 + ceil32(return_data.size) + 32]
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if mem[(32 * mem[_521] - 1) + _800 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = _1068
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _1086 = mem[(32 * u) + 160]
                _1090 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1090] = 30
                mem[_1090 + 32] = 'SafeMath: subtraction overflow'
                if _1086 <= _1068:
                    if _1068 < _1086:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = _1068 - _1086
                    mem[(32 * u) + 160] = _1068
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _1096 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1096 + idx + 68] = mem[_1090 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1096 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1096 + -mem[64] + 100
            if 0 >= mem[_521]:
                revert with 'NH{q', 50
            mem[_521 + 32] = address(arg1)
            if 1 >= mem[_521]:
                revert with 'NH{q', 50
            mem[_521 + 64] = address(arg2)
            mem[_521 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_521 + 100] = 0 / arg4
            mem[_521 + 132] = 64
            mem[_521 + 164] = mem[_521]
            t = 0
            v = _521 + 32
            w = _521 + 196
            while t < mem[_521]:
                mem[w] = mem[v + 12 len 20]
                t = t + 1
                v = v + 32
                w = w + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _521 + (32 * mem[_521]) + -mem[64] + 192]
            if not ext_call.success:
                if u - 1:
                    if u >= 2:
                        revert with 'NH{q', 50
                    if u >= 2:
                        revert with 'NH{q', 50
                    if 0 <= mem[(32 * u) + 160]:
                        mem[(32 * u) + 96] = 0
                        mem[(32 * u) + 160] = 0
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + _490
                        continue 
                    _834 = mem[(32 * u) + 160]
                    _837 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_837] = 30
                    mem[_837 + 32] = 'SafeMath: subtraction overflow'
                    if _834 <= 0:
                        if 0 < _834:
                            revert with 'NH{q', 17
                        if u >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 96] = -_834
                        mem[(32 * u) + 160] = 0
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + _490
                        continue 
                    _846 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_846 + idx + 68] = mem[_837 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_846 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _846 + -mem[64] + 100
                if 0 >= mem[_521]:
                    revert with 'NH{q', 50
                mem[_521 + 32] = address(arg1)
                if 1 >= mem[_521]:
                    revert with 'NH{q', 50
                mem[_521 + 64] = address(arg2)
                _830 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0 / arg4
                mem[mem[64] + 36] = 64
                _852 = mem[_521]
                mem[mem[64] + 68] = mem[_521]
                t = 0
                v = _521 + 32
                w = mem[64] + 100
                while t < _852:
                    mem[w] = mem[v + 12 len 20]
                    t = t + 1
                    v = v + 32
                    w = w + 32
                    continue 
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _830 + (32 * _852) + -mem[64] + 96]
                if not ext_call.success:
                    if u >= 2:
                        revert with 'NH{q', 50
                    if u >= 2:
                        revert with 'NH{q', 50
                    if 0 <= mem[(32 * u) + 160]:
                        mem[(32 * u) + 96] = 0
                        mem[(32 * u) + 160] = 0
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + _490
                        continue 
                    _1059 = mem[(32 * u) + 160]
                    _1064 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1064] = 30
                    mem[_1064 + 32] = 'SafeMath: subtraction overflow'
                    if _1059 <= 0:
                        if 0 < _1059:
                            revert with 'NH{q', 17
                        if u >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 96] = -_1059
                        mem[(32 * u) + 160] = 0
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + _490
                        continue 
                    _1072 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1072 + idx + 68] = mem[_1064 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1072 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1072 + -mem[64] + 100
                _1039 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1044 = mem[_1039]
                require mem[_1039] <= test266151307()
                require _1039 + mem[_1039] + 31 < _1039 + return_data.size
                _1055 = mem[_1039 + mem[_1039]]
                if mem[_1039 + mem[_1039]] > test266151307():
                    revert with 'NH{q', 65
                if _1039 + ceil32(return_data.size) + floor32(mem[_1039 + mem[_1039]]) + 1 > test266151307() or floor32(mem[_1039 + mem[_1039]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1039 + ceil32(return_data.size) + floor32(mem[_1039 + mem[_1039]]) + 1
                mem[_1039 + ceil32(return_data.size)] = _1055
                require _1044 + (32 * _1055) + 32 <= return_data.size
                t = _1039 + _1044 + 32
                v = _1039 + ceil32(return_data.size) + 32
                while t < _1039 + _1044 + (32 * _1055) + 32:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    continue 
                if mem[_521] < 1:
                    revert with 'NH{q', 17
                if mem[_521] - 1 >= _1055:
                    revert with 'NH{q', 50
                _1239 = mem[(32 * mem[_521] - 1) + _1039 + ceil32(return_data.size) + 32]
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if mem[(32 * mem[_521] - 1) + _1039 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = _1239
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _1249 = mem[(32 * u) + 160]
                _1251 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1251] = 30
                mem[_1251 + 32] = 'SafeMath: subtraction overflow'
                if _1249 <= _1239:
                    if _1239 < _1249:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = _1239 - _1249
                    mem[(32 * u) + 160] = _1239
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _1254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1254 + idx + 68] = mem[_1251 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1254 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1254 + -mem[64] + 100
            _801 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _805 = mem[_801]
            require mem[_801] <= test266151307()
            require _801 + mem[_801] + 31 < _801 + return_data.size
            _820 = mem[_801 + mem[_801]]
            if mem[_801 + mem[_801]] > test266151307():
                revert with 'NH{q', 65
            if _801 + ceil32(return_data.size) + floor32(mem[_801 + mem[_801]]) + 1 > test266151307() or floor32(mem[_801 + mem[_801]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _801 + ceil32(return_data.size) + floor32(mem[_801 + mem[_801]]) + 1
            mem[_801 + ceil32(return_data.size)] = _820
            require _805 + (32 * _820) + 32 <= return_data.size
            t = _801 + _805 + 32
            v = _801 + ceil32(return_data.size) + 32
            while t < _801 + _805 + (32 * _820) + 32:
                require mem[t] == mem[t]
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            if mem[_521] < 1:
                revert with 'NH{q', 17
            if mem[_521] - 1 >= _820:
                revert with 'NH{q', 50
            _1069 = mem[(32 * mem[_521] - 1) + _801 + ceil32(return_data.size) + 32]
            if u - 1:
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if mem[(32 * mem[_521] - 1) + _801 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = _1069
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _1091 = mem[(32 * u) + 160]
                _1093 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1093] = 30
                mem[_1093 + 32] = 'SafeMath: subtraction overflow'
                if _1091 <= _1069:
                    if _1069 < _1091:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = _1069 - _1091
                    mem[(32 * u) + 160] = _1069
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _1099 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1099 + idx + 68] = mem[_1093 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1099 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1099 + -mem[64] + 100
            if 0 >= mem[_521]:
                revert with 'NH{q', 50
            mem[_521 + 32] = address(arg1)
            if 1 >= mem[_521]:
                revert with 'NH{q', 50
            mem[_521 + 64] = address(arg2)
            _1087 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0 / arg4
            mem[mem[64] + 36] = 64
            _1107 = mem[_521]
            mem[mem[64] + 68] = mem[_521]
            t = 0
            v = _521 + 32
            w = mem[64] + 100
            while t < _1107:
                mem[w] = mem[v + 12 len 20]
                t = t + 1
                v = v + 32
                w = w + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1087 + (32 * _1107) + -mem[64] + 96]
            if not ext_call.success:
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _1233 = mem[(32 * u) + 160]
                _1237 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1237] = 30
                mem[_1237 + 32] = 'SafeMath: subtraction overflow'
                if _1233 <= 0:
                    if 0 < _1233:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = -_1233
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _1242 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1242 + idx + 68] = mem[_1237 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1242 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1242 + -mem[64] + 100
            _1211 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1215 = mem[_1211]
            require mem[_1211] <= test266151307()
            require _1211 + mem[_1211] + 31 < _1211 + return_data.size
            _1229 = mem[_1211 + mem[_1211]]
            if mem[_1211 + mem[_1211]] > test266151307():
                revert with 'NH{q', 65
            if _1211 + ceil32(return_data.size) + floor32(mem[_1211 + mem[_1211]]) + 1 > test266151307() or floor32(mem[_1211 + mem[_1211]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1211 + ceil32(return_data.size) + floor32(mem[_1211 + mem[_1211]]) + 1
            mem[_1211 + ceil32(return_data.size)] = _1229
            require _1215 + (32 * _1229) + 32 <= return_data.size
            t = _1211 + _1215 + 32
            v = _1211 + ceil32(return_data.size) + 32
            while t < _1211 + _1215 + (32 * _1229) + 32:
                require mem[t] == mem[t]
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            if mem[_521] < 1:
                revert with 'NH{q', 17
            if mem[_521] - 1 >= _1229:
                revert with 'NH{q', 50
            _1311 = mem[(32 * mem[_521] - 1) + _1211 + ceil32(return_data.size) + 32]
            if u >= 2:
                revert with 'NH{q', 50
            if u >= 2:
                revert with 'NH{q', 50
            if mem[(32 * mem[_521] - 1) + _1211 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                mem[(32 * u) + 96] = 0
                mem[(32 * u) + 160] = _1311
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _490
                continue 
            _1315 = mem[(32 * u) + 160]
            _1317 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1317] = 30
            mem[_1317 + 32] = 'SafeMath: subtraction overflow'
            if _1315 <= _1311:
                if _1311 < _1315:
                    revert with 'NH{q', 17
                if u >= 2:
                    revert with 'NH{q', 50
                mem[(32 * u) + 96] = _1311 - _1315
                mem[(32 * u) + 160] = _1311
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _490
                continue 
            _1319 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1319 + idx + 68] = mem[_1317 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1319 + 98] = 0
            revert with memory
              from mem[64]
               len _1319 + -mem[64] + 100
        if arg3 and mem[(32 * u) + 256] + 1 > -1 / arg3:
            revert with 'NH{q', 17
        if not arg3:
            revert with 'NH{q', 18
        if arg3 + (mem[(32 * u) + 256] * arg3) / arg3 != mem[(32 * u) + 256] + 1:
            revert with 0, 'SafeMath: multiplication overflow'
        _522 = mem[64]
        mem[64] = mem[64] + 64
        mem[_522] = 26
        mem[_522 + 32] = 'SafeMath: division by zero'
        if arg4 <= 0:
            _524 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_524 + idx + 68] = mem[_522 + idx + 32]
                idx = idx + 32
                continue 
            mem[_524 + 94] = 0
            revert with memory
              from mem[64]
               len _524 + -mem[64] + 100
        if not arg4:
            revert with 'NH{q', 18
        _542 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_542 + 32 len 64] = call.data[calldata.size len 64]
        if u:
            if u - 1:
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                else:
                    _556 = mem[(32 * u) + 160]
                    mem[64] = _542 + 160
                    mem[_542 + 96] = 30
                    mem[_542 + 128] = 'SafeMath: subtraction overflow'
                    if _556 > 0:
                        mem[_542 + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_542 + 164] = 32
                        idx = 0
                        while idx < 30:
                            mem[_542 + idx + 228] = mem[_542 + idx + 128]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[_542 + 228 len 30], 0
                    if 0 < _556:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = -_556
                mem[(32 * u) + 160] = 0
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _490
                continue 
            if 0 >= mem[_542]:
                revert with 'NH{q', 50
            mem[_542 + 32] = address(arg1)
            if 1 >= mem[_542]:
                revert with 'NH{q', 50
            mem[_542 + 64] = address(arg2)
            mem[_542 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_542 + 100] = arg3 + (_511 * arg3) / arg4
            mem[_542 + 132] = 64
            mem[_542 + 164] = mem[_542]
            t = 0
            v = _542 + 32
            w = _542 + 196
            while t < mem[_542]:
                mem[w] = mem[v + 12 len 20]
                t = t + 1
                v = v + 32
                w = w + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _542 + (32 * mem[_542]) + -mem[64] + 192]
            if not ext_call.success:
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _827 = mem[(32 * u) + 160]
                _831 = mem[64]
                mem[64] = mem[64] + 64
                mem[_831] = 30
                mem[_831 + 32] = 'SafeMath: subtraction overflow'
                if _827 <= 0:
                    if 0 < _827:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = -_827
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _839 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_839 + idx + 68] = mem[_831 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_839 + 98] = 0
                revert with memory
                  from mem[64]
                   len _839 + -mem[64] + 100
            _798 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _802 = mem[_798]
            require mem[_798] <= test266151307()
            require _798 + mem[_798] + 31 < _798 + return_data.size
            _815 = mem[_798 + mem[_798]]
            if mem[_798 + mem[_798]] > test266151307():
                revert with 'NH{q', 65
            if _798 + ceil32(return_data.size) + floor32(mem[_798 + mem[_798]]) + 1 > test266151307() or floor32(mem[_798 + mem[_798]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _798 + ceil32(return_data.size) + floor32(mem[_798 + mem[_798]]) + 1
            mem[_798 + ceil32(return_data.size)] = _815
            require _802 + (32 * _815) + 32 <= return_data.size
            t = _798 + _802 + 32
            v = _798 + ceil32(return_data.size) + 32
            while t < _798 + _802 + (32 * _815) + 32:
                require mem[t] == mem[t]
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            if mem[_542] < 1:
                revert with 'NH{q', 17
            if mem[_542] - 1 >= _815:
                revert with 'NH{q', 50
            _1066 = mem[(32 * mem[_542] - 1) + _798 + ceil32(return_data.size) + 32]
            if u >= 2:
                revert with 'NH{q', 50
            if u >= 2:
                revert with 'NH{q', 50
            if mem[(32 * mem[_542] - 1) + _798 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                mem[(32 * u) + 96] = 0
                mem[(32 * u) + 160] = _1066
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _490
                continue 
            _1084 = mem[(32 * u) + 160]
            _1088 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1088] = 30
            mem[_1088 + 32] = 'SafeMath: subtraction overflow'
            if _1084 <= _1066:
                if _1066 < _1084:
                    revert with 'NH{q', 17
                if u >= 2:
                    revert with 'NH{q', 50
                mem[(32 * u) + 96] = _1066 - _1084
                mem[(32 * u) + 160] = _1066
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _490
                continue 
            _1094 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1094 + idx + 68] = mem[_1088 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1094 + 98] = 0
            revert with memory
              from mem[64]
               len _1094 + -mem[64] + 100
        if 0 >= mem[_542]:
            revert with 'NH{q', 50
        mem[_542 + 32] = address(arg1)
        if 1 >= mem[_542]:
            revert with 'NH{q', 50
        mem[_542 + 64] = address(arg2)
        mem[_542 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_542 + 100] = arg3 + (_511 * arg3) / arg4
        mem[_542 + 132] = 64
        mem[_542 + 164] = mem[_542]
        t = 0
        v = _542 + 32
        w = _542 + 196
        while t < mem[_542]:
            mem[w] = mem[v + 12 len 20]
            t = t + 1
            v = v + 32
            w = w + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _542 + (32 * mem[_542]) + -mem[64] + 192]
        if not ext_call.success:
            if u - 1:
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _832 = mem[(32 * u) + 160]
                _836 = mem[64]
                mem[64] = mem[64] + 64
                mem[_836] = 30
                mem[_836 + 32] = 'SafeMath: subtraction overflow'
                if _832 <= 0:
                    if 0 < _832:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = -_832
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _845 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_845 + idx + 68] = mem[_836 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_845 + 98] = 0
                revert with memory
                  from mem[64]
                   len _845 + -mem[64] + 100
            if 0 >= mem[_542]:
                revert with 'NH{q', 50
            mem[_542 + 32] = address(arg1)
            if 1 >= mem[_542]:
                revert with 'NH{q', 50
            mem[_542 + 64] = address(arg2)
            _828 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3 + (_511 * arg3) / arg4
            mem[mem[64] + 36] = 64
            _850 = mem[_542]
            mem[mem[64] + 68] = mem[_542]
            t = 0
            v = _542 + 32
            w = mem[64] + 100
            while t < _850:
                mem[w] = mem[v + 12 len 20]
                t = t + 1
                v = v + 32
                w = w + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _828 + (32 * _850) + -mem[64] + 96]
            if not ext_call.success:
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _1058 = mem[(32 * u) + 160]
                _1061 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1061] = 30
                mem[_1061 + 32] = 'SafeMath: subtraction overflow'
                if _1058 <= 0:
                    if 0 < _1058:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = -_1058
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _490
                    continue 
                _1070 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1070 + idx + 68] = mem[_1061 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1070 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1070 + -mem[64] + 100
            _1038 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1041 = mem[_1038]
            require mem[_1038] <= test266151307()
            require _1038 + mem[_1038] + 31 < _1038 + return_data.size
            _1054 = mem[_1038 + mem[_1038]]
            if mem[_1038 + mem[_1038]] > test266151307():
                revert with 'NH{q', 65
            if _1038 + ceil32(return_data.size) + floor32(mem[_1038 + mem[_1038]]) + 1 > test266151307() or floor32(mem[_1038 + mem[_1038]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1038 + ceil32(return_data.size) + floor32(mem[_1038 + mem[_1038]]) + 1
            mem[_1038 + ceil32(return_data.size)] = _1054
            require _1041 + (32 * _1054) + 32 <= return_data.size
            t = _1038 + _1041 + 32
            v = _1038 + ceil32(return_data.size) + 32
            while t < _1038 + _1041 + (32 * _1054) + 32:
                require mem[t] == mem[t]
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            if mem[_542] < 1:
                revert with 'NH{q', 17
            if mem[_542] - 1 >= _1054:
                revert with 'NH{q', 50
            _1238 = mem[(32 * mem[_542] - 1) + _1038 + ceil32(return_data.size) + 32]
            if u >= 2:
                revert with 'NH{q', 50
            if u >= 2:
                revert with 'NH{q', 50
            if mem[(32 * mem[_542] - 1) + _1038 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                mem[(32 * u) + 96] = 0
                mem[(32 * u) + 160] = _1238
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _490
                continue 
            _1248 = mem[(32 * u) + 160]
            _1250 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1250] = 30
            mem[_1250 + 32] = 'SafeMath: subtraction overflow'
            if _1248 <= _1238:
                if _1238 < _1248:
                    revert with 'NH{q', 17
                if u >= 2:
                    revert with 'NH{q', 50
                mem[(32 * u) + 96] = _1238 - _1248
                mem[(32 * u) + 160] = _1238
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _490
                continue 
            _1252 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1252 + idx + 68] = mem[_1250 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1252 + 98] = 0
            revert with memory
              from mem[64]
               len _1252 + -mem[64] + 100
        _799 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _803 = mem[_799]
        require mem[_799] <= test266151307()
        require _799 + mem[_799] + 31 < _799 + return_data.size
        _817 = mem[_799 + mem[_799]]
        if mem[_799 + mem[_799]] > test266151307():
            revert with 'NH{q', 65
        if _799 + ceil32(return_data.size) + floor32(mem[_799 + mem[_799]]) + 1 > test266151307() or floor32(mem[_799 + mem[_799]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _799 + ceil32(return_data.size) + floor32(mem[_799 + mem[_799]]) + 1
        mem[_799 + ceil32(return_data.size)] = _817
        require _803 + (32 * _817) + 32 <= return_data.size
        t = _799 + _803 + 32
        v = _799 + ceil32(return_data.size) + 32
        while t < _799 + _803 + (32 * _817) + 32:
            require mem[t] == mem[t]
            mem[v] = mem[t]
            t = t + 32
            v = v + 32
            continue 
        if mem[_542] < 1:
            revert with 'NH{q', 17
        if mem[_542] - 1 >= _817:
            revert with 'NH{q', 50
        _1067 = mem[(32 * mem[_542] - 1) + _799 + ceil32(return_data.size) + 32]
        if u - 1:
            if u >= 2:
                revert with 'NH{q', 50
            if u >= 2:
                revert with 'NH{q', 50
            if mem[(32 * mem[_542] - 1) + _799 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                mem[(32 * u) + 96] = 0
                mem[(32 * u) + 160] = _1067
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _490
                continue 
            _1089 = mem[(32 * u) + 160]
            _1092 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1092] = 30
            mem[_1092 + 32] = 'SafeMath: subtraction overflow'
            if _1089 <= _1067:
                if _1067 < _1089:
                    revert with 'NH{q', 17
                if u >= 2:
                    revert with 'NH{q', 50
                mem[(32 * u) + 96] = _1067 - _1089
                mem[(32 * u) + 160] = _1067
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _490
                continue 
            _1098 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1098 + idx + 68] = mem[_1092 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1098 + 98] = 0
            revert with memory
              from mem[64]
               len _1098 + -mem[64] + 100
        if 0 >= mem[_542]:
            revert with 'NH{q', 50
        mem[_542 + 32] = address(arg1)
        if 1 >= mem[_542]:
            revert with 'NH{q', 50
        mem[_542 + 64] = address(arg2)
        _1085 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3 + (_511 * arg3) / arg4
        mem[mem[64] + 36] = 64
        _1105 = mem[_542]
        mem[mem[64] + 68] = mem[_542]
        t = 0
        v = _542 + 32
        w = mem[64] + 100
        while t < _1105:
            mem[w] = mem[v + 12 len 20]
            t = t + 1
            v = v + 32
            w = w + 32
            continue 
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1085 + (32 * _1105) + -mem[64] + 96]
        if not ext_call.success:
            if u >= 2:
                revert with 'NH{q', 50
            if u >= 2:
                revert with 'NH{q', 50
            if 0 <= mem[(32 * u) + 160]:
                mem[(32 * u) + 96] = 0
                mem[(32 * u) + 160] = 0
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _490
                continue 
            _1232 = mem[(32 * u) + 160]
            _1235 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1235] = 30
            mem[_1235 + 32] = 'SafeMath: subtraction overflow'
            if _1232 <= 0:
                if 0 < _1232:
                    revert with 'NH{q', 17
                if u >= 2:
                    revert with 'NH{q', 50
                mem[(32 * u) + 96] = -_1232
                mem[(32 * u) + 160] = 0
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _490
                continue 
            _1240 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1240 + idx + 68] = mem[_1235 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1240 + 98] = 0
            revert with memory
              from mem[64]
               len _1240 + -mem[64] + 100
        _1210 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1213 = mem[_1210]
        require mem[_1210] <= test266151307()
        require _1210 + mem[_1210] + 31 < _1210 + return_data.size
        _1228 = mem[_1210 + mem[_1210]]
        if mem[_1210 + mem[_1210]] > test266151307():
            revert with 'NH{q', 65
        if _1210 + ceil32(return_data.size) + floor32(mem[_1210 + mem[_1210]]) + 1 > test266151307() or floor32(mem[_1210 + mem[_1210]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1210 + ceil32(return_data.size) + floor32(mem[_1210 + mem[_1210]]) + 1
        mem[_1210 + ceil32(return_data.size)] = _1228
        require _1213 + (32 * _1228) + 32 <= return_data.size
        t = _1210 + _1213 + 32
        v = _1210 + ceil32(return_data.size) + 32
        while t < _1210 + _1213 + (32 * _1228) + 32:
            require mem[t] == mem[t]
            mem[v] = mem[t]
            t = t + 32
            v = v + 32
            continue 
        if mem[_542] < 1:
            revert with 'NH{q', 17
        if mem[_542] - 1 >= _1228:
            revert with 'NH{q', 50
        _1310 = mem[(32 * mem[_542] - 1) + _1210 + ceil32(return_data.size) + 32]
        if u >= 2:
            revert with 'NH{q', 50
        if u >= 2:
            revert with 'NH{q', 50
        if mem[(32 * mem[_542] - 1) + _1210 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
            mem[(32 * u) + 96] = 0
            mem[(32 * u) + 160] = _1310
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + _490
            continue 
        _1314 = mem[(32 * u) + 160]
        _1316 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1316] = 30
        mem[_1316 + 32] = 'SafeMath: subtraction overflow'
        if _1314 <= _1310:
            if _1310 < _1314:
                revert with 'NH{q', 17
            if u >= 2:
                revert with 'NH{q', 50
            mem[(32 * u) + 96] = _1310 - _1314
            mem[(32 * u) + 160] = _1310
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + _490
            continue 
        _1318 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_1318 + idx + 68] = mem[_1316 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1318 + 98] = 0
        revert with memory
          from mem[64]
           len _1318 + -mem[64] + 100
    mem[mem[64]] = s
    mem[mem[64] + 32] = 64
    _455 = mem[224]
    mem[mem[64] + 64] = mem[224]
    mem[mem[64] + 96 len 32 * _455] = mem[256 len 32 * _455]
    return s, 64, mem[mem[64] + 64 len (32 * _455) + 32]
}

function sub_5ada1356(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    mem[96 len 64] = call.data[calldata.size len 64]
    mem[160 len 64] = call.data[calldata.size len 64]
    mem[224] = 2
    mem[64] = 320
    mem[256 len 64] = call.data[calldata.size len 64]
    idx = 0
    while idx < 2:
        _22 = mem[64]
        mem[64] = mem[64] + 64
        mem[_22] = 26
        mem[_22 + 32] = 'SafeMath: division by zero'
        _25 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_25 + 32 len 64] = call.data[calldata.size len 64]
        if idx:
            if idx - 1:
                if idx >= 2:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 96] = 0
                mem[(32 * idx) + 160] = 0
            else:
                if 0 >= mem[_25]:
                    revert with 'NH{q', 50
                mem[_25 + 32] = address(arg1)
                if 1 >= mem[_25]:
                    revert with 'NH{q', 50
                mem[_25 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[_25 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_25 + 100] = arg3 / 10
                mem[_25 + 132] = 64
                mem[_25 + 164] = mem[_25]
                s = 0
                t = _25 + 32
                u = _25 + 196
                while s < mem[_25]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _25 + (32 * mem[_25]) + -mem[64] + 192]
                if not ext_call.success:
                    if idx >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 96] = 0
                    mem[(32 * idx) + 160] = 0
                else:
                    _98 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _100 = mem[_98]
                    require mem[_98] <= test266151307()
                    require _98 + mem[_98] + 31 < _98 + return_data.size
                    _102 = mem[_98 + mem[_98]]
                    if mem[_98 + mem[_98]] > test266151307():
                        revert with 'NH{q', 65
                    if _98 + ceil32(return_data.size) + floor32(mem[_98 + mem[_98]]) + 1 > test266151307() or floor32(mem[_98 + mem[_98]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _98 + ceil32(return_data.size) + floor32(mem[_98 + mem[_98]]) + 1
                    mem[_98 + ceil32(return_data.size)] = _102
                    require _100 + (32 * _102) + 32 <= return_data.size
                    s = _98 + _100 + 32
                    t = _98 + ceil32(return_data.size) + 32
                    while s < _98 + _100 + (32 * _102) + 32:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        continue 
                    if mem[_25] < 1:
                        revert with 'NH{q', 17
                    if mem[_25] - 1 >= _102:
                        revert with 'NH{q', 50
                    if idx >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 96] = mem[(32 * mem[_25] - 1) + _98 + ceil32(return_data.size) + 32]
                    mem[(32 * idx) + 160] = mem[(32 * idx) + 96]
        else:
            if 0 >= mem[_25]:
                revert with 'NH{q', 50
            mem[_25 + 32] = address(arg1)
            if 1 >= mem[_25]:
                revert with 'NH{q', 50
            mem[_25 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[_25 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_25 + 100] = arg3 / 10
            mem[_25 + 132] = 64
            mem[_25 + 164] = mem[_25]
            s = 0
            t = _25 + 32
            u = _25 + 196
            while s < mem[_25]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _25 + (32 * mem[_25]) + -mem[64] + 192]
            if not ext_call.success:
                if idx - 1:
                    if idx >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 96] = 0
                    mem[(32 * idx) + 160] = 0
                else:
                    if 0 >= mem[_25]:
                        revert with 'NH{q', 50
                    mem[_25 + 32] = address(arg1)
                    if 1 >= mem[_25]:
                        revert with 'NH{q', 50
                    mem[_25 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    _110 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3 / 10
                    mem[mem[64] + 36] = 64
                    _115 = mem[_25]
                    mem[mem[64] + 68] = mem[_25]
                    s = 0
                    t = _25 + 32
                    u = mem[64] + 100
                    while s < _115:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _110 + (32 * _115) + -mem[64] + 96]
                    if not ext_call.success:
                        if idx >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 96] = 0
                        mem[(32 * idx) + 160] = 0
                    else:
                        _421 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _425 = mem[_421]
                        require mem[_421] <= test266151307()
                        require _421 + mem[_421] + 31 < _421 + return_data.size
                        _428 = mem[_421 + mem[_421]]
                        if mem[_421 + mem[_421]] > test266151307():
                            revert with 'NH{q', 65
                        if _421 + ceil32(return_data.size) + floor32(mem[_421 + mem[_421]]) + 1 > test266151307() or floor32(mem[_421 + mem[_421]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _421 + ceil32(return_data.size) + floor32(mem[_421 + mem[_421]]) + 1
                        mem[_421 + ceil32(return_data.size)] = _428
                        require _425 + (32 * _428) + 32 <= return_data.size
                        s = _421 + _425 + 32
                        t = _421 + ceil32(return_data.size) + 32
                        while s < _421 + _425 + (32 * _428) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if mem[_25] < 1:
                            revert with 'NH{q', 17
                        if mem[_25] - 1 >= _428:
                            revert with 'NH{q', 50
                        if idx >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 96] = mem[(32 * mem[_25] - 1) + _421 + ceil32(return_data.size) + 32]
                        mem[(32 * idx) + 160] = mem[(32 * idx) + 96]
            else:
                _99 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _101 = mem[_99]
                require mem[_99] <= test266151307()
                require _99 + mem[_99] + 31 < _99 + return_data.size
                _104 = mem[_99 + mem[_99]]
                if mem[_99 + mem[_99]] > test266151307():
                    revert with 'NH{q', 65
                if _99 + ceil32(return_data.size) + floor32(mem[_99 + mem[_99]]) + 1 > test266151307() or floor32(mem[_99 + mem[_99]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _99 + ceil32(return_data.size) + floor32(mem[_99 + mem[_99]]) + 1
                mem[_99 + ceil32(return_data.size)] = _104
                require _101 + (32 * _104) + 32 <= return_data.size
                s = _99 + _101 + 32
                t = _99 + ceil32(return_data.size) + 32
                while s < _99 + _101 + (32 * _104) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[_25] < 1:
                    revert with 'NH{q', 17
                if mem[_25] - 1 >= _104:
                    revert with 'NH{q', 50
                if idx - 1:
                    if idx >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 96] = mem[(32 * mem[_25] - 1) + _99 + ceil32(return_data.size) + 32]
                    mem[(32 * idx) + 160] = mem[(32 * idx) + 96]
                else:
                    if 0 >= mem[_25]:
                        revert with 'NH{q', 50
                    mem[_25 + 32] = address(arg1)
                    if 1 >= mem[_25]:
                        revert with 'NH{q', 50
                    mem[_25 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    _440 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3 / 10
                    mem[mem[64] + 36] = 64
                    _443 = mem[_25]
                    mem[mem[64] + 68] = mem[_25]
                    s = 0
                    t = _25 + 32
                    u = mem[64] + 100
                    while s < _443:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _440 + (32 * _443) + -mem[64] + 96]
                    if not ext_call.success:
                        if idx >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 96] = 0
                        mem[(32 * idx) + 160] = 0
                    else:
                        _483 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _486 = mem[_483]
                        require mem[_483] <= test266151307()
                        require _483 + mem[_483] + 31 < _483 + return_data.size
                        _488 = mem[_483 + mem[_483]]
                        if mem[_483 + mem[_483]] > test266151307():
                            revert with 'NH{q', 65
                        if _483 + ceil32(return_data.size) + floor32(mem[_483 + mem[_483]]) + 1 > test266151307() or floor32(mem[_483 + mem[_483]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _483 + ceil32(return_data.size) + floor32(mem[_483 + mem[_483]]) + 1
                        mem[_483 + ceil32(return_data.size)] = _488
                        require _486 + (32 * _488) + 32 <= return_data.size
                        s = _483 + _486 + 32
                        t = _483 + ceil32(return_data.size) + 32
                        while s < _483 + _486 + (32 * _488) + 32:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            continue 
                        if mem[_25] < 1:
                            revert with 'NH{q', 17
                        if mem[_25] - 1 >= _488:
                            revert with 'NH{q', 50
                        if idx >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 96] = mem[(32 * mem[_25] - 1) + _483 + ceil32(return_data.size) + 32]
                        mem[(32 * idx) + 160] = mem[(32 * idx) + 96]
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 10:
        t = 1
        u = 0
        while t < 2:
            if u >= 2:
                revert with 'NH{q', 50
            if t >= 2:
                revert with 'NH{q', 50
            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if mem[(32 * t) + 96] <= mem[(32 * u) + 96]:
                t = t + 1
                u = u
                continue 
            t = t + 1
            u = t
            continue 
        if u >= 2:
            revert with 'NH{q', 50
        _478 = mem[(32 * u) + 96]
        if s > -mem[(32 * u) + 96] - 1:
            revert with 'NH{q', 17
        if s + mem[(32 * u) + 96] < s:
            revert with 0, 'SafeMath: addition overflow'
        if u >= mem[224]:
            revert with 'NH{q', 50
        if not mem[(32 * u) + 256] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        mem[(32 * u) + 256] = mem[(32 * u) + 256] + 1
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= 10:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * u) + 96]
            continue 
        if u >= mem[224]:
            revert with 'NH{q', 50
        _508 = mem[(32 * u) + 256]
        if mem[(32 * u) + 256] > -2:
            revert with 'NH{q', 17
        if not arg3:
            _520 = mem[64]
            mem[64] = mem[64] + 64
            mem[_520] = 26
            mem[_520 + 32] = 'SafeMath: division by zero'
            _534 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_534 + 32 len 64] = call.data[calldata.size len 64]
            if u:
                if u - 1:
                    if u >= 2:
                        revert with 'NH{q', 50
                    if u >= 2:
                        revert with 'NH{q', 50
                    if 0 <= mem[(32 * u) + 160]:
                        mem[(32 * u) + 96] = 0
                    else:
                        _547 = mem[(32 * u) + 160]
                        mem[64] = _534 + 160
                        mem[_534 + 96] = 30
                        mem[_534 + 128] = 'SafeMath: subtraction overflow'
                        if _547 > 0:
                            mem[_534 + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_534 + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[_534 + idx + 228] = mem[_534 + idx + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_534 + 228 len 30], 0
                        if 0 < _547:
                            revert with 'NH{q', 17
                        if u >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 96] = -_547
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                if 0 >= mem[_534]:
                    revert with 'NH{q', 50
                mem[_534 + 32] = address(arg1)
                if 1 >= mem[_534]:
                    revert with 'NH{q', 50
                mem[_534 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[_534 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_534 + 100] = 0
                mem[_534 + 132] = 64
                mem[_534 + 164] = mem[_534]
                t = 0
                v = _534 + 32
                w = _534 + 196
                while t < mem[_534]:
                    mem[w] = mem[v + 12 len 20]
                    t = t + 1
                    v = v + 32
                    w = w + 32
                    continue 
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _534 + (32 * mem[_534]) + -mem[64] + 192]
                if not ext_call.success:
                    if u >= 2:
                        revert with 'NH{q', 50
                    if u >= 2:
                        revert with 'NH{q', 50
                    if 0 <= mem[(32 * u) + 160]:
                        mem[(32 * u) + 96] = 0
                        mem[(32 * u) + 160] = 0
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + _478
                        continue 
                    _888 = mem[(32 * u) + 160]
                    _893 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_893] = 30
                    mem[_893 + 32] = 'SafeMath: subtraction overflow'
                    if _888 <= 0:
                        if 0 < _888:
                            revert with 'NH{q', 17
                        if u >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 96] = -_888
                        mem[(32 * u) + 160] = 0
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + _478
                        continue 
                    _904 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_904 + idx + 68] = mem[_893 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_904 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _904 + -mem[64] + 100
                _852 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _858 = mem[_852]
                require mem[_852] <= test266151307()
                require _852 + mem[_852] + 31 < _852 + return_data.size
                _871 = mem[_852 + mem[_852]]
                if mem[_852 + mem[_852]] > test266151307():
                    revert with 'NH{q', 65
                if _852 + ceil32(return_data.size) + floor32(mem[_852 + mem[_852]]) + 1 > test266151307() or floor32(mem[_852 + mem[_852]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _852 + ceil32(return_data.size) + floor32(mem[_852 + mem[_852]]) + 1
                mem[_852 + ceil32(return_data.size)] = _871
                require _858 + (32 * _871) + 32 <= return_data.size
                t = _852 + _858 + 32
                v = _852 + ceil32(return_data.size) + 32
                while t < _852 + _858 + (32 * _871) + 32:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    continue 
                if mem[_534] < 1:
                    revert with 'NH{q', 17
                if mem[_534] - 1 >= _871:
                    revert with 'NH{q', 50
                _1449 = mem[(32 * mem[_534] - 1) + _852 + ceil32(return_data.size) + 32]
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if mem[(32 * mem[_534] - 1) + _852 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = _1449
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _1473 = mem[(32 * u) + 160]
                _1477 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1477] = 30
                mem[_1477 + 32] = 'SafeMath: subtraction overflow'
                if _1473 <= _1449:
                    if _1449 < _1473:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = _1449 - _1473
                    mem[(32 * u) + 160] = _1449
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _1483 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1483 + idx + 68] = mem[_1477 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1483 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1483 + -mem[64] + 100
            if 0 >= mem[_534]:
                revert with 'NH{q', 50
            mem[_534 + 32] = address(arg1)
            if 1 >= mem[_534]:
                revert with 'NH{q', 50
            mem[_534 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[_534 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_534 + 100] = 0
            mem[_534 + 132] = 64
            mem[_534 + 164] = mem[_534]
            t = 0
            v = _534 + 32
            w = _534 + 196
            while t < mem[_534]:
                mem[w] = mem[v + 12 len 20]
                t = t + 1
                v = v + 32
                w = w + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _534 + (32 * mem[_534]) + -mem[64] + 192]
            if not ext_call.success:
                if u - 1:
                    if u >= 2:
                        revert with 'NH{q', 50
                    if u >= 2:
                        revert with 'NH{q', 50
                    if 0 <= mem[(32 * u) + 160]:
                        mem[(32 * u) + 96] = 0
                        mem[(32 * u) + 160] = 0
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + _478
                        continue 
                    _894 = mem[(32 * u) + 160]
                    _897 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_897] = 30
                    mem[_897 + 32] = 'SafeMath: subtraction overflow'
                    if _894 <= 0:
                        if 0 < _894:
                            revert with 'NH{q', 17
                        if u >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 96] = -_894
                        mem[(32 * u) + 160] = 0
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + _478
                        continue 
                    _908 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_908 + idx + 68] = mem[_897 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_908 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _908 + -mem[64] + 100
                if 0 >= mem[_534]:
                    revert with 'NH{q', 50
                mem[_534 + 32] = address(arg1)
                if 1 >= mem[_534]:
                    revert with 'NH{q', 50
                mem[_534 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                _889 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 64
                _916 = mem[_534]
                mem[mem[64] + 68] = mem[_534]
                t = 0
                v = _534 + 32
                w = mem[64] + 100
                while t < _916:
                    mem[w] = mem[v + 12 len 20]
                    t = t + 1
                    v = v + 32
                    w = w + 32
                    continue 
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _889 + (32 * _916) + -mem[64] + 96]
                if not ext_call.success:
                    if u >= 2:
                        revert with 'NH{q', 50
                    if u >= 2:
                        revert with 'NH{q', 50
                    if 0 <= mem[(32 * u) + 160]:
                        mem[(32 * u) + 96] = 0
                        mem[(32 * u) + 160] = 0
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + _478
                        continue 
                    _1436 = mem[(32 * u) + 160]
                    _1443 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1443] = 30
                    mem[_1443 + 32] = 'SafeMath: subtraction overflow'
                    if _1436 <= 0:
                        if 0 < _1436:
                            revert with 'NH{q', 17
                        if u >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * u) + 96] = -_1436
                        mem[(32 * u) + 160] = 0
                        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + _478
                        continue 
                    _1454 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1454 + idx + 68] = mem[_1443 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1454 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1454 + -mem[64] + 100
                _1409 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1418 = mem[_1409]
                require mem[_1409] <= test266151307()
                require _1409 + mem[_1409] + 31 < _1409 + return_data.size
                _1431 = mem[_1409 + mem[_1409]]
                if mem[_1409 + mem[_1409]] > test266151307():
                    revert with 'NH{q', 65
                if _1409 + ceil32(return_data.size) + floor32(mem[_1409 + mem[_1409]]) + 1 > test266151307() or floor32(mem[_1409 + mem[_1409]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1409 + ceil32(return_data.size) + floor32(mem[_1409 + mem[_1409]]) + 1
                mem[_1409 + ceil32(return_data.size)] = _1431
                require _1418 + (32 * _1431) + 32 <= return_data.size
                t = _1409 + _1418 + 32
                v = _1409 + ceil32(return_data.size) + 32
                while t < _1409 + _1418 + (32 * _1431) + 32:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    continue 
                if mem[_534] < 1:
                    revert with 'NH{q', 17
                if mem[_534] - 1 >= _1431:
                    revert with 'NH{q', 50
                _1660 = mem[(32 * mem[_534] - 1) + _1409 + ceil32(return_data.size) + 32]
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if mem[(32 * mem[_534] - 1) + _1409 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = _1660
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _1673 = mem[(32 * u) + 160]
                _1675 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1675] = 30
                mem[_1675 + 32] = 'SafeMath: subtraction overflow'
                if _1673 <= _1660:
                    if _1660 < _1673:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = _1660 - _1673
                    mem[(32 * u) + 160] = _1660
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _1678 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1678 + idx + 68] = mem[_1675 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1678 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1678 + -mem[64] + 100
            _853 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _859 = mem[_853]
            require mem[_853] <= test266151307()
            require _853 + mem[_853] + 31 < _853 + return_data.size
            _873 = mem[_853 + mem[_853]]
            if mem[_853 + mem[_853]] > test266151307():
                revert with 'NH{q', 65
            if _853 + ceil32(return_data.size) + floor32(mem[_853 + mem[_853]]) + 1 > test266151307() or floor32(mem[_853 + mem[_853]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _853 + ceil32(return_data.size) + floor32(mem[_853 + mem[_853]]) + 1
            mem[_853 + ceil32(return_data.size)] = _873
            require _859 + (32 * _873) + 32 <= return_data.size
            t = _853 + _859 + 32
            v = _853 + ceil32(return_data.size) + 32
            while t < _853 + _859 + (32 * _873) + 32:
                require mem[t] == mem[t]
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            if mem[_534] < 1:
                revert with 'NH{q', 17
            if mem[_534] - 1 >= _873:
                revert with 'NH{q', 50
            _1450 = mem[(32 * mem[_534] - 1) + _853 + ceil32(return_data.size) + 32]
            if u - 1:
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if mem[(32 * mem[_534] - 1) + _853 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = _1450
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _1478 = mem[(32 * u) + 160]
                _1480 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1480] = 30
                mem[_1480 + 32] = 'SafeMath: subtraction overflow'
                if _1478 <= _1450:
                    if _1450 < _1478:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = _1450 - _1478
                    mem[(32 * u) + 160] = _1450
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _1486 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1486 + idx + 68] = mem[_1480 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1486 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1486 + -mem[64] + 100
            if 0 >= mem[_534]:
                revert with 'NH{q', 50
            mem[_534 + 32] = address(arg1)
            if 1 >= mem[_534]:
                revert with 'NH{q', 50
            mem[_534 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            _1474 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 64
            _1496 = mem[_534]
            mem[mem[64] + 68] = mem[_534]
            t = 0
            v = _534 + 32
            w = mem[64] + 100
            while t < _1496:
                mem[w] = mem[v + 12 len 20]
                t = t + 1
                v = v + 32
                w = w + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1474 + (32 * _1496) + -mem[64] + 96]
            if not ext_call.success:
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _1651 = mem[(32 * u) + 160]
                _1657 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1657] = 30
                mem[_1657 + 32] = 'SafeMath: subtraction overflow'
                if _1651 <= 0:
                    if 0 < _1651:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = -_1651
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _1664 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1664 + idx + 68] = mem[_1657 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1664 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1664 + -mem[64] + 100
            _1623 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1629 = mem[_1623]
            require mem[_1623] <= test266151307()
            require _1623 + mem[_1623] + 31 < _1623 + return_data.size
            _1644 = mem[_1623 + mem[_1623]]
            if mem[_1623 + mem[_1623]] > test266151307():
                revert with 'NH{q', 65
            if _1623 + ceil32(return_data.size) + floor32(mem[_1623 + mem[_1623]]) + 1 > test266151307() or floor32(mem[_1623 + mem[_1623]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1623 + ceil32(return_data.size) + floor32(mem[_1623 + mem[_1623]]) + 1
            mem[_1623 + ceil32(return_data.size)] = _1644
            require _1629 + (32 * _1644) + 32 <= return_data.size
            t = _1623 + _1629 + 32
            v = _1623 + ceil32(return_data.size) + 32
            while t < _1623 + _1629 + (32 * _1644) + 32:
                require mem[t] == mem[t]
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            if mem[_534] < 1:
                revert with 'NH{q', 17
            if mem[_534] - 1 >= _1644:
                revert with 'NH{q', 50
            _2049 = mem[(32 * mem[_534] - 1) + _1623 + ceil32(return_data.size) + 32]
            if u >= 2:
                revert with 'NH{q', 50
            if u >= 2:
                revert with 'NH{q', 50
            if mem[(32 * mem[_534] - 1) + _1623 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                mem[(32 * u) + 96] = 0
                mem[(32 * u) + 160] = _2049
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _478
                continue 
            _2068 = mem[(32 * u) + 160]
            _2070 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2070] = 30
            mem[_2070 + 32] = 'SafeMath: subtraction overflow'
            if _2068 <= _2049:
                if _2049 < _2068:
                    revert with 'NH{q', 17
                if u >= 2:
                    revert with 'NH{q', 50
                mem[(32 * u) + 96] = _2049 - _2068
                mem[(32 * u) + 160] = _2049
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _478
                continue 
            _2074 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_2074 + idx + 68] = mem[_2070 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2074 + 98] = 0
            revert with memory
              from mem[64]
               len _2074 + -mem[64] + 100
        if arg3 and mem[(32 * u) + 256] + 1 > -1 / arg3:
            revert with 'NH{q', 17
        if not arg3:
            revert with 'NH{q', 18
        if arg3 + (mem[(32 * u) + 256] * arg3) / arg3 != mem[(32 * u) + 256] + 1:
            revert with 0, 'SafeMath: multiplication overflow'
        _536 = mem[64]
        mem[64] = mem[64] + 64
        mem[_536] = 26
        mem[_536 + 32] = 'SafeMath: division by zero'
        _559 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_559 + 32 len 64] = call.data[calldata.size len 64]
        if u:
            if u - 1:
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                else:
                    _578 = mem[(32 * u) + 160]
                    mem[64] = _559 + 160
                    mem[_559 + 96] = 30
                    mem[_559 + 128] = 'SafeMath: subtraction overflow'
                    if _578 > 0:
                        mem[_559 + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_559 + 164] = 32
                        idx = 0
                        while idx < 30:
                            mem[_559 + idx + 228] = mem[_559 + idx + 128]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[_559 + 228 len 30], 0
                    if 0 < _578:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = -_578
                mem[(32 * u) + 160] = 0
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _478
                continue 
            if 0 >= mem[_559]:
                revert with 'NH{q', 50
            mem[_559 + 32] = address(arg1)
            if 1 >= mem[_559]:
                revert with 'NH{q', 50
            mem[_559 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[_559 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_559 + 100] = arg3 + (_508 * arg3) / 10
            mem[_559 + 132] = 64
            mem[_559 + 164] = mem[_559]
            t = 0
            v = _559 + 32
            w = _559 + 196
            while t < mem[_559]:
                mem[w] = mem[v + 12 len 20]
                t = t + 1
                v = v + 32
                w = w + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _559 + (32 * mem[_559]) + -mem[64] + 192]
            if not ext_call.success:
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _886 = mem[(32 * u) + 160]
                _891 = mem[64]
                mem[64] = mem[64] + 64
                mem[_891] = 30
                mem[_891 + 32] = 'SafeMath: subtraction overflow'
                if _886 <= 0:
                    if 0 < _886:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = -_886
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _901 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_901 + idx + 68] = mem[_891 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_901 + 98] = 0
                revert with memory
                  from mem[64]
                   len _901 + -mem[64] + 100
            _850 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _856 = mem[_850]
            require mem[_850] <= test266151307()
            require _850 + mem[_850] + 31 < _850 + return_data.size
            _868 = mem[_850 + mem[_850]]
            if mem[_850 + mem[_850]] > test266151307():
                revert with 'NH{q', 65
            if _850 + ceil32(return_data.size) + floor32(mem[_850 + mem[_850]]) + 1 > test266151307() or floor32(mem[_850 + mem[_850]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _850 + ceil32(return_data.size) + floor32(mem[_850 + mem[_850]]) + 1
            mem[_850 + ceil32(return_data.size)] = _868
            require _856 + (32 * _868) + 32 <= return_data.size
            t = _850 + _856 + 32
            v = _850 + ceil32(return_data.size) + 32
            while t < _850 + _856 + (32 * _868) + 32:
                require mem[t] == mem[t]
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            if mem[_559] < 1:
                revert with 'NH{q', 17
            if mem[_559] - 1 >= _868:
                revert with 'NH{q', 50
            _1447 = mem[(32 * mem[_559] - 1) + _850 + ceil32(return_data.size) + 32]
            if u >= 2:
                revert with 'NH{q', 50
            if u >= 2:
                revert with 'NH{q', 50
            if mem[(32 * mem[_559] - 1) + _850 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                mem[(32 * u) + 96] = 0
                mem[(32 * u) + 160] = _1447
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _478
                continue 
            _1471 = mem[(32 * u) + 160]
            _1475 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1475] = 30
            mem[_1475 + 32] = 'SafeMath: subtraction overflow'
            if _1471 <= _1447:
                if _1447 < _1471:
                    revert with 'NH{q', 17
                if u >= 2:
                    revert with 'NH{q', 50
                mem[(32 * u) + 96] = _1447 - _1471
                mem[(32 * u) + 160] = _1447
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _478
                continue 
            _1481 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1481 + idx + 68] = mem[_1475 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1481 + 98] = 0
            revert with memory
              from mem[64]
               len _1481 + -mem[64] + 100
        if 0 >= mem[_559]:
            revert with 'NH{q', 50
        mem[_559 + 32] = address(arg1)
        if 1 >= mem[_559]:
            revert with 'NH{q', 50
        mem[_559 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[_559 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_559 + 100] = arg3 + (_508 * arg3) / 10
        mem[_559 + 132] = 64
        mem[_559 + 164] = mem[_559]
        t = 0
        v = _559 + 32
        w = _559 + 196
        while t < mem[_559]:
            mem[w] = mem[v + 12 len 20]
            t = t + 1
            v = v + 32
            w = w + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _559 + (32 * mem[_559]) + -mem[64] + 192]
        if not ext_call.success:
            if u - 1:
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _892 = mem[(32 * u) + 160]
                _896 = mem[64]
                mem[64] = mem[64] + 64
                mem[_896] = 30
                mem[_896 + 32] = 'SafeMath: subtraction overflow'
                if _892 <= 0:
                    if 0 < _892:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = -_892
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _907 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_907 + idx + 68] = mem[_896 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_907 + 98] = 0
                revert with memory
                  from mem[64]
                   len _907 + -mem[64] + 100
            if 0 >= mem[_559]:
                revert with 'NH{q', 50
            mem[_559 + 32] = address(arg1)
            if 1 >= mem[_559]:
                revert with 'NH{q', 50
            mem[_559 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            _887 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3 + (_508 * arg3) / 10
            mem[mem[64] + 36] = 64
            _914 = mem[_559]
            mem[mem[64] + 68] = mem[_559]
            t = 0
            v = _559 + 32
            w = mem[64] + 100
            while t < _914:
                mem[w] = mem[v + 12 len 20]
                t = t + 1
                v = v + 32
                w = w + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _887 + (32 * _914) + -mem[64] + 96]
            if not ext_call.success:
                if u >= 2:
                    revert with 'NH{q', 50
                if u >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * u) + 160]:
                    mem[(32 * u) + 96] = 0
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _1435 = mem[(32 * u) + 160]
                _1440 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1440] = 30
                mem[_1440 + 32] = 'SafeMath: subtraction overflow'
                if _1435 <= 0:
                    if 0 < _1435:
                        revert with 'NH{q', 17
                    if u >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 96] = -_1435
                    mem[(32 * u) + 160] = 0
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + _478
                    continue 
                _1452 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1452 + idx + 68] = mem[_1440 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1452 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1452 + -mem[64] + 100
            _1408 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1415 = mem[_1408]
            require mem[_1408] <= test266151307()
            require _1408 + mem[_1408] + 31 < _1408 + return_data.size
            _1430 = mem[_1408 + mem[_1408]]
            if mem[_1408 + mem[_1408]] > test266151307():
                revert with 'NH{q', 65
            if _1408 + ceil32(return_data.size) + floor32(mem[_1408 + mem[_1408]]) + 1 > test266151307() or floor32(mem[_1408 + mem[_1408]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1408 + ceil32(return_data.size) + floor32(mem[_1408 + mem[_1408]]) + 1
            mem[_1408 + ceil32(return_data.size)] = _1430
            require _1415 + (32 * _1430) + 32 <= return_data.size
            t = _1408 + _1415 + 32
            v = _1408 + ceil32(return_data.size) + 32
            while t < _1408 + _1415 + (32 * _1430) + 32:
                require mem[t] == mem[t]
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            if mem[_559] < 1:
                revert with 'NH{q', 17
            if mem[_559] - 1 >= _1430:
                revert with 'NH{q', 50
            _1659 = mem[(32 * mem[_559] - 1) + _1408 + ceil32(return_data.size) + 32]
            if u >= 2:
                revert with 'NH{q', 50
            if u >= 2:
                revert with 'NH{q', 50
            if mem[(32 * mem[_559] - 1) + _1408 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                mem[(32 * u) + 96] = 0
                mem[(32 * u) + 160] = _1659
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _478
                continue 
            _1672 = mem[(32 * u) + 160]
            _1674 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1674] = 30
            mem[_1674 + 32] = 'SafeMath: subtraction overflow'
            if _1672 <= _1659:
                if _1659 < _1672:
                    revert with 'NH{q', 17
                if u >= 2:
                    revert with 'NH{q', 50
                mem[(32 * u) + 96] = _1659 - _1672
                mem[(32 * u) + 160] = _1659
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _478
                continue 
            _1676 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1676 + idx + 68] = mem[_1674 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1676 + 98] = 0
            revert with memory
              from mem[64]
               len _1676 + -mem[64] + 100
        _851 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _857 = mem[_851]
        require mem[_851] <= test266151307()
        require _851 + mem[_851] + 31 < _851 + return_data.size
        _870 = mem[_851 + mem[_851]]
        if mem[_851 + mem[_851]] > test266151307():
            revert with 'NH{q', 65
        if _851 + ceil32(return_data.size) + floor32(mem[_851 + mem[_851]]) + 1 > test266151307() or floor32(mem[_851 + mem[_851]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _851 + ceil32(return_data.size) + floor32(mem[_851 + mem[_851]]) + 1
        mem[_851 + ceil32(return_data.size)] = _870
        require _857 + (32 * _870) + 32 <= return_data.size
        t = _851 + _857 + 32
        v = _851 + ceil32(return_data.size) + 32
        while t < _851 + _857 + (32 * _870) + 32:
            require mem[t] == mem[t]
            mem[v] = mem[t]
            t = t + 32
            v = v + 32
            continue 
        if mem[_559] < 1:
            revert with 'NH{q', 17
        if mem[_559] - 1 >= _870:
            revert with 'NH{q', 50
        _1448 = mem[(32 * mem[_559] - 1) + _851 + ceil32(return_data.size) + 32]
        if u - 1:
            if u >= 2:
                revert with 'NH{q', 50
            if u >= 2:
                revert with 'NH{q', 50
            if mem[(32 * mem[_559] - 1) + _851 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
                mem[(32 * u) + 96] = 0
                mem[(32 * u) + 160] = _1448
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _478
                continue 
            _1476 = mem[(32 * u) + 160]
            _1479 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1479] = 30
            mem[_1479 + 32] = 'SafeMath: subtraction overflow'
            if _1476 <= _1448:
                if _1448 < _1476:
                    revert with 'NH{q', 17
                if u >= 2:
                    revert with 'NH{q', 50
                mem[(32 * u) + 96] = _1448 - _1476
                mem[(32 * u) + 160] = _1448
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _478
                continue 
            _1485 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1485 + idx + 68] = mem[_1479 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1485 + 98] = 0
            revert with memory
              from mem[64]
               len _1485 + -mem[64] + 100
        if 0 >= mem[_559]:
            revert with 'NH{q', 50
        mem[_559 + 32] = address(arg1)
        if 1 >= mem[_559]:
            revert with 'NH{q', 50
        mem[_559 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        _1472 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3 + (_508 * arg3) / 10
        mem[mem[64] + 36] = 64
        _1494 = mem[_559]
        mem[mem[64] + 68] = mem[_559]
        t = 0
        v = _559 + 32
        w = mem[64] + 100
        while t < _1494:
            mem[w] = mem[v + 12 len 20]
            t = t + 1
            v = v + 32
            w = w + 32
            continue 
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1472 + (32 * _1494) + -mem[64] + 96]
        if not ext_call.success:
            if u >= 2:
                revert with 'NH{q', 50
            if u >= 2:
                revert with 'NH{q', 50
            if 0 <= mem[(32 * u) + 160]:
                mem[(32 * u) + 96] = 0
                mem[(32 * u) + 160] = 0
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _478
                continue 
            _1650 = mem[(32 * u) + 160]
            _1655 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1655] = 30
            mem[_1655 + 32] = 'SafeMath: subtraction overflow'
            if _1650 <= 0:
                if 0 < _1650:
                    revert with 'NH{q', 17
                if u >= 2:
                    revert with 'NH{q', 50
                mem[(32 * u) + 96] = -_1650
                mem[(32 * u) + 160] = 0
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + _478
                continue 
            _1662 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1662 + idx + 68] = mem[_1655 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1662 + 98] = 0
            revert with memory
              from mem[64]
               len _1662 + -mem[64] + 100
        _1622 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1627 = mem[_1622]
        require mem[_1622] <= test266151307()
        require _1622 + mem[_1622] + 31 < _1622 + return_data.size
        _1643 = mem[_1622 + mem[_1622]]
        if mem[_1622 + mem[_1622]] > test266151307():
            revert with 'NH{q', 65
        if _1622 + ceil32(return_data.size) + floor32(mem[_1622 + mem[_1622]]) + 1 > test266151307() or floor32(mem[_1622 + mem[_1622]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1622 + ceil32(return_data.size) + floor32(mem[_1622 + mem[_1622]]) + 1
        mem[_1622 + ceil32(return_data.size)] = _1643
        require _1627 + (32 * _1643) + 32 <= return_data.size
        t = _1622 + _1627 + 32
        v = _1622 + ceil32(return_data.size) + 32
        while t < _1622 + _1627 + (32 * _1643) + 32:
            require mem[t] == mem[t]
            mem[v] = mem[t]
            t = t + 32
            v = v + 32
            continue 
        if mem[_559] < 1:
            revert with 'NH{q', 17
        if mem[_559] - 1 >= _1643:
            revert with 'NH{q', 50
        _2048 = mem[(32 * mem[_559] - 1) + _1622 + ceil32(return_data.size) + 32]
        if u >= 2:
            revert with 'NH{q', 50
        if u >= 2:
            revert with 'NH{q', 50
        if mem[(32 * mem[_559] - 1) + _1622 + ceil32(return_data.size) + 32] <= mem[(32 * u) + 160]:
            mem[(32 * u) + 96] = 0
            mem[(32 * u) + 160] = _2048
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + _478
            continue 
        _2067 = mem[(32 * u) + 160]
        _2069 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2069] = 30
        mem[_2069 + 32] = 'SafeMath: subtraction overflow'
        if _2067 <= _2048:
            if _2048 < _2067:
                revert with 'NH{q', 17
            if u >= 2:
                revert with 'NH{q', 50
            mem[(32 * u) + 96] = _2048 - _2067
            mem[(32 * u) + 160] = _2048
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + _478
            continue 
        _2073 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_2073 + idx + 68] = mem[_2069 + idx + 32]
            idx = idx + 32
            continue 
        mem[_2073 + 98] = 0
        revert with memory
          from mem[64]
           len _2073 + -mem[64] + 100
    _419 = mem[64]
    mem[64] = mem[64] + 64
    mem[_419 len 64] = call.data[calldata.size len 64]
    _423 = mem[64]
    mem[64] = mem[64] + 64
    mem[_423 len 64] = call.data[calldata.size len 64]
    _427 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_427 + 32 len 64] = call.data[calldata.size len 64]
    t = 0
    while t < 2:
        _477 = mem[64]
        mem[64] = mem[64] + 64
        mem[_477] = 26
        mem[_477 + 32] = 'SafeMath: division by zero'
        _495 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_495 + 32 len 64] = call.data[calldata.size len 64]
        if t:
            if t - 1:
                if t >= 2:
                    revert with 'NH{q', 50
                mem[(32 * t) + _419] = 0
                mem[(32 * t) + _423] = 0
            else:
                if 0 >= mem[_495]:
                    revert with 'NH{q', 50
                mem[_495 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if 1 >= mem[_495]:
                    revert with 'NH{q', 50
                mem[_495 + 64] = address(arg2)
                mem[_495 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_495 + 100] = s / 10
                mem[_495 + 132] = 64
                mem[_495 + 164] = mem[_495]
                idx = 0
                s = _495 + 32
                u = _495 + 196
                while idx < mem[_495]:
                    mem[u] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    u = u + 32
                    continue 
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _495 + (32 * mem[_495]) + -mem[64] + 192]
                if not ext_call.success:
                    if t >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * t) + _419] = 0
                    mem[(32 * t) + _423] = 0
                else:
                    _848 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _854 = mem[_848]
                    require mem[_848] <= test266151307()
                    require _848 + mem[_848] + 31 < _848 + return_data.size
                    _865 = mem[_848 + mem[_848]]
                    if mem[_848 + mem[_848]] > test266151307():
                        revert with 'NH{q', 65
                    if _848 + ceil32(return_data.size) + floor32(mem[_848 + mem[_848]]) + 1 > test266151307() or floor32(mem[_848 + mem[_848]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _848 + ceil32(return_data.size) + floor32(mem[_848 + mem[_848]]) + 1
                    mem[_848 + ceil32(return_data.size)] = _865
                    require _854 + (32 * _865) + 32 <= return_data.size
                    idx = _848 + _854 + 32
                    s = _848 + ceil32(return_data.size) + 32
                    while idx < _848 + _854 + (32 * _865) + 32:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if mem[_495] < 1:
                        revert with 'NH{q', 17
                    if mem[_495] - 1 >= _865:
                        revert with 'NH{q', 50
                    if t >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * t) + _419] = mem[(32 * mem[_495] - 1) + _848 + ceil32(return_data.size) + 32]
                    mem[(32 * t) + _423] = mem[(32 * t) + _419]
        else:
            if 0 >= mem[_495]:
                revert with 'NH{q', 50
            mem[_495 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if 1 >= mem[_495]:
                revert with 'NH{q', 50
            mem[_495 + 64] = address(arg2)
            mem[_495 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_495 + 100] = s / 10
            mem[_495 + 132] = 64
            mem[_495 + 164] = mem[_495]
            idx = 0
            u = _495 + 32
            v = _495 + 196
            while idx < mem[_495]:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _495 + (32 * mem[_495]) + -mem[64] + 192]
            if not ext_call.success:
                if t - 1:
                    if t >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * t) + _419] = 0
                    mem[(32 * t) + _423] = 0
                else:
                    if 0 >= mem[_495]:
                        revert with 'NH{q', 50
                    mem[_495 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if 1 >= mem[_495]:
                        revert with 'NH{q', 50
                    mem[_495 + 64] = address(arg2)
                    _885 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s / 10
                    mem[mem[64] + 36] = 64
                    _912 = mem[_495]
                    mem[mem[64] + 68] = mem[_495]
                    idx = 0
                    s = _495 + 32
                    u = mem[64] + 100
                    while idx < _912:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _885 + (32 * _912) + -mem[64] + 96]
                    if not ext_call.success:
                        if t >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _419] = 0
                        mem[(32 * t) + _423] = 0
                    else:
                        _1407 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1412 = mem[_1407]
                        require mem[_1407] <= test266151307()
                        require _1407 + mem[_1407] + 31 < _1407 + return_data.size
                        _1429 = mem[_1407 + mem[_1407]]
                        if mem[_1407 + mem[_1407]] > test266151307():
                            revert with 'NH{q', 65
                        if _1407 + ceil32(return_data.size) + floor32(mem[_1407 + mem[_1407]]) + 1 > test266151307() or floor32(mem[_1407 + mem[_1407]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1407 + ceil32(return_data.size) + floor32(mem[_1407 + mem[_1407]]) + 1
                        mem[_1407 + ceil32(return_data.size)] = _1429
                        require _1412 + (32 * _1429) + 32 <= return_data.size
                        idx = _1407 + _1412 + 32
                        s = _1407 + ceil32(return_data.size) + 32
                        while idx < _1407 + _1412 + (32 * _1429) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if mem[_495] < 1:
                            revert with 'NH{q', 17
                        if mem[_495] - 1 >= _1429:
                            revert with 'NH{q', 50
                        if t >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _419] = mem[(32 * mem[_495] - 1) + _1407 + ceil32(return_data.size) + 32]
                        mem[(32 * t) + _423] = mem[(32 * t) + _419]
            else:
                _849 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _855 = mem[_849]
                require mem[_849] <= test266151307()
                require _849 + mem[_849] + 31 < _849 + return_data.size
                _867 = mem[_849 + mem[_849]]
                if mem[_849 + mem[_849]] > test266151307():
                    revert with 'NH{q', 65
                if _849 + ceil32(return_data.size) + floor32(mem[_849 + mem[_849]]) + 1 > test266151307() or floor32(mem[_849 + mem[_849]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _849 + ceil32(return_data.size) + floor32(mem[_849 + mem[_849]]) + 1
                mem[_849 + ceil32(return_data.size)] = _867
                require _855 + (32 * _867) + 32 <= return_data.size
                idx = _849 + _855 + 32
                u = _849 + ceil32(return_data.size) + 32
                while idx < _849 + _855 + (32 * _867) + 32:
                    require mem[idx] == mem[idx]
                    mem[u] = mem[idx]
                    idx = idx + 32
                    u = u + 32
                    continue 
                if mem[_495] < 1:
                    revert with 'NH{q', 17
                if mem[_495] - 1 >= _867:
                    revert with 'NH{q', 50
                if t - 1:
                    if t >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * t) + _419] = mem[(32 * mem[_495] - 1) + _849 + ceil32(return_data.size) + 32]
                    mem[(32 * t) + _423] = mem[(32 * t) + _419]
                else:
                    if 0 >= mem[_495]:
                        revert with 'NH{q', 50
                    mem[_495 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if 1 >= mem[_495]:
                        revert with 'NH{q', 50
                    mem[_495 + 64] = address(arg2)
                    _1470 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = s / 10
                    mem[mem[64] + 36] = 64
                    _1492 = mem[_495]
                    mem[mem[64] + 68] = mem[_495]
                    idx = 0
                    s = _495 + 32
                    u = mem[64] + 100
                    while idx < _1492:
                        mem[u] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        u = u + 32
                        continue 
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1470 + (32 * _1492) + -mem[64] + 96]
                    if not ext_call.success:
                        if t >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _419] = 0
                        mem[(32 * t) + _423] = 0
                    else:
                        _1621 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1625 = mem[_1621]
                        require mem[_1621] <= test266151307()
                        require _1621 + mem[_1621] + 31 < _1621 + return_data.size
                        _1642 = mem[_1621 + mem[_1621]]
                        if mem[_1621 + mem[_1621]] > test266151307():
                            revert with 'NH{q', 65
                        if _1621 + ceil32(return_data.size) + floor32(mem[_1621 + mem[_1621]]) + 1 > test266151307() or floor32(mem[_1621 + mem[_1621]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _1621 + ceil32(return_data.size) + floor32(mem[_1621 + mem[_1621]]) + 1
                        mem[_1621 + ceil32(return_data.size)] = _1642
                        require _1625 + (32 * _1642) + 32 <= return_data.size
                        idx = _1621 + _1625 + 32
                        s = _1621 + ceil32(return_data.size) + 32
                        while idx < _1621 + _1625 + (32 * _1642) + 32:
                            require mem[idx] == mem[idx]
                            mem[s] = mem[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if mem[_495] < 1:
                            revert with 'NH{q', 17
                        if mem[_495] - 1 >= _1642:
                            revert with 'NH{q', 50
                        if t >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _419] = mem[(32 * mem[_495] - 1) + _1621 + ceil32(return_data.size) + 32]
                        mem[(32 * t) + _423] = mem[(32 * t) + _419]
        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        t = t + 1
        continue 
    t = 0
    u = 0
    while t < 10:
        v = 1
        w = 0
        while v < 2:
            if w >= 2:
                revert with 'NH{q', 50
            if v >= 2:
                revert with 'NH{q', 50
            if not v - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if mem[(32 * v) + _419] <= mem[(32 * w) + _419]:
                v = v + 1
                w = w
                continue 
            v = v + 1
            w = v
            continue 
        if w >= 2:
            revert with 'NH{q', 50
        _1612 = mem[(32 * w) + _419]
        if u > -mem[(32 * w) + _419] - 1:
            revert with 'NH{q', 17
        if u + mem[(32 * w) + _419] < u:
            revert with 0, 'SafeMath: addition overflow'
        if w >= mem[_427]:
            revert with 'NH{q', 50
        if not mem[(32 * w) + _427 + 32] - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        mem[(32 * w) + _427 + 32] = mem[(32 * w) + _427 + 32] + 1
        if t > -2:
            revert with 'NH{q', 17
        if t + 1 >= 10:
            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            t = t + 1
            u = u + _1612
            continue 
        if w >= mem[_427]:
            revert with 'NH{q', 50
        _1684 = mem[(32 * w) + _427 + 32]
        if mem[(32 * w) + _427 + 32] > -2:
            revert with 'NH{q', 17
        if not s:
            _1702 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1702] = 26
            mem[_1702 + 32] = 'SafeMath: division by zero'
            _1719 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_1719 + 32 len 64] = call.data[calldata.size len 64]
            if w:
                if w - 1:
                    if w >= 2:
                        revert with 'NH{q', 50
                    if w >= 2:
                        revert with 'NH{q', 50
                    if 0 <= mem[(32 * w) + _423]:
                        mem[(32 * w) + _419] = 0
                    else:
                        _1731 = mem[(32 * w) + _423]
                        mem[64] = _1719 + 160
                        mem[_1719 + 96] = 30
                        mem[_1719 + 128] = 'SafeMath: subtraction overflow'
                        if _1731 > 0:
                            mem[_1719 + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1719 + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[_1719 + idx + 228] = mem[_1719 + idx + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_1719 + 228 len 30], 0
                        if 0 < _1731:
                            revert with 'NH{q', 17
                        if w >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * w) + _419] = -_1731
                    mem[(32 * w) + _423] = 0
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                if 0 >= mem[_1719]:
                    revert with 'NH{q', 50
                mem[_1719 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if 1 >= mem[_1719]:
                    revert with 'NH{q', 50
                mem[_1719 + 64] = address(arg2)
                mem[_1719 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_1719 + 100] = 0
                mem[_1719 + 132] = 64
                mem[_1719 + 164] = mem[_1719]
                idx = 0
                s = _1719 + 32
                v = _1719 + 196
                while idx < mem[_1719]:
                    mem[v] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    v = v + 32
                    continue 
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1719 + (32 * mem[_1719]) + -mem[64] + 192]
                if not ext_call.success:
                    if w >= 2:
                        revert with 'NH{q', 50
                    if w >= 2:
                        revert with 'NH{q', 50
                    if 0 <= mem[(32 * w) + _423]:
                        mem[(32 * w) + _419] = 0
                        mem[(32 * w) + _423] = 0
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u + _1612
                        continue 
                    _2036 = mem[(32 * w) + _423]
                    _2040 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2040] = 30
                    mem[_2040 + 32] = 'SafeMath: subtraction overflow'
                    if _2036 <= 0:
                        if 0 < _2036:
                            revert with 'NH{q', 17
                        if w >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * w) + _419] = -_2036
                        mem[(32 * w) + _423] = 0
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u + _1612
                        continue 
                    _2053 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2053 + idx + 68] = mem[_2040 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2053 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2053 + -mem[64] + 100
                _2001 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2005 = mem[_2001]
                require mem[_2001] <= test266151307()
                require _2001 + mem[_2001] + 31 < _2001 + return_data.size
                _2025 = mem[_2001 + mem[_2001]]
                if mem[_2001 + mem[_2001]] > test266151307():
                    revert with 'NH{q', 65
                if _2001 + ceil32(return_data.size) + floor32(mem[_2001 + mem[_2001]]) + 1 > test266151307() or floor32(mem[_2001 + mem[_2001]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _2001 + ceil32(return_data.size) + floor32(mem[_2001 + mem[_2001]]) + 1
                mem[_2001 + ceil32(return_data.size)] = _2025
                require _2005 + (32 * _2025) + 32 <= return_data.size
                idx = _2001 + _2005 + 32
                s = _2001 + ceil32(return_data.size) + 32
                while idx < _2001 + _2005 + (32 * _2025) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if mem[_1719] < 1:
                    revert with 'NH{q', 17
                if mem[_1719] - 1 >= _2025:
                    revert with 'NH{q', 50
                _2301 = mem[(32 * mem[_1719] - 1) + _2001 + ceil32(return_data.size) + 32]
                if w >= 2:
                    revert with 'NH{q', 50
                if w >= 2:
                    revert with 'NH{q', 50
                if mem[(32 * mem[_1719] - 1) + _2001 + ceil32(return_data.size) + 32] <= mem[(32 * w) + _423]:
                    mem[(32 * w) + _419] = 0
                    mem[(32 * w) + _423] = _2301
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2319 = mem[(32 * w) + _423]
                _2323 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2323] = 30
                mem[_2323 + 32] = 'SafeMath: subtraction overflow'
                if _2319 <= _2301:
                    if _2301 < _2319:
                        revert with 'NH{q', 17
                    if w >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * w) + _419] = _2301 - _2319
                    mem[(32 * w) + _423] = _2301
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2329 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2329 + idx + 68] = mem[_2323 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2329 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2329 + -mem[64] + 100
            if 0 >= mem[_1719]:
                revert with 'NH{q', 50
            mem[_1719 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if 1 >= mem[_1719]:
                revert with 'NH{q', 50
            mem[_1719 + 64] = address(arg2)
            mem[_1719 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1719 + 100] = 0
            mem[_1719 + 132] = 64
            mem[_1719 + 164] = mem[_1719]
            idx = 0
            s = _1719 + 32
            v = _1719 + 196
            while idx < mem[_1719]:
                mem[v] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                v = v + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1719 + (32 * mem[_1719]) + -mem[64] + 192]
            if not ext_call.success:
                if w - 1:
                    if w >= 2:
                        revert with 'NH{q', 50
                    if w >= 2:
                        revert with 'NH{q', 50
                    if 0 <= mem[(32 * w) + _423]:
                        mem[(32 * w) + _419] = 0
                        mem[(32 * w) + _423] = 0
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u + _1612
                        continue 
                    _2041 = mem[(32 * w) + _423]
                    _2046 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2046] = 30
                    mem[_2046 + 32] = 'SafeMath: subtraction overflow'
                    if _2041 <= 0:
                        if 0 < _2041:
                            revert with 'NH{q', 17
                        if w >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * w) + _419] = -_2041
                        mem[(32 * w) + _423] = 0
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u + _1612
                        continue 
                    _2057 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2057 + idx + 68] = mem[_2046 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2057 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2057 + -mem[64] + 100
                if 0 >= mem[_1719]:
                    revert with 'NH{q', 50
                mem[_1719 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if 1 >= mem[_1719]:
                    revert with 'NH{q', 50
                mem[_1719 + 64] = address(arg2)
                _2037 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 64
                _2063 = mem[_1719]
                mem[mem[64] + 68] = mem[_1719]
                idx = 0
                s = _1719 + 32
                v = mem[64] + 100
                while idx < _2063:
                    mem[v] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    v = v + 32
                    continue 
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2037 + (32 * _2063) + -mem[64] + 96]
                if not ext_call.success:
                    if w >= 2:
                        revert with 'NH{q', 50
                    if w >= 2:
                        revert with 'NH{q', 50
                    if 0 <= mem[(32 * w) + _423]:
                        mem[(32 * w) + _419] = 0
                        mem[(32 * w) + _423] = 0
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u + _1612
                        continue 
                    _2292 = mem[(32 * w) + _423]
                    _2297 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2297] = 30
                    mem[_2297 + 32] = 'SafeMath: subtraction overflow'
                    if _2292 <= 0:
                        if 0 < _2292:
                            revert with 'NH{q', 17
                        if w >= 2:
                            revert with 'NH{q', 50
                        mem[(32 * w) + _419] = -_2292
                        mem[(32 * w) + _423] = 0
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u + _1612
                        continue 
                    _2305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2305 + idx + 68] = mem[_2297 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2305 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2305 + -mem[64] + 100
                _2268 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2273 = mem[_2268]
                require mem[_2268] <= test266151307()
                require _2268 + mem[_2268] + 31 < _2268 + return_data.size
                _2288 = mem[_2268 + mem[_2268]]
                if mem[_2268 + mem[_2268]] > test266151307():
                    revert with 'NH{q', 65
                if _2268 + ceil32(return_data.size) + floor32(mem[_2268 + mem[_2268]]) + 1 > test266151307() or floor32(mem[_2268 + mem[_2268]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _2268 + ceil32(return_data.size) + floor32(mem[_2268 + mem[_2268]]) + 1
                mem[_2268 + ceil32(return_data.size)] = _2288
                require _2273 + (32 * _2288) + 32 <= return_data.size
                idx = _2268 + _2273 + 32
                s = _2268 + ceil32(return_data.size) + 32
                while idx < _2268 + _2273 + (32 * _2288) + 32:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if mem[_1719] < 1:
                    revert with 'NH{q', 17
                if mem[_1719] - 1 >= _2288:
                    revert with 'NH{q', 50
                _2472 = mem[(32 * mem[_1719] - 1) + _2268 + ceil32(return_data.size) + 32]
                if w >= 2:
                    revert with 'NH{q', 50
                if w >= 2:
                    revert with 'NH{q', 50
                if mem[(32 * mem[_1719] - 1) + _2268 + ceil32(return_data.size) + 32] <= mem[(32 * w) + _423]:
                    mem[(32 * w) + _419] = 0
                    mem[(32 * w) + _423] = _2472
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2482 = mem[(32 * w) + _423]
                _2484 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2484] = 30
                mem[_2484 + 32] = 'SafeMath: subtraction overflow'
                if _2482 <= _2472:
                    if _2472 < _2482:
                        revert with 'NH{q', 17
                    if w >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * w) + _419] = _2472 - _2482
                    mem[(32 * w) + _423] = _2472
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2487 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2487 + idx + 68] = mem[_2484 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2487 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2487 + -mem[64] + 100
            _2002 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2006 = mem[_2002]
            require mem[_2002] <= test266151307()
            require _2002 + mem[_2002] + 31 < _2002 + return_data.size
            _2027 = mem[_2002 + mem[_2002]]
            if mem[_2002 + mem[_2002]] > test266151307():
                revert with 'NH{q', 65
            if _2002 + ceil32(return_data.size) + floor32(mem[_2002 + mem[_2002]]) + 1 > test266151307() or floor32(mem[_2002 + mem[_2002]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2002 + ceil32(return_data.size) + floor32(mem[_2002 + mem[_2002]]) + 1
            mem[_2002 + ceil32(return_data.size)] = _2027
            require _2006 + (32 * _2027) + 32 <= return_data.size
            idx = _2002 + _2006 + 32
            s = _2002 + ceil32(return_data.size) + 32
            while idx < _2002 + _2006 + (32 * _2027) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if mem[_1719] < 1:
                revert with 'NH{q', 17
            if mem[_1719] - 1 >= _2027:
                revert with 'NH{q', 50
            _2302 = mem[(32 * mem[_1719] - 1) + _2002 + ceil32(return_data.size) + 32]
            if w - 1:
                if w >= 2:
                    revert with 'NH{q', 50
                if w >= 2:
                    revert with 'NH{q', 50
                if mem[(32 * mem[_1719] - 1) + _2002 + ceil32(return_data.size) + 32] <= mem[(32 * w) + _423]:
                    mem[(32 * w) + _419] = 0
                    mem[(32 * w) + _423] = _2302
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2324 = mem[(32 * w) + _423]
                _2326 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2326] = 30
                mem[_2326 + 32] = 'SafeMath: subtraction overflow'
                if _2324 <= _2302:
                    if _2302 < _2324:
                        revert with 'NH{q', 17
                    if w >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * w) + _419] = _2302 - _2324
                    mem[(32 * w) + _423] = _2302
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2332 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2332 + idx + 68] = mem[_2326 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2332 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2332 + -mem[64] + 100
            if 0 >= mem[_1719]:
                revert with 'NH{q', 50
            mem[_1719 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if 1 >= mem[_1719]:
                revert with 'NH{q', 50
            mem[_1719 + 64] = address(arg2)
            _2320 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 64
            _2340 = mem[_1719]
            mem[mem[64] + 68] = mem[_1719]
            idx = 0
            s = _1719 + 32
            v = mem[64] + 100
            while idx < _2340:
                mem[v] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                v = v + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2320 + (32 * _2340) + -mem[64] + 96]
            if not ext_call.success:
                if w >= 2:
                    revert with 'NH{q', 50
                if w >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * w) + _423]:
                    mem[(32 * w) + _419] = 0
                    mem[(32 * w) + _423] = 0
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2466 = mem[(32 * w) + _423]
                _2470 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2470] = 30
                mem[_2470 + 32] = 'SafeMath: subtraction overflow'
                if _2466 <= 0:
                    if 0 < _2466:
                        revert with 'NH{q', 17
                    if w >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * w) + _419] = -_2466
                    mem[(32 * w) + _423] = 0
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2475 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2475 + idx + 68] = mem[_2470 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2475 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2475 + -mem[64] + 100
            _2444 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2448 = mem[_2444]
            require mem[_2444] <= test266151307()
            require _2444 + mem[_2444] + 31 < _2444 + return_data.size
            _2462 = mem[_2444 + mem[_2444]]
            if mem[_2444 + mem[_2444]] > test266151307():
                revert with 'NH{q', 65
            if _2444 + ceil32(return_data.size) + floor32(mem[_2444 + mem[_2444]]) + 1 > test266151307() or floor32(mem[_2444 + mem[_2444]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2444 + ceil32(return_data.size) + floor32(mem[_2444 + mem[_2444]]) + 1
            mem[_2444 + ceil32(return_data.size)] = _2462
            require _2448 + (32 * _2462) + 32 <= return_data.size
            idx = _2444 + _2448 + 32
            s = _2444 + ceil32(return_data.size) + 32
            while idx < _2444 + _2448 + (32 * _2462) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if mem[_1719] < 1:
                revert with 'NH{q', 17
            if mem[_1719] - 1 >= _2462:
                revert with 'NH{q', 50
            _2544 = mem[(32 * mem[_1719] - 1) + _2444 + ceil32(return_data.size) + 32]
            if w >= 2:
                revert with 'NH{q', 50
            if w >= 2:
                revert with 'NH{q', 50
            if mem[(32 * mem[_1719] - 1) + _2444 + ceil32(return_data.size) + 32] <= mem[(32 * w) + _423]:
                mem[(32 * w) + _419] = 0
                mem[(32 * w) + _423] = _2544
                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + _1612
                continue 
            _2548 = mem[(32 * w) + _423]
            _2550 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2550] = 30
            mem[_2550 + 32] = 'SafeMath: subtraction overflow'
            if _2548 <= _2544:
                if _2544 < _2548:
                    revert with 'NH{q', 17
                if w >= 2:
                    revert with 'NH{q', 50
                mem[(32 * w) + _419] = _2544 - _2548
                mem[(32 * w) + _423] = _2544
                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + _1612
                continue 
            _2552 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_2552 + idx + 68] = mem[_2550 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2552 + 98] = 0
            revert with memory
              from mem[64]
               len _2552 + -mem[64] + 100
        if s and mem[(32 * w) + _427 + 32] + 1 > -1 / s:
            revert with 'NH{q', 17
        if not s:
            revert with 'NH{q', 18
        if s + (mem[(32 * w) + _427 + 32] * s) / s != mem[(32 * w) + _427 + 32] + 1:
            revert with 0, 'SafeMath: multiplication overflow'
        _1720 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1720] = 26
        mem[_1720 + 32] = 'SafeMath: division by zero'
        _1741 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_1741 + 32 len 64] = call.data[calldata.size len 64]
        if w:
            if w - 1:
                if w >= 2:
                    revert with 'NH{q', 50
                if w >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * w) + _423]:
                    mem[(32 * w) + _419] = 0
                else:
                    _1753 = mem[(32 * w) + _423]
                    mem[64] = _1741 + 160
                    mem[_1741 + 96] = 30
                    mem[_1741 + 128] = 'SafeMath: subtraction overflow'
                    if _1753 > 0:
                        mem[_1741 + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1741 + 164] = 32
                        idx = 0
                        while idx < 30:
                            mem[_1741 + idx + 228] = mem[_1741 + idx + 128]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[_1741 + 228 len 30], 0
                    if 0 < _1753:
                        revert with 'NH{q', 17
                    if w >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * w) + _419] = -_1753
                mem[(32 * w) + _423] = 0
                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + _1612
                continue 
            if 0 >= mem[_1741]:
                revert with 'NH{q', 50
            mem[_1741 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if 1 >= mem[_1741]:
                revert with 'NH{q', 50
            mem[_1741 + 64] = address(arg2)
            mem[_1741 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1741 + 100] = s + (_1684 * s) / 10
            mem[_1741 + 132] = 64
            mem[_1741 + 164] = mem[_1741]
            idx = 0
            s = _1741 + 32
            v = _1741 + 196
            while idx < mem[_1741]:
                mem[v] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                v = v + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1741 + (32 * mem[_1741]) + -mem[64] + 192]
            if not ext_call.success:
                if w >= 2:
                    revert with 'NH{q', 50
                if w >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * w) + _423]:
                    mem[(32 * w) + _419] = 0
                    mem[(32 * w) + _423] = 0
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2034 = mem[(32 * w) + _423]
                _2038 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2038] = 30
                mem[_2038 + 32] = 'SafeMath: subtraction overflow'
                if _2034 <= 0:
                    if 0 < _2034:
                        revert with 'NH{q', 17
                    if w >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * w) + _419] = -_2034
                    mem[(32 * w) + _423] = 0
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2050 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2050 + idx + 68] = mem[_2038 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2050 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2050 + -mem[64] + 100
            _1999 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2003 = mem[_1999]
            require mem[_1999] <= test266151307()
            require _1999 + mem[_1999] + 31 < _1999 + return_data.size
            _2022 = mem[_1999 + mem[_1999]]
            if mem[_1999 + mem[_1999]] > test266151307():
                revert with 'NH{q', 65
            if _1999 + ceil32(return_data.size) + floor32(mem[_1999 + mem[_1999]]) + 1 > test266151307() or floor32(mem[_1999 + mem[_1999]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1999 + ceil32(return_data.size) + floor32(mem[_1999 + mem[_1999]]) + 1
            mem[_1999 + ceil32(return_data.size)] = _2022
            require _2003 + (32 * _2022) + 32 <= return_data.size
            idx = _1999 + _2003 + 32
            s = _1999 + ceil32(return_data.size) + 32
            while idx < _1999 + _2003 + (32 * _2022) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if mem[_1741] < 1:
                revert with 'NH{q', 17
            if mem[_1741] - 1 >= _2022:
                revert with 'NH{q', 50
            _2299 = mem[(32 * mem[_1741] - 1) + _1999 + ceil32(return_data.size) + 32]
            if w >= 2:
                revert with 'NH{q', 50
            if w >= 2:
                revert with 'NH{q', 50
            if mem[(32 * mem[_1741] - 1) + _1999 + ceil32(return_data.size) + 32] <= mem[(32 * w) + _423]:
                mem[(32 * w) + _419] = 0
                mem[(32 * w) + _423] = _2299
                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + _1612
                continue 
            _2317 = mem[(32 * w) + _423]
            _2321 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2321] = 30
            mem[_2321 + 32] = 'SafeMath: subtraction overflow'
            if _2317 <= _2299:
                if _2299 < _2317:
                    revert with 'NH{q', 17
                if w >= 2:
                    revert with 'NH{q', 50
                mem[(32 * w) + _419] = _2299 - _2317
                mem[(32 * w) + _423] = _2299
                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + _1612
                continue 
            _2327 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_2327 + idx + 68] = mem[_2321 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2327 + 98] = 0
            revert with memory
              from mem[64]
               len _2327 + -mem[64] + 100
        if 0 >= mem[_1741]:
            revert with 'NH{q', 50
        mem[_1741 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 1 >= mem[_1741]:
            revert with 'NH{q', 50
        mem[_1741 + 64] = address(arg2)
        mem[_1741 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_1741 + 100] = s + (_1684 * s) / 10
        mem[_1741 + 132] = 64
        mem[_1741 + 164] = mem[_1741]
        v = 0
        x = _1741 + 32
        y = _1741 + 196
        while v < mem[_1741]:
            mem[y] = mem[x + 12 len 20]
            v = v + 1
            x = x + 32
            y = y + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1741 + (32 * mem[_1741]) + -mem[64] + 192]
        if not ext_call.success:
            if w - 1:
                if w >= 2:
                    revert with 'NH{q', 50
                if w >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * w) + _423]:
                    mem[(32 * w) + _419] = 0
                    mem[(32 * w) + _423] = 0
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2039 = mem[(32 * w) + _423]
                _2045 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2045] = 30
                mem[_2045 + 32] = 'SafeMath: subtraction overflow'
                if _2039 <= 0:
                    if 0 < _2039:
                        revert with 'NH{q', 17
                    if w >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * w) + _419] = -_2039
                    mem[(32 * w) + _423] = 0
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2056 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2056 + idx + 68] = mem[_2045 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2056 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2056 + -mem[64] + 100
            if 0 >= mem[_1741]:
                revert with 'NH{q', 50
            mem[_1741 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if 1 >= mem[_1741]:
                revert with 'NH{q', 50
            mem[_1741 + 64] = address(arg2)
            _2035 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s + (_1684 * s) / 10
            mem[mem[64] + 36] = 64
            _2061 = mem[_1741]
            mem[mem[64] + 68] = mem[_1741]
            idx = 0
            s = _1741 + 32
            v = mem[64] + 100
            while idx < _2061:
                mem[v] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                v = v + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2035 + (32 * _2061) + -mem[64] + 96]
            if not ext_call.success:
                if w >= 2:
                    revert with 'NH{q', 50
                if w >= 2:
                    revert with 'NH{q', 50
                if 0 <= mem[(32 * w) + _423]:
                    mem[(32 * w) + _419] = 0
                    mem[(32 * w) + _423] = 0
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2291 = mem[(32 * w) + _423]
                _2294 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2294] = 30
                mem[_2294 + 32] = 'SafeMath: subtraction overflow'
                if _2291 <= 0:
                    if 0 < _2291:
                        revert with 'NH{q', 17
                    if w >= 2:
                        revert with 'NH{q', 50
                    mem[(32 * w) + _419] = -_2291
                    mem[(32 * w) + _423] = 0
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + _1612
                    continue 
                _2303 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2303 + idx + 68] = mem[_2294 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2303 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2303 + -mem[64] + 100
            _2267 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2270 = mem[_2267]
            require mem[_2267] <= test266151307()
            require _2267 + mem[_2267] + 31 < _2267 + return_data.size
            _2287 = mem[_2267 + mem[_2267]]
            if mem[_2267 + mem[_2267]] > test266151307():
                revert with 'NH{q', 65
            if _2267 + ceil32(return_data.size) + floor32(mem[_2267 + mem[_2267]]) + 1 > test266151307() or floor32(mem[_2267 + mem[_2267]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2267 + ceil32(return_data.size) + floor32(mem[_2267 + mem[_2267]]) + 1
            mem[_2267 + ceil32(return_data.size)] = _2287
            require _2270 + (32 * _2287) + 32 <= return_data.size
            idx = _2267 + _2270 + 32
            s = _2267 + ceil32(return_data.size) + 32
            while idx < _2267 + _2270 + (32 * _2287) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if mem[_1741] < 1:
                revert with 'NH{q', 17
            if mem[_1741] - 1 >= _2287:
                revert with 'NH{q', 50
            _2471 = mem[(32 * mem[_1741] - 1) + _2267 + ceil32(return_data.size) + 32]
            if w >= 2:
                revert with 'NH{q', 50
            if w >= 2:
                revert with 'NH{q', 50
            if mem[(32 * mem[_1741] - 1) + _2267 + ceil32(return_data.size) + 32] <= mem[(32 * w) + _423]:
                mem[(32 * w) + _419] = 0
                mem[(32 * w) + _423] = _2471
                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + _1612
                continue 
            _2481 = mem[(32 * w) + _423]
            _2483 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2483] = 30
            mem[_2483 + 32] = 'SafeMath: subtraction overflow'
            if _2481 <= _2471:
                if _2471 < _2481:
                    revert with 'NH{q', 17
                if w >= 2:
                    revert with 'NH{q', 50
                mem[(32 * w) + _419] = _2471 - _2481
                mem[(32 * w) + _423] = _2471
                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + _1612
                continue 
            _2485 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_2485 + idx + 68] = mem[_2483 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2485 + 98] = 0
            revert with memory
              from mem[64]
               len _2485 + -mem[64] + 100
        _2000 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2004 = mem[_2000]
        require mem[_2000] <= test266151307()
        require _2000 + mem[_2000] + 31 < _2000 + return_data.size
        _2024 = mem[_2000 + mem[_2000]]
        if mem[_2000 + mem[_2000]] > test266151307():
            revert with 'NH{q', 65
        if _2000 + ceil32(return_data.size) + floor32(mem[_2000 + mem[_2000]]) + 1 > test266151307() or floor32(mem[_2000 + mem[_2000]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _2000 + ceil32(return_data.size) + floor32(mem[_2000 + mem[_2000]]) + 1
        mem[_2000 + ceil32(return_data.size)] = _2024
        require _2004 + (32 * _2024) + 32 <= return_data.size
        v = _2000 + _2004 + 32
        x = _2000 + ceil32(return_data.size) + 32
        while v < _2000 + _2004 + (32 * _2024) + 32:
            require mem[v] == mem[v]
            mem[x] = mem[v]
            v = v + 32
            x = x + 32
            continue 
        if mem[_1741] < 1:
            revert with 'NH{q', 17
        if mem[_1741] - 1 >= _2024:
            revert with 'NH{q', 50
        _2300 = mem[(32 * mem[_1741] - 1) + _2000 + ceil32(return_data.size) + 32]
        if w - 1:
            if w >= 2:
                revert with 'NH{q', 50
            if w >= 2:
                revert with 'NH{q', 50
            if mem[(32 * mem[_1741] - 1) + _2000 + ceil32(return_data.size) + 32] <= mem[(32 * w) + _423]:
                mem[(32 * w) + _419] = 0
                mem[(32 * w) + _423] = _2300
                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + _1612
                continue 
            _2322 = mem[(32 * w) + _423]
            _2325 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2325] = 30
            mem[_2325 + 32] = 'SafeMath: subtraction overflow'
            if _2322 <= _2300:
                if _2300 < _2322:
                    revert with 'NH{q', 17
                if w >= 2:
                    revert with 'NH{q', 50
                mem[(32 * w) + _419] = _2300 - _2322
                mem[(32 * w) + _423] = _2300
                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + _1612
                continue 
            _2331 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_2331 + idx + 68] = mem[_2325 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2331 + 98] = 0
            revert with memory
              from mem[64]
               len _2331 + -mem[64] + 100
        if 0 >= mem[_1741]:
            revert with 'NH{q', 50
        mem[_1741 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 1 >= mem[_1741]:
            revert with 'NH{q', 50
        mem[_1741 + 64] = address(arg2)
        _2318 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s + (_1684 * s) / 10
        mem[mem[64] + 36] = 64
        _2338 = mem[_1741]
        mem[mem[64] + 68] = mem[_1741]
        s = 0
        v = _1741 + 32
        x = mem[64] + 100
        while s < _2338:
            mem[x] = mem[v + 12 len 20]
            s = s + 1
            v = v + 32
            x = x + 32
            continue 
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2318 + (32 * _2338) + -mem[64] + 96]
        if not ext_call.success:
            if w >= 2:
                revert with 'NH{q', 50
            if w >= 2:
                revert with 'NH{q', 50
            if 0 <= mem[(32 * w) + _423]:
                mem[(32 * w) + _419] = 0
                mem[(32 * w) + _423] = 0
                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + _1612
                continue 
            _2465 = mem[(32 * w) + _423]
            _2468 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2468] = 30
            mem[_2468 + 32] = 'SafeMath: subtraction overflow'
            if _2465 <= 0:
                if 0 < _2465:
                    revert with 'NH{q', 17
                if w >= 2:
                    revert with 'NH{q', 50
                mem[(32 * w) + _419] = -_2465
                mem[(32 * w) + _423] = 0
                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                t = t + 1
                u = u + _1612
                continue 
            _2473 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_2473 + idx + 68] = mem[_2468 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2473 + 98] = 0
            revert with memory
              from mem[64]
               len _2473 + -mem[64] + 100
        _2443 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2446 = mem[_2443]
        require mem[_2443] <= test266151307()
        require _2443 + mem[_2443] + 31 < _2443 + return_data.size
        _2461 = mem[_2443 + mem[_2443]]
        if mem[_2443 + mem[_2443]] > test266151307():
            revert with 'NH{q', 65
        if _2443 + ceil32(return_data.size) + floor32(mem[_2443 + mem[_2443]]) + 1 > test266151307() or floor32(mem[_2443 + mem[_2443]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _2443 + ceil32(return_data.size) + floor32(mem[_2443 + mem[_2443]]) + 1
        mem[_2443 + ceil32(return_data.size)] = _2461
        require _2446 + (32 * _2461) + 32 <= return_data.size
        s = _2443 + _2446 + 32
        v = _2443 + ceil32(return_data.size) + 32
        while s < _2443 + _2446 + (32 * _2461) + 32:
            require mem[s] == mem[s]
            mem[v] = mem[s]
            s = s + 32
            v = v + 32
            continue 
        if mem[_1741] < 1:
            revert with 'NH{q', 17
        if mem[_1741] - 1 >= _2461:
            revert with 'NH{q', 50
        _2543 = mem[(32 * mem[_1741] - 1) + _2443 + ceil32(return_data.size) + 32]
        if w >= 2:
            revert with 'NH{q', 50
        if w >= 2:
            revert with 'NH{q', 50
        if mem[(32 * mem[_1741] - 1) + _2443 + ceil32(return_data.size) + 32] <= mem[(32 * w) + _423]:
            mem[(32 * w) + _419] = 0
            mem[(32 * w) + _423] = _2543
            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            t = t + 1
            u = u + _1612
            continue 
        _2547 = mem[(32 * w) + _423]
        _2549 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2549] = 30
        mem[_2549 + 32] = 'SafeMath: subtraction overflow'
        if _2547 <= _2543:
            if _2543 < _2547:
                revert with 'NH{q', 17
            if w >= 2:
                revert with 'NH{q', 50
            mem[(32 * w) + _419] = _2543 - _2547
            mem[(32 * w) + _423] = _2543
            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            t = t + 1
            u = u + _1612
            continue 
        _2551 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_2551 + idx + 68] = mem[_2549 + idx + 32]
            idx = idx + 32
            continue 
        mem[_2551 + 98] = 0
        revert with memory
          from mem[64]
           len _2551 + -mem[64] + 100
    return u
}

function getAmountsOut(address arg1, uint256 arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = 128
    while idx < arg3 + (32 * arg3.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if arg3.length < 2:
        revert with 0, 'PancakeLibrary: INVALID_PATH'
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg3.length) + 97] = arg3.length
    mem[64] = floor32(arg3.length) + (32 * arg3.length) + 129
    if not arg3.length:
        if 0 < arg3.length:
            mem[floor32(arg3.length) + 129] = arg2
            if var182003 < 1:
                revert with 'NH{q', 17
            if var186002 >= var186001:
                return Array(len=arg3.length, data=mem[floor32(arg3.length) + 129 len 32 * arg3.length])
            if var188001 < arg3.length:
                if var200003 > -2:
                    revert with 'NH{q', 17
                idx = var202002 + 1
                s = var202006
                t = var202011
                while idx < arg3.length:
                    _12634 = mem[(32 * idx) + 128]
                    if not address(s) - mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                    if address(s) < mem[(32 * idx) + 140 len 20]:
                        if not address(s):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_12634)
                        staticcall arg1.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_12634)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12656 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_12656] == mem[_12656 + 12 len 20]
                        staticcall mem[_12656 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12672 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_12672] == mem[_12672 + 18 len 14]
                        require mem[_12672 + 32] == mem[_12672 + 50 len 14]
                        require mem[_12672 + 64] == mem[_12672 + 92 len 4]
                        if t >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        if mem[(32 * t) + floor32(arg3.length) + 129] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(s) == address(s):
                            if mem[_12672 + 18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_12672 + 50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * t) + floor32(arg3.length) + 129]:
                                if not mem[_12672 + 18 len 14]:
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _12881 = mem[64]
                                    mem[mem[64]] = 32
                                    _12906 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _12906:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _12881 + (32 * _12906) + -mem[64] + 64
                                if mem[_12672 + 18 len 14] and 10000 > -1 / mem[_12672 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if not mem[_12672 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 10000 * mem[_12672 + 18 len 14] / mem[_12672 + 18 len 14] != 10000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 10000 * mem[_12672 + 18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12672 + 18 len 14] < 10000 * mem[_12672 + 18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 10000 * mem[_12672 + 18 len 14]:
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _13051 = mem[64]
                                    mem[mem[64]] = 32
                                    _13090 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _13090:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _13051 + (32 * _13090) + -mem[64] + 64
                                if not 10000 * mem[_12672 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 10000 * mem[_12672 + 18 len 14]
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13162 = mem[64]
                                mem[mem[64]] = 32
                                _13195 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13195:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13162 + (32 * _13195) + -mem[64] + 64
                            if mem[(32 * t) + floor32(arg3.length) + 129] and 9975 > -1 / mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 17
                            if not mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 18
                            if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] / mem[(32 * t) + floor32(arg3.length) + 129] != 9975:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                if not mem[_12672 + 18 len 14]:
                                    if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                        revert with 'NH{q', 17
                                    if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                        if t > -2:
                                            revert with 'NH{q', 17
                                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if t + 1 < mem[96] - 1:
                                            if t + 1 >= mem[96]:
                                                revert with 'NH{q', 50
                                            if t + 1 > -2:
                                                revert with 'NH{q', 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + 128]
                                            t = t + 1
                                            continue 
                                        _13049 = mem[64]
                                        mem[mem[64]] = 32
                                        _13089 = mem[floor32(arg3.length) + 97]
                                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                        idx = 0
                                        s = floor32(arg3.length) + 129
                                        t = mem[64] + 64
                                        while idx < _13089:
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _13049 + (32 * _13089) + -mem[64] + 64
                                    if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _13160 = mem[64]
                                    mem[mem[64]] = 32
                                    _13193 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _13193:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _13160 + (32 * _13193) + -mem[64] + 64
                                if mem[_12672 + 18 len 14] and 10000 > -1 / mem[_12672 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if not mem[_12672 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 10000 * mem[_12672 + 18 len 14] / mem[_12672 + 18 len 14] != 10000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 10000 * mem[_12672 + 18 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_12672 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12672 + 18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (10000 * mem[_12672 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _13290 = mem[64]
                                    mem[mem[64]] = 32
                                    _13337 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _13337:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _13290 + (32 * _13337) + -mem[64] + 64
                                if not (10000 * mem[_12672 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / (10000 * mem[_12672 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13402 = mem[64]
                                mem[mem[64]] = 32
                                _13435 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13435:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13402 + (32 * _13435) + -mem[64] + 64
                            if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] and mem[_12672 + 50 len 14] > -1 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 17
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 18
                            if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12672 + 50 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129] != mem[_12672 + 50 len 14]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not mem[_12672 + 18 len 14]:
                                if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                    revert with 'NH{q', 17
                                if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _13288 = mem[64]
                                    mem[mem[64]] = 32
                                    _13336 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _13336:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _13288 + (32 * _13336) + -mem[64] + 64
                                if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12672 + 50 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13400 = mem[64]
                                mem[mem[64]] = 32
                                _13433 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13433:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13400 + (32 * _13433) + -mem[64] + 64
                            if mem[_12672 + 18 len 14] and 10000 > -1 / mem[_12672 + 18 len 14]:
                                revert with 'NH{q', 17
                            if not mem[_12672 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 10000 * mem[_12672 + 18 len 14] / mem[_12672 + 18 len 14] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 10000 * mem[_12672 + 18 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_12672 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12672 + 18 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (10000 * mem[_12672 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13496 = mem[64]
                                mem[mem[64]] = 32
                                _13528 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13528:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13496 + (32 * _13528) + -mem[64] + 64
                            if not (10000 * mem[_12672 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12672 + 50 len 14] / (10000 * mem[_12672 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13560 = mem[64]
                            mem[mem[64]] = 32
                            _13577 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13577:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13560 + (32 * _13577) + -mem[64] + 64
                        if mem[_12672 + 50 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_12672 + 18 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * t) + floor32(arg3.length) + 129]:
                            if not mem[_12672 + 50 len 14]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _12884 = mem[64]
                                mem[mem[64]] = 32
                                _12909 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _12909:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _12884 + (32 * _12909) + -mem[64] + 64
                            if mem[_12672 + 50 len 14] and 10000 > -1 / mem[_12672 + 50 len 14]:
                                revert with 'NH{q', 17
                            if not mem[_12672 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 10000 * mem[_12672 + 50 len 14] / mem[_12672 + 50 len 14] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 10000 * mem[_12672 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_12672 + 50 len 14] < 10000 * mem[_12672 + 50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 10000 * mem[_12672 + 50 len 14]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13056 = mem[64]
                                mem[mem[64]] = 32
                                _13093 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13093:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13056 + (32 * _13093) + -mem[64] + 64
                            if not 10000 * mem[_12672 + 50 len 14]:
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 10000 * mem[_12672 + 50 len 14]
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13166 = mem[64]
                            mem[mem[64]] = 32
                            _13199 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13199:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13166 + (32 * _13199) + -mem[64] + 64
                        if mem[(32 * t) + floor32(arg3.length) + 129] and 9975 > -1 / mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 17
                        if not mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 18
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] / mem[(32 * t) + floor32(arg3.length) + 129] != 9975:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            if not mem[_12672 + 50 len 14]:
                                if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                    revert with 'NH{q', 17
                                if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _13054 = mem[64]
                                    mem[mem[64]] = 32
                                    _13092 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _13092:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _13054 + (32 * _13092) + -mem[64] + 64
                                if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13164 = mem[64]
                                mem[mem[64]] = 32
                                _13197 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13197:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13164 + (32 * _13197) + -mem[64] + 64
                            if mem[_12672 + 50 len 14] and 10000 > -1 / mem[_12672 + 50 len 14]:
                                revert with 'NH{q', 17
                            if not mem[_12672 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 10000 * mem[_12672 + 50 len 14] / mem[_12672 + 50 len 14] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 10000 * mem[_12672 + 50 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_12672 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12672 + 50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (10000 * mem[_12672 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13294 = mem[64]
                                mem[mem[64]] = 32
                                _13339 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13339:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13294 + (32 * _13339) + -mem[64] + 64
                            if not (10000 * mem[_12672 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / (10000 * mem[_12672 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13406 = mem[64]
                            mem[mem[64]] = 32
                            _13439 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13439:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13406 + (32 * _13439) + -mem[64] + 64
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] and mem[_12672 + 18 len 14] > -1 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 17
                        if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 18
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12672 + 18 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129] != mem[_12672 + 18 len 14]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not mem[_12672 + 50 len 14]:
                            if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                revert with 'NH{q', 17
                            if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13292 = mem[64]
                                mem[mem[64]] = 32
                                _13338 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13338:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13292 + (32 * _13338) + -mem[64] + 64
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12672 + 18 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13404 = mem[64]
                            mem[mem[64]] = 32
                            _13437 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13437:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13404 + (32 * _13437) + -mem[64] + 64
                        if mem[_12672 + 50 len 14] and 10000 > -1 / mem[_12672 + 50 len 14]:
                            revert with 'NH{q', 17
                        if not mem[_12672 + 50 len 14]:
                            revert with 'NH{q', 18
                        if 10000 * mem[_12672 + 50 len 14] / mem[_12672 + 50 len 14] != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * mem[_12672 + 50 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[_12672 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12672 + 50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (10000 * mem[_12672 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13498 = mem[64]
                            mem[mem[64]] = 32
                            _13529 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13529:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13498 + (32 * _13529) + -mem[64] + 64
                        if not (10000 * mem[_12672 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                            revert with 'NH{q', 18
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12672 + 18 len 14] / (10000 * mem[_12672 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if t + 1 > -2:
                                revert with 'NH{q', 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        _13562 = mem[64]
                        mem[mem[64]] = 32
                        _13579 = mem[floor32(arg3.length) + 97]
                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                        idx = 0
                        s = floor32(arg3.length) + 129
                        t = mem[64] + 64
                        while idx < _13579:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _13562 + (32 * _13579) + -mem[64] + 64
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_12634)
                    staticcall arg1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(s), address(_12634)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12657 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12657] == mem[_12657 + 12 len 20]
                    staticcall mem[_12657 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12673 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_12673] == mem[_12673 + 18 len 14]
                    require mem[_12673 + 32] == mem[_12673 + 50 len 14]
                    require mem[_12673 + 64] == mem[_12673 + 92 len 4]
                    if t >= mem[floor32(arg3.length) + 97]:
                        revert with 'NH{q', 50
                    if mem[(32 * t) + floor32(arg3.length) + 129] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(_12634):
                        if mem[_12673 + 18 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_12673 + 50 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * t) + floor32(arg3.length) + 129]:
                            if not mem[_12673 + 18 len 14]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _12887 = mem[64]
                                mem[mem[64]] = 32
                                _12912 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _12912:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _12887 + (32 * _12912) + -mem[64] + 64
                            if mem[_12673 + 18 len 14] and 10000 > -1 / mem[_12673 + 18 len 14]:
                                revert with 'NH{q', 17
                            if not mem[_12673 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 10000 * mem[_12673 + 18 len 14] / mem[_12673 + 18 len 14] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 10000 * mem[_12673 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_12673 + 18 len 14] < 10000 * mem[_12673 + 18 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 10000 * mem[_12673 + 18 len 14]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13061 = mem[64]
                                mem[mem[64]] = 32
                                _13096 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13096:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13061 + (32 * _13096) + -mem[64] + 64
                            if not 10000 * mem[_12673 + 18 len 14]:
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 10000 * mem[_12673 + 18 len 14]
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13170 = mem[64]
                            mem[mem[64]] = 32
                            _13203 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13203:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13170 + (32 * _13203) + -mem[64] + 64
                        if mem[(32 * t) + floor32(arg3.length) + 129] and 9975 > -1 / mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 17
                        if not mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 18
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] / mem[(32 * t) + floor32(arg3.length) + 129] != 9975:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            if not mem[_12673 + 18 len 14]:
                                if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                    revert with 'NH{q', 17
                                if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _13059 = mem[64]
                                    mem[mem[64]] = 32
                                    _13095 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _13095:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _13059 + (32 * _13095) + -mem[64] + 64
                                if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13168 = mem[64]
                                mem[mem[64]] = 32
                                _13201 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13201:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13168 + (32 * _13201) + -mem[64] + 64
                            if mem[_12673 + 18 len 14] and 10000 > -1 / mem[_12673 + 18 len 14]:
                                revert with 'NH{q', 17
                            if not mem[_12673 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 10000 * mem[_12673 + 18 len 14] / mem[_12673 + 18 len 14] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 10000 * mem[_12673 + 18 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_12673 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12673 + 18 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (10000 * mem[_12673 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13298 = mem[64]
                                mem[mem[64]] = 32
                                _13341 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13341:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13298 + (32 * _13341) + -mem[64] + 64
                            if not (10000 * mem[_12673 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / (10000 * mem[_12673 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13410 = mem[64]
                            mem[mem[64]] = 32
                            _13443 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13443:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13410 + (32 * _13443) + -mem[64] + 64
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] and mem[_12673 + 50 len 14] > -1 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 17
                        if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 18
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12673 + 50 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129] != mem[_12673 + 50 len 14]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not mem[_12673 + 18 len 14]:
                            if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                revert with 'NH{q', 17
                            if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13296 = mem[64]
                                mem[mem[64]] = 32
                                _13340 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13340:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13296 + (32 * _13340) + -mem[64] + 64
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12673 + 50 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13408 = mem[64]
                            mem[mem[64]] = 32
                            _13441 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13441:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13408 + (32 * _13441) + -mem[64] + 64
                        if mem[_12673 + 18 len 14] and 10000 > -1 / mem[_12673 + 18 len 14]:
                            revert with 'NH{q', 17
                        if not mem[_12673 + 18 len 14]:
                            revert with 'NH{q', 18
                        if 10000 * mem[_12673 + 18 len 14] / mem[_12673 + 18 len 14] != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * mem[_12673 + 18 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[_12673 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12673 + 18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (10000 * mem[_12673 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13500 = mem[64]
                            mem[mem[64]] = 32
                            _13530 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13530:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13500 + (32 * _13530) + -mem[64] + 64
                        if not (10000 * mem[_12673 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                            revert with 'NH{q', 18
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12673 + 50 len 14] / (10000 * mem[_12673 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if t + 1 > -2:
                                revert with 'NH{q', 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        _13564 = mem[64]
                        mem[mem[64]] = 32
                        _13581 = mem[floor32(arg3.length) + 97]
                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                        idx = 0
                        s = floor32(arg3.length) + 129
                        t = mem[64] + 64
                        while idx < _13581:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _13564 + (32 * _13581) + -mem[64] + 64
                    if mem[_12673 + 50 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_12673 + 18 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * t) + floor32(arg3.length) + 129]:
                        if not mem[_12673 + 50 len 14]:
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _12890 = mem[64]
                            mem[mem[64]] = 32
                            _12915 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _12915:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _12890 + (32 * _12915) + -mem[64] + 64
                        if mem[_12673 + 50 len 14] and 10000 > -1 / mem[_12673 + 50 len 14]:
                            revert with 'NH{q', 17
                        if not mem[_12673 + 50 len 14]:
                            revert with 'NH{q', 18
                        if 10000 * mem[_12673 + 50 len 14] / mem[_12673 + 50 len 14] != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * mem[_12673 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_12673 + 50 len 14] < 10000 * mem[_12673 + 50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 10000 * mem[_12673 + 50 len 14]:
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13066 = mem[64]
                            mem[mem[64]] = 32
                            _13099 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13099:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13066 + (32 * _13099) + -mem[64] + 64
                        if not 10000 * mem[_12673 + 50 len 14]:
                            revert with 'NH{q', 18
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 10000 * mem[_12673 + 50 len 14]
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if t + 1 > -2:
                                revert with 'NH{q', 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        _13174 = mem[64]
                        mem[mem[64]] = 32
                        _13207 = mem[floor32(arg3.length) + 97]
                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                        idx = 0
                        s = floor32(arg3.length) + 129
                        t = mem[64] + 64
                        while idx < _13207:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _13174 + (32 * _13207) + -mem[64] + 64
                    if mem[(32 * t) + floor32(arg3.length) + 129] and 9975 > -1 / mem[(32 * t) + floor32(arg3.length) + 129]:
                        revert with 'NH{q', 17
                    if not mem[(32 * t) + floor32(arg3.length) + 129]:
                        revert with 'NH{q', 18
                    if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] / mem[(32 * t) + floor32(arg3.length) + 129] != 9975:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                        if not mem[_12673 + 50 len 14]:
                            if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                revert with 'NH{q', 17
                            if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13064 = mem[64]
                                mem[mem[64]] = 32
                                _13098 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13098:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13064 + (32 * _13098) + -mem[64] + 64
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13172 = mem[64]
                            mem[mem[64]] = 32
                            _13205 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13205:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13172 + (32 * _13205) + -mem[64] + 64
                        if mem[_12673 + 50 len 14] and 10000 > -1 / mem[_12673 + 50 len 14]:
                            revert with 'NH{q', 17
                        if not mem[_12673 + 50 len 14]:
                            revert with 'NH{q', 18
                        if 10000 * mem[_12673 + 50 len 14] / mem[_12673 + 50 len 14] != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * mem[_12673 + 50 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[_12673 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12673 + 50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (10000 * mem[_12673 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13302 = mem[64]
                            mem[mem[64]] = 32
                            _13343 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13343:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13302 + (32 * _13343) + -mem[64] + 64
                        if not (10000 * mem[_12673 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                            revert with 'NH{q', 18
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / (10000 * mem[_12673 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if t + 1 > -2:
                                revert with 'NH{q', 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        _13414 = mem[64]
                        mem[mem[64]] = 32
                        _13447 = mem[floor32(arg3.length) + 97]
                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                        idx = 0
                        s = floor32(arg3.length) + 129
                        t = mem[64] + 64
                        while idx < _13447:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _13414 + (32 * _13447) + -mem[64] + 64
                    if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] and mem[_12673 + 18 len 14] > -1 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                        revert with 'NH{q', 17
                    if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                        revert with 'NH{q', 18
                    if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12673 + 18 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129] != mem[_12673 + 18 len 14]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not mem[_12673 + 50 len 14]:
                        if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                            revert with 'NH{q', 17
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13300 = mem[64]
                            mem[mem[64]] = 32
                            _13342 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13342:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13300 + (32 * _13342) + -mem[64] + 64
                        if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 18
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12673 + 18 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if t + 1 > -2:
                                revert with 'NH{q', 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        _13412 = mem[64]
                        mem[mem[64]] = 32
                        _13445 = mem[floor32(arg3.length) + 97]
                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                        idx = 0
                        s = floor32(arg3.length) + 129
                        t = mem[64] + 64
                        while idx < _13445:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _13412 + (32 * _13445) + -mem[64] + 64
                    if mem[_12673 + 50 len 14] and 10000 > -1 / mem[_12673 + 50 len 14]:
                        revert with 'NH{q', 17
                    if not mem[_12673 + 50 len 14]:
                        revert with 'NH{q', 18
                    if 10000 * mem[_12673 + 50 len 14] / mem[_12673 + 50 len 14] != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * mem[_12673 + 50 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[_12673 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12673 + 50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (10000 * mem[_12673 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if t + 1 > -2:
                                revert with 'NH{q', 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        _13502 = mem[64]
                        mem[mem[64]] = 32
                        _13531 = mem[floor32(arg3.length) + 97]
                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                        idx = 0
                        s = floor32(arg3.length) + 129
                        t = mem[64] + 64
                        while idx < _13531:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _13502 + (32 * _13531) + -mem[64] + 64
                    if not (10000 * mem[_12673 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                        revert with 'NH{q', 18
                    if t > -2:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12673 + 18 len 14] / (10000 * mem[_12673 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if t + 1 < mem[96] - 1:
                        if t + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if t + 1 > -2:
                            revert with 'NH{q', 17
                        idx = t + 2
                        s = mem[(32 * t + 1) + 128]
                        t = t + 1
                        continue 
                    _13566 = mem[64]
                    mem[mem[64]] = 32
                    _13583 = mem[floor32(arg3.length) + 97]
                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                    idx = 0
                    s = floor32(arg3.length) + 129
                    t = mem[64] + 64
                    while idx < _13583:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _13566 + (32 * _13583) + -mem[64] + 64
    else:
        mem[floor32(arg3.length) + 129 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        if 0 < arg3.length:
            mem[floor32(arg3.length) + 129] = arg2
            if var183003 < 1:
                revert with 'NH{q', 17
            if var187002 >= var187001:
                return Array(len=arg3.length, data=mem[floor32(arg3.length) + 129 len 32 * arg3.length])
            if var189001 < arg3.length:
                if var201003 > -2:
                    revert with 'NH{q', 17
                idx = var203002 + 1
                s = var203006
                t = var203011
                while idx < arg3.length:
                    _12635 = mem[(32 * idx) + 128]
                    if not address(s) - mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
                    if address(s) < mem[(32 * idx) + 140 len 20]:
                        if not address(s):
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(s)
                        mem[mem[64] + 36] = address(_12635)
                        staticcall arg1.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(s), address(_12635)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12658 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_12658] == mem[_12658 + 12 len 20]
                        staticcall mem[_12658 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12674 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_12674] == mem[_12674 + 18 len 14]
                        require mem[_12674 + 32] == mem[_12674 + 50 len 14]
                        require mem[_12674 + 64] == mem[_12674 + 92 len 4]
                        if t >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        if mem[(32 * t) + floor32(arg3.length) + 129] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                        if address(s) == address(s):
                            if mem[_12674 + 18 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if mem[_12674 + 50 len 14] <= 0:
                                revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                            if not mem[(32 * t) + floor32(arg3.length) + 129]:
                                if not mem[_12674 + 18 len 14]:
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _12893 = mem[64]
                                    mem[mem[64]] = 32
                                    _12918 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _12918:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _12893 + (32 * _12918) + -mem[64] + 64
                                if mem[_12674 + 18 len 14] and 10000 > -1 / mem[_12674 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if not mem[_12674 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 10000 * mem[_12674 + 18 len 14] / mem[_12674 + 18 len 14] != 10000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 10000 * mem[_12674 + 18 len 14] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12674 + 18 len 14] < 10000 * mem[_12674 + 18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 10000 * mem[_12674 + 18 len 14]:
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _13071 = mem[64]
                                    mem[mem[64]] = 32
                                    _13102 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _13102:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _13071 + (32 * _13102) + -mem[64] + 64
                                if not 10000 * mem[_12674 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 10000 * mem[_12674 + 18 len 14]
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13178 = mem[64]
                                mem[mem[64]] = 32
                                _13211 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13211:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13178 + (32 * _13211) + -mem[64] + 64
                            if mem[(32 * t) + floor32(arg3.length) + 129] and 9975 > -1 / mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 17
                            if not mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 18
                            if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] / mem[(32 * t) + floor32(arg3.length) + 129] != 9975:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                if not mem[_12674 + 18 len 14]:
                                    if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                        revert with 'NH{q', 17
                                    if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                        if t > -2:
                                            revert with 'NH{q', 17
                                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if t + 1 < mem[96] - 1:
                                            if t + 1 >= mem[96]:
                                                revert with 'NH{q', 50
                                            if t + 1 > -2:
                                                revert with 'NH{q', 17
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + 128]
                                            t = t + 1
                                            continue 
                                        _13069 = mem[64]
                                        mem[mem[64]] = 32
                                        _13101 = mem[floor32(arg3.length) + 97]
                                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                        idx = 0
                                        s = floor32(arg3.length) + 129
                                        t = mem[64] + 64
                                        while idx < _13101:
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _13069 + (32 * _13101) + -mem[64] + 64
                                    if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                        revert with 'NH{q', 18
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _13176 = mem[64]
                                    mem[mem[64]] = 32
                                    _13209 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _13209:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _13176 + (32 * _13209) + -mem[64] + 64
                                if mem[_12674 + 18 len 14] and 10000 > -1 / mem[_12674 + 18 len 14]:
                                    revert with 'NH{q', 17
                                if not mem[_12674 + 18 len 14]:
                                    revert with 'NH{q', 18
                                if 10000 * mem[_12674 + 18 len 14] / mem[_12674 + 18 len 14] != 10000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 10000 * mem[_12674 + 18 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                    revert with 'NH{q', 17
                                if (10000 * mem[_12674 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12674 + 18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (10000 * mem[_12674 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _13306 = mem[64]
                                    mem[mem[64]] = 32
                                    _13345 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _13345:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _13306 + (32 * _13345) + -mem[64] + 64
                                if not (10000 * mem[_12674 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / (10000 * mem[_12674 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13418 = mem[64]
                                mem[mem[64]] = 32
                                _13451 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13451:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13418 + (32 * _13451) + -mem[64] + 64
                            if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] and mem[_12674 + 50 len 14] > -1 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 17
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 18
                            if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12674 + 50 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129] != mem[_12674 + 50 len 14]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not mem[_12674 + 18 len 14]:
                                if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                    revert with 'NH{q', 17
                                if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _13304 = mem[64]
                                    mem[mem[64]] = 32
                                    _13344 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _13344:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _13304 + (32 * _13344) + -mem[64] + 64
                                if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12674 + 50 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13416 = mem[64]
                                mem[mem[64]] = 32
                                _13449 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13449:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13416 + (32 * _13449) + -mem[64] + 64
                            if mem[_12674 + 18 len 14] and 10000 > -1 / mem[_12674 + 18 len 14]:
                                revert with 'NH{q', 17
                            if not mem[_12674 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 10000 * mem[_12674 + 18 len 14] / mem[_12674 + 18 len 14] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 10000 * mem[_12674 + 18 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_12674 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12674 + 18 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (10000 * mem[_12674 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13504 = mem[64]
                                mem[mem[64]] = 32
                                _13532 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13532:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13504 + (32 * _13532) + -mem[64] + 64
                            if not (10000 * mem[_12674 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12674 + 50 len 14] / (10000 * mem[_12674 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13568 = mem[64]
                            mem[mem[64]] = 32
                            _13585 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13585:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13568 + (32 * _13585) + -mem[64] + 64
                        if mem[_12674 + 50 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_12674 + 18 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * t) + floor32(arg3.length) + 129]:
                            if not mem[_12674 + 50 len 14]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _12896 = mem[64]
                                mem[mem[64]] = 32
                                _12921 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _12921:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _12896 + (32 * _12921) + -mem[64] + 64
                            if mem[_12674 + 50 len 14] and 10000 > -1 / mem[_12674 + 50 len 14]:
                                revert with 'NH{q', 17
                            if not mem[_12674 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 10000 * mem[_12674 + 50 len 14] / mem[_12674 + 50 len 14] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 10000 * mem[_12674 + 50 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_12674 + 50 len 14] < 10000 * mem[_12674 + 50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 10000 * mem[_12674 + 50 len 14]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13076 = mem[64]
                                mem[mem[64]] = 32
                                _13105 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13105:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13076 + (32 * _13105) + -mem[64] + 64
                            if not 10000 * mem[_12674 + 50 len 14]:
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 10000 * mem[_12674 + 50 len 14]
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13182 = mem[64]
                            mem[mem[64]] = 32
                            _13215 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13215:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13182 + (32 * _13215) + -mem[64] + 64
                        if mem[(32 * t) + floor32(arg3.length) + 129] and 9975 > -1 / mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 17
                        if not mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 18
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] / mem[(32 * t) + floor32(arg3.length) + 129] != 9975:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            if not mem[_12674 + 50 len 14]:
                                if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                    revert with 'NH{q', 17
                                if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _13074 = mem[64]
                                    mem[mem[64]] = 32
                                    _13104 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _13104:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _13074 + (32 * _13104) + -mem[64] + 64
                                if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13180 = mem[64]
                                mem[mem[64]] = 32
                                _13213 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13213:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13180 + (32 * _13213) + -mem[64] + 64
                            if mem[_12674 + 50 len 14] and 10000 > -1 / mem[_12674 + 50 len 14]:
                                revert with 'NH{q', 17
                            if not mem[_12674 + 50 len 14]:
                                revert with 'NH{q', 18
                            if 10000 * mem[_12674 + 50 len 14] / mem[_12674 + 50 len 14] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 10000 * mem[_12674 + 50 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_12674 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12674 + 50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (10000 * mem[_12674 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13310 = mem[64]
                                mem[mem[64]] = 32
                                _13347 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13347:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13310 + (32 * _13347) + -mem[64] + 64
                            if not (10000 * mem[_12674 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / (10000 * mem[_12674 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13422 = mem[64]
                            mem[mem[64]] = 32
                            _13455 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13455:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13422 + (32 * _13455) + -mem[64] + 64
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] and mem[_12674 + 18 len 14] > -1 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 17
                        if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 18
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12674 + 18 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129] != mem[_12674 + 18 len 14]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not mem[_12674 + 50 len 14]:
                            if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                revert with 'NH{q', 17
                            if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13308 = mem[64]
                                mem[mem[64]] = 32
                                _13346 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13346:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13308 + (32 * _13346) + -mem[64] + 64
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12674 + 18 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13420 = mem[64]
                            mem[mem[64]] = 32
                            _13453 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13453:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13420 + (32 * _13453) + -mem[64] + 64
                        if mem[_12674 + 50 len 14] and 10000 > -1 / mem[_12674 + 50 len 14]:
                            revert with 'NH{q', 17
                        if not mem[_12674 + 50 len 14]:
                            revert with 'NH{q', 18
                        if 10000 * mem[_12674 + 50 len 14] / mem[_12674 + 50 len 14] != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * mem[_12674 + 50 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[_12674 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12674 + 50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (10000 * mem[_12674 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13506 = mem[64]
                            mem[mem[64]] = 32
                            _13533 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13533:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13506 + (32 * _13533) + -mem[64] + 64
                        if not (10000 * mem[_12674 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                            revert with 'NH{q', 18
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12674 + 18 len 14] / (10000 * mem[_12674 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if t + 1 > -2:
                                revert with 'NH{q', 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        _13570 = mem[64]
                        mem[mem[64]] = 32
                        _13587 = mem[floor32(arg3.length) + 97]
                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                        idx = 0
                        s = floor32(arg3.length) + 129
                        t = mem[64] + 64
                        while idx < _13587:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _13570 + (32 * _13587) + -mem[64] + 64
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_12635)
                    staticcall arg1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(s), address(_12635)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_12659] == mem[_12659 + 12 len 20]
                    staticcall mem[_12659 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12675 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_12675] == mem[_12675 + 18 len 14]
                    require mem[_12675 + 32] == mem[_12675 + 50 len 14]
                    require mem[_12675 + 64] == mem[_12675 + 92 len 4]
                    if t >= mem[floor32(arg3.length) + 97]:
                        revert with 'NH{q', 50
                    if mem[(32 * t) + floor32(arg3.length) + 129] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if address(s) == address(_12635):
                        if mem[_12675 + 18 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if mem[_12675 + 50 len 14] <= 0:
                            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * t) + floor32(arg3.length) + 129]:
                            if not mem[_12675 + 18 len 14]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _12899 = mem[64]
                                mem[mem[64]] = 32
                                _12924 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _12924:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _12899 + (32 * _12924) + -mem[64] + 64
                            if mem[_12675 + 18 len 14] and 10000 > -1 / mem[_12675 + 18 len 14]:
                                revert with 'NH{q', 17
                            if not mem[_12675 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 10000 * mem[_12675 + 18 len 14] / mem[_12675 + 18 len 14] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 10000 * mem[_12675 + 18 len 14] > -1:
                                revert with 'NH{q', 17
                            if 10000 * mem[_12675 + 18 len 14] < 10000 * mem[_12675 + 18 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 10000 * mem[_12675 + 18 len 14]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13081 = mem[64]
                                mem[mem[64]] = 32
                                _13108 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13108:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13081 + (32 * _13108) + -mem[64] + 64
                            if not 10000 * mem[_12675 + 18 len 14]:
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 10000 * mem[_12675 + 18 len 14]
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13186 = mem[64]
                            mem[mem[64]] = 32
                            _13219 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13219:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13186 + (32 * _13219) + -mem[64] + 64
                        if mem[(32 * t) + floor32(arg3.length) + 129] and 9975 > -1 / mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 17
                        if not mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 18
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] / mem[(32 * t) + floor32(arg3.length) + 129] != 9975:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            if not mem[_12675 + 18 len 14]:
                                if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                    revert with 'NH{q', 17
                                if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                    if t > -2:
                                        revert with 'NH{q', 17
                                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if t + 1 > -2:
                                            revert with 'NH{q', 17
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        continue 
                                    _13079 = mem[64]
                                    mem[mem[64]] = 32
                                    _13107 = mem[floor32(arg3.length) + 97]
                                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                    idx = 0
                                    s = floor32(arg3.length) + 129
                                    t = mem[64] + 64
                                    while idx < _13107:
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _13079 + (32 * _13107) + -mem[64] + 64
                                if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                    revert with 'NH{q', 18
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13184 = mem[64]
                                mem[mem[64]] = 32
                                _13217 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13217:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13184 + (32 * _13217) + -mem[64] + 64
                            if mem[_12675 + 18 len 14] and 10000 > -1 / mem[_12675 + 18 len 14]:
                                revert with 'NH{q', 17
                            if not mem[_12675 + 18 len 14]:
                                revert with 'NH{q', 18
                            if 10000 * mem[_12675 + 18 len 14] / mem[_12675 + 18 len 14] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 10000 * mem[_12675 + 18 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                revert with 'NH{q', 17
                            if (10000 * mem[_12675 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12675 + 18 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (10000 * mem[_12675 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13314 = mem[64]
                                mem[mem[64]] = 32
                                _13349 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13349:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13314 + (32 * _13349) + -mem[64] + 64
                            if not (10000 * mem[_12675 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / (10000 * mem[_12675 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13426 = mem[64]
                            mem[mem[64]] = 32
                            _13459 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13459:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13426 + (32 * _13459) + -mem[64] + 64
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] and mem[_12675 + 50 len 14] > -1 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 17
                        if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 18
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12675 + 50 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129] != mem[_12675 + 50 len 14]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not mem[_12675 + 18 len 14]:
                            if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                revert with 'NH{q', 17
                            if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13312 = mem[64]
                                mem[mem[64]] = 32
                                _13348 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13348:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13312 + (32 * _13348) + -mem[64] + 64
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12675 + 50 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13424 = mem[64]
                            mem[mem[64]] = 32
                            _13457 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13457:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13424 + (32 * _13457) + -mem[64] + 64
                        if mem[_12675 + 18 len 14] and 10000 > -1 / mem[_12675 + 18 len 14]:
                            revert with 'NH{q', 17
                        if not mem[_12675 + 18 len 14]:
                            revert with 'NH{q', 18
                        if 10000 * mem[_12675 + 18 len 14] / mem[_12675 + 18 len 14] != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * mem[_12675 + 18 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[_12675 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12675 + 18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (10000 * mem[_12675 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13508 = mem[64]
                            mem[mem[64]] = 32
                            _13534 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13534:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13508 + (32 * _13534) + -mem[64] + 64
                        if not (10000 * mem[_12675 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                            revert with 'NH{q', 18
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12675 + 50 len 14] / (10000 * mem[_12675 + 18 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if t + 1 > -2:
                                revert with 'NH{q', 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        _13572 = mem[64]
                        mem[mem[64]] = 32
                        _13589 = mem[floor32(arg3.length) + 97]
                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                        idx = 0
                        s = floor32(arg3.length) + 129
                        t = mem[64] + 64
                        while idx < _13589:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _13572 + (32 * _13589) + -mem[64] + 64
                    if mem[_12675 + 50 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_12675 + 18 len 14] <= 0:
                        revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
                    if not mem[(32 * t) + floor32(arg3.length) + 129]:
                        if not mem[_12675 + 50 len 14]:
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _12902 = mem[64]
                            mem[mem[64]] = 32
                            _12927 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _12927:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _12902 + (32 * _12927) + -mem[64] + 64
                        if mem[_12675 + 50 len 14] and 10000 > -1 / mem[_12675 + 50 len 14]:
                            revert with 'NH{q', 17
                        if not mem[_12675 + 50 len 14]:
                            revert with 'NH{q', 18
                        if 10000 * mem[_12675 + 50 len 14] / mem[_12675 + 50 len 14] != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * mem[_12675 + 50 len 14] > -1:
                            revert with 'NH{q', 17
                        if 10000 * mem[_12675 + 50 len 14] < 10000 * mem[_12675 + 50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 10000 * mem[_12675 + 50 len 14]:
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13086 = mem[64]
                            mem[mem[64]] = 32
                            _13111 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13111:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13086 + (32 * _13111) + -mem[64] + 64
                        if not 10000 * mem[_12675 + 50 len 14]:
                            revert with 'NH{q', 18
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 10000 * mem[_12675 + 50 len 14]
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if t + 1 > -2:
                                revert with 'NH{q', 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        _13190 = mem[64]
                        mem[mem[64]] = 32
                        _13223 = mem[floor32(arg3.length) + 97]
                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                        idx = 0
                        s = floor32(arg3.length) + 129
                        t = mem[64] + 64
                        while idx < _13223:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _13190 + (32 * _13223) + -mem[64] + 64
                    if mem[(32 * t) + floor32(arg3.length) + 129] and 9975 > -1 / mem[(32 * t) + floor32(arg3.length) + 129]:
                        revert with 'NH{q', 17
                    if not mem[(32 * t) + floor32(arg3.length) + 129]:
                        revert with 'NH{q', 18
                    if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] / mem[(32 * t) + floor32(arg3.length) + 129] != 9975:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                        if not mem[_12675 + 50 len 14]:
                            if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                                revert with 'NH{q', 17
                            if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                if t > -2:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[floor32(arg3.length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                                if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if t + 1 > -2:
                                        revert with 'NH{q', 17
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    continue 
                                _13084 = mem[64]
                                mem[mem[64]] = 32
                                _13110 = mem[floor32(arg3.length) + 97]
                                mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                                idx = 0
                                s = floor32(arg3.length) + 129
                                t = mem[64] + 64
                                while idx < _13110:
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _13084 + (32 * _13110) + -mem[64] + 64
                            if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                                revert with 'NH{q', 18
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13188 = mem[64]
                            mem[mem[64]] = 32
                            _13221 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13221:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13188 + (32 * _13221) + -mem[64] + 64
                        if mem[_12675 + 50 len 14] and 10000 > -1 / mem[_12675 + 50 len 14]:
                            revert with 'NH{q', 17
                        if not mem[_12675 + 50 len 14]:
                            revert with 'NH{q', 18
                        if 10000 * mem[_12675 + 50 len 14] / mem[_12675 + 50 len 14] != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * mem[_12675 + 50 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                            revert with 'NH{q', 17
                        if (10000 * mem[_12675 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12675 + 50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (10000 * mem[_12675 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13318 = mem[64]
                            mem[mem[64]] = 32
                            _13351 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13351:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13318 + (32 * _13351) + -mem[64] + 64
                        if not (10000 * mem[_12675 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                            revert with 'NH{q', 18
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0 / (10000 * mem[_12675 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if t + 1 > -2:
                                revert with 'NH{q', 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        _13430 = mem[64]
                        mem[mem[64]] = 32
                        _13463 = mem[floor32(arg3.length) + 97]
                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                        idx = 0
                        s = floor32(arg3.length) + 129
                        t = mem[64] + 64
                        while idx < _13463:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _13430 + (32 * _13463) + -mem[64] + 64
                    if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] and mem[_12675 + 18 len 14] > -1 / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                        revert with 'NH{q', 17
                    if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                        revert with 'NH{q', 18
                    if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12675 + 18 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129] != mem[_12675 + 18 len 14]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not mem[_12675 + 50 len 14]:
                        if 0 > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                            revert with 'NH{q', 17
                        if 9975 * mem[(32 * t) + floor32(arg3.length) + 129] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[floor32(arg3.length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                            if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if t + 1 < mem[96] - 1:
                                if t + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if t + 1 > -2:
                                    revert with 'NH{q', 17
                                idx = t + 2
                                s = mem[(32 * t + 1) + 128]
                                t = t + 1
                                continue 
                            _13316 = mem[64]
                            mem[mem[64]] = 32
                            _13350 = mem[floor32(arg3.length) + 97]
                            mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                            idx = 0
                            s = floor32(arg3.length) + 129
                            t = mem[64] + 64
                            while idx < _13350:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len _13316 + (32 * _13350) + -mem[64] + 64
                        if not 9975 * mem[(32 * t) + floor32(arg3.length) + 129]:
                            revert with 'NH{q', 18
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12675 + 18 len 14] / 9975 * mem[(32 * t) + floor32(arg3.length) + 129]
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if t + 1 > -2:
                                revert with 'NH{q', 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        _13428 = mem[64]
                        mem[mem[64]] = 32
                        _13461 = mem[floor32(arg3.length) + 97]
                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                        idx = 0
                        s = floor32(arg3.length) + 129
                        t = mem[64] + 64
                        while idx < _13461:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _13428 + (32 * _13461) + -mem[64] + 64
                    if mem[_12675 + 50 len 14] and 10000 > -1 / mem[_12675 + 50 len 14]:
                        revert with 'NH{q', 17
                    if not mem[_12675 + 50 len 14]:
                        revert with 'NH{q', 18
                    if 10000 * mem[_12675 + 50 len 14] / mem[_12675 + 50 len 14] != 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10000 * mem[_12675 + 50 len 14] > (-9975 * mem[(32 * t) + floor32(arg3.length) + 129]) - 1:
                        revert with 'NH{q', 17
                    if (10000 * mem[_12675 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]) < 10000 * mem[_12675 + 50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (10000 * mem[_12675 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                        if t > -2:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[floor32(arg3.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + floor32(arg3.length) + 129] = 0
                        if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if t + 1 > -2:
                                revert with 'NH{q', 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            continue 
                        _13510 = mem[64]
                        mem[mem[64]] = 32
                        _13535 = mem[floor32(arg3.length) + 97]
                        mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                        idx = 0
                        s = floor32(arg3.length) + 129
                        t = mem[64] + 64
                        while idx < _13535:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _13510 + (32 * _13535) + -mem[64] + 64
                    if not (10000 * mem[_12675 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129]):
                        revert with 'NH{q', 18
                    if t > -2:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[floor32(arg3.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + floor32(arg3.length) + 129] = 9975 * mem[(32 * t) + floor32(arg3.length) + 129] * mem[_12675 + 18 len 14] / (10000 * mem[_12675 + 50 len 14]) + (9975 * mem[(32 * t) + floor32(arg3.length) + 129])
                    if not t - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if t + 1 < mem[96] - 1:
                        if t + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if t + 1 > -2:
                            revert with 'NH{q', 17
                        idx = t + 2
                        s = mem[(32 * t + 1) + 128]
                        t = t + 1
                        continue 
                    _13574 = mem[64]
                    mem[mem[64]] = 32
                    _13591 = mem[floor32(arg3.length) + 97]
                    mem[mem[64] + 32] = mem[floor32(arg3.length) + 97]
                    idx = 0
                    s = floor32(arg3.length) + 129
                    t = mem[64] + 64
                    while idx < _13591:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _13574 + (32 * _13591) + -mem[64] + 64
    revert with 'NH{q', 50
}



}
