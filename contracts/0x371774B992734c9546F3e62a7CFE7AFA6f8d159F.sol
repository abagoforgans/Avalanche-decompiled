contract main {




// =====================  Runtime code  =====================


#
#  - sub_1d05f544(?)
#  - sub_5ada1356(?)
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



}
