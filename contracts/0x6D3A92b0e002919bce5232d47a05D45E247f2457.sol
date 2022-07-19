contract main {




// =====================  Runtime code  =====================


#
#  - getData()
#
function _fallback() payable {
    revert
}

function sub_42e43e9f(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require ext_code.size(address(arg1))
    staticcall address(arg1).getPoolId() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    require ext_code.size(0x20dd72ed959b6147912c2e529f0a0c651c33c9ce)
    staticcall 0x20dd72ed959b6147912c2e529f0a0c651c33c9ce.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 96
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require _8 + (32 * _9) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _52 = mem[ceil32(return_data.size) + 128]
    require mem[ceil32(return_data.size) + 128] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
    _53 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96] > test266151307():
        revert with 'NH{q', 65
    _54 = mem[64]
    if mem[64] + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 96]) + 1
    mem[_54] = _53
    require _52 + (32 * _53) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _52 + 128
    t = _54 + 32
    while idx < _53:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require mem[ceil32(return_data.size) + 160] == mem[ceil32(return_data.size) + 160]
    idx = 0
    s = 0
    t = 0
    while idx < mem[(2 * ceil32(return_data.size)) + 96]:
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20] != address(arg3):
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20] != address(arg4):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= _53:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[(32 * idx) + _54 + 32]
            t = t
            continue 
        if idx >= _53:
            revert with 'NH{q', 50
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20] != address(arg4):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = mem[(32 * idx) + _54 + 32]
            continue 
        if idx >= _53:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[(32 * idx) + _54 + 32]
        t = mem[(32 * idx) + _54 + 32]
        continue 
    _134 = mem[64]
    mem[64] = mem[64] + 288
    mem[_134] = 0
    mem[_134 + 32] = address(arg3)
    mem[_134 + 64] = address(arg4)
    mem[_134 + 96] = arg5
    mem[_134 + 128] = ext_call.return_data[0]
    mem[_134 + 160] = 0
    mem[_134 + 192] = 0
    mem[_134 + 224] = 0
    _136 = mem[64]
    mem[64] = mem[64] + 32
    mem[_134 + 256] = _136
    mem[_136 + 32] = 0x9d2c110c00000000000000000000000000000000000000000000000000000000
    mem[_136 + 36] = 96
    mem[_136 + 132] = 0
    mem[_136 + 164] = address(arg3)
    mem[_136 + 196] = address(arg4)
    mem[_136 + 228] = arg5
    mem[_136 + 260] = ext_call.return_data[0]
    mem[_136 + 292] = 0
    mem[_136 + 324] = 0
    mem[_136 + 356] = 0
    mem[_136 + 388] = 288
    mem[_136 + 420] = mem[_136]
    mem[_136 + 452 len ceil32(mem[_136])] = mem[_136 + 32 len ceil32(mem[_136])]
    if ceil32(mem[_136]) > mem[_136]:
        mem[_136 + mem[_136] + 452] = 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).onSwap(uint8 arg1, address arg2, address arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes arg9, uint256 arg10, uint256 arg11) with:
            gas gas_remaining wei
           args 96, t, s, 0, address(arg3), address(arg4), arg5, ext_call.return_data[0], 0, 0, 0, 288, mem[_136], mem[_136 + 452 len ceil32(mem[_136])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
