contract main {




// =====================  Runtime code  =====================


#
#  - sub_ca6e7865(?)
#
address stor0;

function sub_92e2ce22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 10^6, 10^12, 10^12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -101:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
        revert with 'NH{q', 17
    if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
        revert with 'NH{q', 17
    return (-ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100)
}

function getAmountOut(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg2
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
    require ext_code.size(arg4)
    staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
    _22 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require _21 + (32 * _22) + 32 <= return_data.size
    idx = 0
    s = _21 + 224
    t = ceil32(return_data.size) + 224
    while idx < _22:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _22 < 1:
        revert with 'NH{q', 17
    if _22 - 1 >= _22:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * _22 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 192
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    _4 = mem[160]
    require mem[160] == mem[172 len 20]
    _5 = mem[192]
    require mem[192] == mem[204 len 20]
    _6 = mem[224]
    require mem[224] == mem[224]
    _7 = mem[256]
    require mem[256] == mem[256]
    _8 = mem[288]
    require mem[288] == mem[288]
    if arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    mem[ceil32(ceil32(arg4.length)) + 133] = arg2 + arg3
    require ext_code.size(address(_4))
    call address(_4).0xa9059cbb with:
         gas gas_remaining wei
        args address(_5), arg2 + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 197] = this.address
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 229] = 128
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 261] = 0
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 293 len 0] = None
    require ext_code.size(address(_5))
    call address(_5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args _7, _8, address(this.address), 128, 0
    if not ext_call.success:
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 197] = this.address
        require ext_code.size(address(_5))
        call address(_5).swap(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _7, _8, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 133] = msg.sender
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 165] = _6
    require ext_code.size(address(_3))
    call address(_3).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _6
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if _7 > -_8 - 1:
        revert with 'NH{q', 17
    if _7 + _8 < _6:
        revert with 'NH{q', 17
    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 133] = 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99
    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 165] = _7 + _8 - _6
    require ext_code.size(address(_3))
    call address(_3).0xa9059cbb with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 133 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c2f019f8(?) payable {
    require calldata.size - 4 >= 448
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    mem[96] = arg1
    require arg2 == address(arg2)
    mem[128] = arg2
    require arg3 == address(arg3)
    mem[160] = arg3
    require arg4 == arg4
    mem[192] = arg4
    require arg5 == arg5
    mem[224] = arg5
    require arg6 == arg6
    mem[256] = arg6
    require arg7 == arg7
    mem[288] = arg7
    require calldata.size - 228 >= 224
    require arg8 == address(arg8)
    mem[320] = arg8
    require arg9 == address(arg9)
    mem[352] = arg9
    require arg10 == address(arg10)
    mem[384] = arg10
    require arg11 == arg11
    mem[416] = arg11
    require arg12 == arg12
    mem[448] = arg12
    require arg13 == arg13
    mem[480] = arg13
    require arg14 == arg14
    mem[512] = arg14
    mem[544] = 0x21444fed00000000000000000000000000000000000000000000000000000000
    mem[548] = 0
    mem[580] = 0
    mem[612] = address(arg1)
    mem[644] = address(arg2)
    mem[676] = address(arg3)
    mem[708] = arg4
    mem[740] = arg5
    mem[772] = arg6
    mem[804] = arg7
    mem[836] = address(arg8)
    mem[868] = address(arg9)
    mem[900] = address(arg10)
    mem[932] = arg11
    mem[964] = arg12
    mem[996] = arg13
    mem[1028] = arg14
    require ext_code.size(stor0)
    staticcall stor0.0x21444fed with:
            gas gas_remaining wei
           args 0, 0, address(arg1), address(arg2), address(arg3), arg4, arg5, arg6, arg7, address(arg8), address(arg9), address(arg10), arg11, arg12, arg13, arg14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _20 = mem[544 len 4], 0
    require mem[544 len 4], 0 <= test266151307()
    require return_data.size - mem[544 len 4], 0 >= 96
    if not bool(ceil32(return_data.size) + 640 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + 640
    require mem[mem[544 len 4], 0 + 544] == mem[mem[544 len 4], 0 + 544]
    mem[ceil32(return_data.size) + 544] = mem[mem[544 len 4], 0 + 544]
    require mem[_20 + 576] == bool(mem[_20 + 576])
    mem[ceil32(return_data.size) + 576] = mem[_20 + 576]
    _24 = mem[_20 + 608]
    require mem[_20 + 608] <= test266151307()
    require _20 + mem[_20 + 608] + 575 < return_data.size + 544
    _25 = mem[_20 + mem[_20 + 608] + 544]
    if mem[_20 + mem[_20 + 608] + 544] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[_20 + mem[_20 + 608] + 544]) + 641 > test266151307() or floor32(mem[_20 + mem[_20 + 608] + 544]) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[_20 + mem[_20 + 608] + 544]) + 641
    mem[ceil32(return_data.size) + 640] = _25
    require _20 + _24 + (32 * _25) + 32 <= return_data.size
    idx = 0
    s = _20 + _24 + 576
    t = ceil32(return_data.size) + 672
    while idx < _25:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 608] = ceil32(return_data.size) + 640
    if not mem[ceil32(return_data.size) + 576]:
        revert with 0, 'S3'
    if not arg7:
        if not arg7:
            _180 = mem[ceil32(return_data.size) + 544]
            if 3 >= _25:
                revert with 'NH{q', 50
            _192 = mem[ceil32(return_data.size) + 768]
            if 2 >= _25:
                revert with 'NH{q', 50
            _204 = mem[ceil32(return_data.size) + 736]
            if mem[ceil32(return_data.size) + 736] > -mem[ceil32(return_data.size) + 768] - 1:
                revert with 'NH{q', 17
            if 2 >= _25:
                revert with 'NH{q', 50
            _225 = mem[ceil32(return_data.size) + 736]
            if 3 >= _25:
                revert with 'NH{q', 50
            _237 = mem[ceil32(return_data.size) + 768]
            _238 = mem[64]
            mem[mem[64] + 32] = address(arg2)
            mem[mem[64] + 64] = address(arg3)
            mem[mem[64] + 96] = address(arg8)
            mem[mem[64] + 128] = _180
            mem[mem[64] + 160] = _225
            mem[mem[64] + 192] = _237
            _245 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _25:
                revert with 'NH{q', 50
            _257 = mem[ceil32(return_data.size) + 672]
            if 1 >= _25:
                revert with 'NH{q', 50
            _269 = mem[ceil32(return_data.size) + 704]
            mem[_238 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_238 + 228] = _257
            mem[_238 + 260] = _269
            mem[_238 + 292] = this.address
            mem[_238 + 324] = 128
            _277 = mem[_245]
            mem[_238 + 356] = mem[_245]
            mem[_238 + 388 len ceil32(_277)] = mem[_245 + 32 len ceil32(_277)]
            if ceil32(_277) > _277:
                mem[_238 + _277 + 388] = 0
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _257, _269, address(this.address), 128, mem[_238 + 356 len ceil32(_277) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _204 + _192 < _180:
                revert with 'NH{q', 17
            return _180, _204 + _192, _204 + _192 - _180
        _183 = mem[ceil32(return_data.size) + 544]
        if 3 >= _25:
            revert with 'NH{q', 50
        _195 = mem[ceil32(return_data.size) + 768]
        if 2 >= _25:
            revert with 'NH{q', 50
        _205 = mem[ceil32(return_data.size) + 736]
        if mem[ceil32(return_data.size) + 736] > -mem[ceil32(return_data.size) + 768] - 1:
            revert with 'NH{q', 17
        if 2 >= _25:
            revert with 'NH{q', 50
        _228 = mem[ceil32(return_data.size) + 736]
        if 3 >= _25:
            revert with 'NH{q', 50
        _239 = mem[ceil32(return_data.size) + 768]
        _240 = mem[64]
        mem[mem[64] + 32] = address(arg2)
        mem[mem[64] + 64] = address(arg2)
        mem[mem[64] + 96] = address(arg8)
        mem[mem[64] + 128] = _183
        mem[mem[64] + 160] = _228
        mem[mem[64] + 192] = _239
        _248 = mem[64]
        mem[mem[64]] = 192
        mem[64] = mem[64] + 224
        if 0 >= _25:
            revert with 'NH{q', 50
        _260 = mem[ceil32(return_data.size) + 672]
        if 1 >= _25:
            revert with 'NH{q', 50
        _271 = mem[ceil32(return_data.size) + 704]
        mem[_240 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_240 + 228] = _260
        mem[_240 + 260] = _271
        mem[_240 + 292] = this.address
        mem[_240 + 324] = 128
        _278 = mem[_248]
        mem[_240 + 356] = mem[_248]
        mem[_240 + 388 len ceil32(_278)] = mem[_248 + 32 len ceil32(_278)]
        if ceil32(_278) > _278:
            mem[_240 + _278 + 388] = 0
        require ext_code.size(address(arg1))
        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _260, _271, address(this.address), 128, mem[_240 + 356 len ceil32(_278) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _205 + _195 < _183:
            revert with 'NH{q', 17
        return _183, _205 + _195, _205 + _195 - _183
    if not arg7:
        _186 = mem[ceil32(return_data.size) + 544]
        if 3 >= _25:
            revert with 'NH{q', 50
        _198 = mem[ceil32(return_data.size) + 768]
        if 2 >= _25:
            revert with 'NH{q', 50
        _206 = mem[ceil32(return_data.size) + 736]
        if mem[ceil32(return_data.size) + 736] > -mem[ceil32(return_data.size) + 768] - 1:
            revert with 'NH{q', 17
        if 2 >= _25:
            revert with 'NH{q', 50
        _231 = mem[ceil32(return_data.size) + 736]
        if 3 >= _25:
            revert with 'NH{q', 50
        _241 = mem[ceil32(return_data.size) + 768]
        _242 = mem[64]
        mem[mem[64] + 32] = address(arg3)
        mem[mem[64] + 64] = address(arg3)
        mem[mem[64] + 96] = address(arg8)
        mem[mem[64] + 128] = _186
        mem[mem[64] + 160] = _231
        mem[mem[64] + 192] = _241
        _251 = mem[64]
        mem[mem[64]] = 192
        mem[64] = mem[64] + 224
        if 0 >= _25:
            revert with 'NH{q', 50
        _263 = mem[ceil32(return_data.size) + 672]
        if 1 >= _25:
            revert with 'NH{q', 50
        _273 = mem[ceil32(return_data.size) + 704]
        mem[_242 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_242 + 228] = _263
        mem[_242 + 260] = _273
        mem[_242 + 292] = this.address
        mem[_242 + 324] = 128
        _279 = mem[_251]
        mem[_242 + 356] = mem[_251]
        mem[_242 + 388 len ceil32(_279)] = mem[_251 + 32 len ceil32(_279)]
        if ceil32(_279) > _279:
            mem[_242 + _279 + 388] = 0
        require ext_code.size(address(arg1))
        call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _263, _273, address(this.address), 128, mem[_242 + 356 len ceil32(_279) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _206 + _198 < _186:
            revert with 'NH{q', 17
        return _186, _206 + _198, _206 + _198 - _186
    _189 = mem[ceil32(return_data.size) + 544]
    if 3 >= _25:
        revert with 'NH{q', 50
    _201 = mem[ceil32(return_data.size) + 768]
    if 2 >= _25:
        revert with 'NH{q', 50
    _207 = mem[ceil32(return_data.size) + 736]
    if mem[ceil32(return_data.size) + 736] > -mem[ceil32(return_data.size) + 768] - 1:
        revert with 'NH{q', 17
    if 2 >= _25:
        revert with 'NH{q', 50
    _234 = mem[ceil32(return_data.size) + 736]
    if 3 >= _25:
        revert with 'NH{q', 50
    _243 = mem[ceil32(return_data.size) + 768]
    _244 = mem[64]
    mem[mem[64] + 32] = address(arg3)
    mem[mem[64] + 64] = address(arg2)
    mem[mem[64] + 96] = address(arg8)
    mem[mem[64] + 128] = _189
    mem[mem[64] + 160] = _234
    mem[mem[64] + 192] = _243
    _254 = mem[64]
    mem[mem[64]] = 192
    mem[64] = mem[64] + 224
    if 0 >= _25:
        revert with 'NH{q', 50
    _266 = mem[ceil32(return_data.size) + 672]
    if 1 >= _25:
        revert with 'NH{q', 50
    _275 = mem[ceil32(return_data.size) + 704]
    mem[_244 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    mem[_244 + 228] = _266
    mem[_244 + 260] = _275
    mem[_244 + 292] = this.address
    mem[_244 + 324] = 128
    _280 = mem[_254]
    mem[_244 + 356] = mem[_254]
    mem[_244 + 388 len ceil32(_280)] = mem[_254 + 32 len ceil32(_280)]
    if ceil32(_280) > _280:
        mem[_244 + _280 + 388] = 0
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args _266, _275, address(this.address), 128, mem[_244 + 356 len ceil32(_280) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if _207 + _201 < _189:
        revert with 'NH{q', 17
    return _189, _207 + _201, _207 + _201 - _189
}

function sub_8deb47a8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if msg.sender == 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            require ext_code.size(address(arg1))
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99, address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = address(arg1)
            mem[ceil32(return_data.size) + 160] = address(arg2)
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 0
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg3))
            staticcall address(arg3).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 0, 64, 2, mem[ceil32(return_data.size) + 292 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _187 = mem[ceil32(return_data.size) + 192 len 4], 0
            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
            _191 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _191
            require _187 + (32 * _191) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _187 + 224
            t = (2 * ceil32(return_data.size)) + 224
            while idx < _191:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _191 < 1:
                revert with 'NH{q', 17
            if _191 - 1 >= _191:
                revert with 'NH{q', 50
            _457 = mem[(32 * _191 - 1) + (2 * ceil32(return_data.size)) + 224]
            _461 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_461]:
                revert with 'NH{q', 50
            mem[_461 + 32] = address(arg1)
            if 1 >= mem[_461]:
                revert with 'NH{q', 50
            mem[_461 + 64] = address(arg2)
            mem[_461 + 100] = address(arg3)
            mem[_461 + 132] = 0
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), 0
            mem[_461 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _461 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[_461 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_461 + ceil32(return_data.size) + 100] = 0
            mem[_461 + ceil32(return_data.size) + 132] = _457
            mem[_461 + ceil32(return_data.size) + 164] = 160
            mem[_461 + ceil32(return_data.size) + 260] = mem[_461]
            idx = 0
            s = _461 + 32
            t = _461 + ceil32(return_data.size) + 292
            while idx < mem[_461]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_461 + ceil32(return_data.size) + 196] = this.address
            mem[_461 + ceil32(return_data.size) + 228] = block.timestamp
            require ext_code.size(address(arg3))
            call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, _457, 160, address(this.address), block.timestamp, mem[_461 + ceil32(return_data.size) + 260 len (32 * mem[_461]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_461 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _461 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _724 = mem[_461 + ceil32(return_data.size) + 96 len 4], 0
            require mem[_461 + ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
            require _461 + ceil32(return_data.size) + mem[_461 + ceil32(return_data.size) + 96 len 4], 0 + 127 < _461 + ceil32(return_data.size) + return_data.size + 96
            _733 = mem[_461 + ceil32(return_data.size) + mem[_461 + ceil32(return_data.size) + 96 len 4], 0 + 96]
            if mem[_461 + ceil32(return_data.size) + mem[_461 + ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                revert with 'NH{q', 65
            if _461 + (2 * ceil32(return_data.size)) + floor32(mem[_461 + ceil32(return_data.size) + mem[_461 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307() or floor32(mem[_461 + ceil32(return_data.size) + mem[_461 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _461 + (2 * ceil32(return_data.size)) + floor32(mem[_461 + ceil32(return_data.size) + mem[_461 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
            mem[_461 + (2 * ceil32(return_data.size)) + 96] = _733
            require _724 + (32 * _733) + 32 <= return_data.size
            idx = 0
            s = _461 + ceil32(return_data.size) + _724 + 128
            t = _461 + (2 * ceil32(return_data.size)) + 128
            while idx < _733:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _951 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_951]:
                revert with 'NH{q', 50
            mem[_951 + 32] = address(arg2)
            if 1 >= mem[_951]:
                revert with 'NH{q', 50
            mem[_951 + 64] = address(arg1)
            mem[_951 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_951 + 100] = _457
            mem[_951 + 132] = 64
            mem[_951 + 164] = mem[_951]
            idx = 0
            s = _951 + 32
            t = _951 + 196
            while idx < mem[_951]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg3))
            staticcall address(arg3).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _951 + (32 * mem[_951]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1169 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1174 = mem[_1169]
            require mem[_1169] <= test266151307()
            require _1169 + mem[_1169] + 31 < _1169 + return_data.size
            _1182 = mem[_1169 + mem[_1169]]
            if mem[_1169 + mem[_1169]] > test266151307():
                revert with 'NH{q', 65
            if _1169 + ceil32(return_data.size) + floor32(mem[_1169 + mem[_1169]]) + 1 > test266151307() or floor32(mem[_1169 + mem[_1169]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1169 + ceil32(return_data.size) + floor32(mem[_1169 + mem[_1169]]) + 1
            mem[_1169 + ceil32(return_data.size)] = _1182
            require _1174 + (32 * _1182) + 32 <= return_data.size
            idx = 0
            s = _1169 + _1174 + 32
            t = _1169 + ceil32(return_data.size) + 32
            while idx < _1182:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _1182 < 1:
                revert with 'NH{q', 17
            if _1182 - 1 >= _1182:
                revert with 'NH{q', 50
            _1361 = mem[(32 * _1182 - 1) + _1169 + ceil32(return_data.size) + 32]
            _1365 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1365]:
                revert with 'NH{q', 50
            mem[_1365 + 32] = address(arg2)
            if 1 >= mem[_1365]:
                revert with 'NH{q', 50
            mem[_1365 + 64] = address(arg1)
            mem[_1365 + 100] = address(arg3)
            mem[_1365 + 132] = _457
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), _457
            mem[_1365 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1365 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[_1365 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1365 + ceil32(return_data.size) + 100] = _457
            mem[_1365 + ceil32(return_data.size) + 132] = _1361
            mem[_1365 + ceil32(return_data.size) + 164] = 160
            mem[_1365 + ceil32(return_data.size) + 260] = mem[_1365]
            idx = 0
            s = _1365 + 32
            t = _1365 + ceil32(return_data.size) + 292
            while idx < mem[_1365]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1365 + ceil32(return_data.size) + 196] = this.address
            mem[_1365 + ceil32(return_data.size) + 228] = block.timestamp
            require ext_code.size(address(arg3))
            call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _457, _1361, 160, address(this.address), block.timestamp, mem[_1365 + ceil32(return_data.size) + 260 len (32 * mem[_1365]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1365 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1365 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _1506 = mem[_1365 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _457) >> 32
            require mem[_1365 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _457) >> 32 <= test266151307()
            require _1365 + ceil32(return_data.size) + mem[_1365 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _457) >> 32 + 127 < _1365 + ceil32(return_data.size) + return_data.size + 96
            _1515 = mem[_1365 + ceil32(return_data.size) + mem[_1365 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _457) >> 32 + 96]
            if mem[_1365 + ceil32(return_data.size) + mem[_1365 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _457) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if _1365 + (2 * ceil32(return_data.size)) + floor32(mem[_1365 + ceil32(return_data.size) + mem[_1365 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _457) >> 32 + 96]) + 97 > test266151307() or floor32(mem[_1365 + ceil32(return_data.size) + mem[_1365 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _457) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[_1365 + (2 * ceil32(return_data.size)) + 96] = mem[_1365 + ceil32(return_data.size) + mem[_1365 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _457) >> 32 + 96]
            require _1506 + (32 * _1515) + 32 <= return_data.size
            idx = 0
            s = _1365 + ceil32(return_data.size) + _1506 + 128
            t = _1365 + (2 * ceil32(return_data.size)) + 128
            while idx < _1515:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return 1, 0, _457, _1361
        if not bool(ext_call.return_data[0] < 78) and not bool(ext_call.return_data[0] < 32):
            s = 10
            t = 1
            idx = ext_call.return_data[0]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            require ext_code.size(address(arg1))
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99, address(this.address), t * s / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = address(arg1)
            mem[ceil32(return_data.size) + 160] = address(arg2)
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = t * s / 100
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            u = ceil32(return_data.size) + 128
            v = ceil32(return_data.size) + 292
            while idx < 2:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(arg3))
            staticcall address(arg3).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args t * s / 100, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _448 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _450 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _450
            require _448 + (32 * _450) + 32 <= return_data.size
            idx = 0
            u = ceil32(return_data.size) + _448 + 224
            v = (2 * ceil32(return_data.size)) + 224
            while idx < _450:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            if _450 < 1:
                revert with 'NH{q', 17
            if _450 - 1 >= _450:
                revert with 'NH{q', 50
            _710 = mem[(32 * _450 - 1) + (2 * ceil32(return_data.size)) + 224]
            _716 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_716]:
                revert with 'NH{q', 50
            mem[_716 + 32] = address(arg1)
            if 1 >= mem[_716]:
                revert with 'NH{q', 50
            mem[_716 + 64] = address(arg2)
            mem[_716 + 100] = address(arg3)
            mem[_716 + 132] = t * s / 100
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), t * s / 100
            mem[_716 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _716 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[_716 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_716 + ceil32(return_data.size) + 100] = t * s / 100
            mem[_716 + ceil32(return_data.size) + 132] = _710
            mem[_716 + ceil32(return_data.size) + 164] = 160
            mem[_716 + ceil32(return_data.size) + 260] = mem[_716]
            idx = 0
            u = _716 + 32
            v = _716 + ceil32(return_data.size) + 292
            while idx < mem[_716]:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_716 + ceil32(return_data.size) + 196] = this.address
            mem[_716 + ceil32(return_data.size) + 228] = block.timestamp
            require ext_code.size(address(arg3))
            call address(arg3).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _716 + ceil32(return_data.size) + (32 * mem[_716]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _968 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _970 = mem[_968]
            require mem[_968] <= test266151307()
            require _968 + mem[_968] + 31 < _968 + return_data.size
            _976 = mem[_968 + mem[_968]]
            if mem[_968 + mem[_968]] > test266151307():
                revert with 'NH{q', 65
            if _968 + ceil32(return_data.size) + floor32(mem[_968 + mem[_968]]) + 1 > test266151307() or floor32(mem[_968 + mem[_968]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _968 + ceil32(return_data.size) + floor32(mem[_968 + mem[_968]]) + 1
            mem[_968 + ceil32(return_data.size)] = _976
            require _970 + (32 * _976) + 32 <= return_data.size
            idx = 0
            u = _968 + _970 + 32
            v = _968 + ceil32(return_data.size) + 32
            while idx < _976:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            _1172 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1172]:
                revert with 'NH{q', 50
            mem[_1172 + 32] = address(arg2)
            if 1 >= mem[_1172]:
                revert with 'NH{q', 50
            mem[_1172 + 64] = address(arg1)
            mem[_1172 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1172 + 100] = _710
            mem[_1172 + 132] = 64
            mem[_1172 + 164] = mem[_1172]
            idx = 0
            u = _1172 + 32
            v = _1172 + 196
            while idx < mem[_1172]:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(arg3))
            staticcall address(arg3).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1172 + (32 * mem[_1172]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1350 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1352 = mem[_1350]
            require mem[_1350] <= test266151307()
            require _1350 + mem[_1350] + 31 < _1350 + return_data.size
            _1354 = mem[_1350 + mem[_1350]]
            if mem[_1350 + mem[_1350]] > test266151307():
                revert with 'NH{q', 65
            if _1350 + ceil32(return_data.size) + floor32(mem[_1350 + mem[_1350]]) + 1 > test266151307() or floor32(mem[_1350 + mem[_1350]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1350 + ceil32(return_data.size) + floor32(mem[_1350 + mem[_1350]]) + 1
            mem[_1350 + ceil32(return_data.size)] = _1354
            require _1352 + (32 * _1354) + 32 <= return_data.size
            idx = 0
            u = _1350 + _1352 + 32
            v = _1350 + ceil32(return_data.size) + 32
            while idx < _1354:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            if _1354 < 1:
                revert with 'NH{q', 17
            if _1354 - 1 >= _1354:
                revert with 'NH{q', 50
            _1492 = mem[(32 * _1354 - 1) + _1350 + ceil32(return_data.size) + 32]
            _1498 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1498]:
                revert with 'NH{q', 50
            mem[_1498 + 32] = address(arg2)
            if 1 >= mem[_1498]:
                revert with 'NH{q', 50
            mem[_1498 + 64] = address(arg1)
            mem[_1498 + 100] = address(arg3)
            mem[_1498 + 132] = _710
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), _710
            mem[_1498 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1498 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[_1498 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1498 + ceil32(return_data.size) + 100] = _710
            mem[_1498 + ceil32(return_data.size) + 132] = _1492
            mem[_1498 + ceil32(return_data.size) + 164] = 160
            mem[_1498 + ceil32(return_data.size) + 260] = mem[_1498]
            idx = 0
            u = _1498 + 32
            v = _1498 + ceil32(return_data.size) + 292
            while idx < mem[_1498]:
                mem[v] = mem[u + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_1498 + ceil32(return_data.size) + 196] = this.address
            mem[_1498 + ceil32(return_data.size) + 228] = block.timestamp
            require ext_code.size(address(arg3))
            call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _710, _1492, 160, address(this.address), block.timestamp, mem[_1498 + ceil32(return_data.size) + 260 len (32 * mem[_1498]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1498 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1498 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _1576 = mem[_1498 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _710) >> 32
            require mem[_1498 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _710) >> 32 <= test266151307()
            require _1498 + ceil32(return_data.size) + mem[_1498 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _710) >> 32 + 127 < _1498 + ceil32(return_data.size) + return_data.size + 96
            _1578 = mem[_1498 + ceil32(return_data.size) + mem[_1498 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _710) >> 32 + 96]
            if mem[_1498 + ceil32(return_data.size) + mem[_1498 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _710) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if _1498 + (2 * ceil32(return_data.size)) + floor32(mem[_1498 + ceil32(return_data.size) + mem[_1498 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _710) >> 32 + 96]) + 97 > test266151307() or floor32(mem[_1498 + ceil32(return_data.size) + mem[_1498 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _710) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[_1498 + (2 * ceil32(return_data.size)) + 96] = mem[_1498 + ceil32(return_data.size) + mem[_1498 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _710) >> 32 + 96]
            require _1576 + (32 * _1578) + 32 <= return_data.size
            idx = 0
            u = _1498 + ceil32(return_data.size) + _1576 + 128
            v = _1498 + (2 * ceil32(return_data.size)) + 128
            while idx < _1578:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            return 1, t * s / 100, _710, _1492
        if 10^ext_call.return_data[0] > -1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99, address(this.address), 10^ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = address(arg1)
        mem[ceil32(return_data.size) + 160] = address(arg2)
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 10^ext_call.return_data[0] / 100
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg3))
        staticcall address(arg3).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^ext_call.return_data[0] / 100, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _186 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _190 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _190
        require _186 + (32 * _190) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _186 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _190:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _190 < 1:
            revert with 'NH{q', 17
        if _190 - 1 >= _190:
            revert with 'NH{q', 50
        _456 = mem[(32 * _190 - 1) + (2 * ceil32(return_data.size)) + 224]
        _460 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_460]:
            revert with 'NH{q', 50
        mem[_460 + 32] = address(arg1)
        if 1 >= mem[_460]:
            revert with 'NH{q', 50
        mem[_460 + 64] = address(arg2)
        mem[_460 + 100] = address(arg3)
        mem[_460 + 132] = 10^ext_call.return_data[0] / 100
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), 10^ext_call.return_data[0] / 100
        mem[_460 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _460 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_460 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_460 + ceil32(return_data.size) + 100] = 10^ext_call.return_data[0] / 100
        mem[_460 + ceil32(return_data.size) + 132] = _456
        mem[_460 + ceil32(return_data.size) + 164] = 160
        mem[_460 + ceil32(return_data.size) + 260] = mem[_460]
        idx = 0
        s = _460 + 32
        t = _460 + ceil32(return_data.size) + 292
        while idx < mem[_460]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_460 + ceil32(return_data.size) + 196] = this.address
        mem[_460 + ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(address(arg3))
        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 10^ext_call.return_data[0] / 100, _456, 160, address(this.address), block.timestamp, mem[_460 + ceil32(return_data.size) + 260 len (32 * mem[_460]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_460 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _460 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _723 = mem[_460 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32
        require mem[_460 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 <= test266151307()
        require _460 + ceil32(return_data.size) + mem[_460 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 127 < _460 + ceil32(return_data.size) + return_data.size + 96
        _732 = mem[_460 + ceil32(return_data.size) + mem[_460 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 96]
        if mem[_460 + ceil32(return_data.size) + mem[_460 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if _460 + (2 * ceil32(return_data.size)) + floor32(mem[_460 + ceil32(return_data.size) + mem[_460 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 96]) + 97 > test266151307() or floor32(mem[_460 + ceil32(return_data.size) + mem[_460 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _460 + (2 * ceil32(return_data.size)) + floor32(mem[_460 + ceil32(return_data.size) + mem[_460 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 96]) + 97
        mem[_460 + (2 * ceil32(return_data.size)) + 96] = _732
        require _723 + (32 * _732) + 32 <= return_data.size
        idx = 0
        s = _460 + ceil32(return_data.size) + _723 + 128
        t = _460 + (2 * ceil32(return_data.size)) + 128
        while idx < _732:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _950 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_950]:
            revert with 'NH{q', 50
        mem[_950 + 32] = address(arg2)
        if 1 >= mem[_950]:
            revert with 'NH{q', 50
        mem[_950 + 64] = address(arg1)
        mem[_950 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_950 + 100] = _456
        mem[_950 + 132] = 64
        mem[_950 + 164] = mem[_950]
        idx = 0
        s = _950 + 32
        t = _950 + 196
        while idx < mem[_950]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg3))
        staticcall address(arg3).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _950 + (32 * mem[_950]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1168 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1173 = mem[_1168]
        require mem[_1168] <= test266151307()
        require _1168 + mem[_1168] + 31 < _1168 + return_data.size
        _1181 = mem[_1168 + mem[_1168]]
        if mem[_1168 + mem[_1168]] > test266151307():
            revert with 'NH{q', 65
        if _1168 + ceil32(return_data.size) + floor32(mem[_1168 + mem[_1168]]) + 1 > test266151307() or floor32(mem[_1168 + mem[_1168]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1168 + ceil32(return_data.size) + floor32(mem[_1168 + mem[_1168]]) + 1
        mem[_1168 + ceil32(return_data.size)] = _1181
        require _1173 + (32 * _1181) + 32 <= return_data.size
        idx = 0
        s = _1168 + _1173 + 32
        t = _1168 + ceil32(return_data.size) + 32
        while idx < _1181:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _1181 < 1:
            revert with 'NH{q', 17
        if _1181 - 1 >= _1181:
            revert with 'NH{q', 50
        _1360 = mem[(32 * _1181 - 1) + _1168 + ceil32(return_data.size) + 32]
        _1364 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_1364]:
            revert with 'NH{q', 50
        mem[_1364 + 32] = address(arg2)
        if 1 >= mem[_1364]:
            revert with 'NH{q', 50
        mem[_1364 + 64] = address(arg1)
        mem[_1364 + 100] = address(arg3)
        mem[_1364 + 132] = _456
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), _456
        mem[_1364 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1364 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_1364 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_1364 + ceil32(return_data.size) + 100] = _456
        mem[_1364 + ceil32(return_data.size) + 132] = _1360
        mem[_1364 + ceil32(return_data.size) + 164] = 160
        mem[_1364 + ceil32(return_data.size) + 260] = mem[_1364]
        idx = 0
        s = _1364 + 32
        t = _1364 + ceil32(return_data.size) + 292
        while idx < mem[_1364]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1364 + ceil32(return_data.size) + 196] = this.address
        mem[_1364 + ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(address(arg3))
        call address(arg3).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1364 + ceil32(return_data.size) + (32 * mem[_1364]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1499 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1505 = mem[_1499]
        require mem[_1499] <= test266151307()
        require _1499 + mem[_1499] + 31 < _1499 + return_data.size
        _1514 = mem[_1499 + mem[_1499]]
        if mem[_1499 + mem[_1499]] > test266151307():
            revert with 'NH{q', 65
        if _1499 + ceil32(return_data.size) + floor32(mem[_1499 + mem[_1499]]) + 1 > test266151307() or floor32(mem[_1499 + mem[_1499]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1499 + ceil32(return_data.size) + floor32(mem[_1499 + mem[_1499]]) + 1
        mem[_1499 + ceil32(return_data.size)] = _1514
        require _1505 + (32 * _1514) + 32 <= return_data.size
        idx = 0
        s = _1499 + _1505 + 32
        t = _1499 + ceil32(return_data.size) + 32
        while idx < _1514:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 1, 10^ext_call.return_data[0] / 100, _456, _1360
    if 0xb5bd52398a18f53dcb8d2a578b245756e9114f87 != msg.sender:
        revert with 0, 'bitch'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(address(arg1))
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99, address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = address(arg1)
        mem[ceil32(return_data.size) + 160] = address(arg2)
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 0
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg3))
        staticcall address(arg3).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 0, 64, 2, mem[ceil32(return_data.size) + 292 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _189 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _193 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _193
        require _189 + (32 * _193) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _189 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _193:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _193 < 1:
            revert with 'NH{q', 17
        if _193 - 1 >= _193:
            revert with 'NH{q', 50
        _459 = mem[(32 * _193 - 1) + (2 * ceil32(return_data.size)) + 224]
        _463 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_463]:
            revert with 'NH{q', 50
        mem[_463 + 32] = address(arg1)
        if 1 >= mem[_463]:
            revert with 'NH{q', 50
        mem[_463 + 64] = address(arg2)
        mem[_463 + 100] = address(arg3)
        mem[_463 + 132] = 0
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), 0
        mem[_463 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _463 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_463 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_463 + ceil32(return_data.size) + 100] = 0
        mem[_463 + ceil32(return_data.size) + 132] = _459
        mem[_463 + ceil32(return_data.size) + 164] = 160
        mem[_463 + ceil32(return_data.size) + 260] = mem[_463]
        idx = 0
        s = _463 + 32
        t = _463 + ceil32(return_data.size) + 292
        while idx < mem[_463]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_463 + ceil32(return_data.size) + 196] = this.address
        mem[_463 + ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(address(arg3))
        call address(arg3).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _463 + ceil32(return_data.size) + (32 * mem[_463]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _721 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _727 = mem[_721]
        require mem[_721] <= test266151307()
        require _721 + mem[_721] + 31 < _721 + return_data.size
        _735 = mem[_721 + mem[_721]]
        if mem[_721 + mem[_721]] > test266151307():
            revert with 'NH{q', 65
        if _721 + ceil32(return_data.size) + floor32(mem[_721 + mem[_721]]) + 1 > test266151307() or floor32(mem[_721 + mem[_721]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _721 + ceil32(return_data.size) + floor32(mem[_721 + mem[_721]]) + 1
        mem[_721 + ceil32(return_data.size)] = _735
        require _727 + (32 * _735) + 32 <= return_data.size
        idx = 0
        s = _721 + _727 + 32
        t = _721 + ceil32(return_data.size) + 32
        while idx < _735:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _953 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_953]:
            revert with 'NH{q', 50
        mem[_953 + 32] = address(arg2)
        if 1 >= mem[_953]:
            revert with 'NH{q', 50
        mem[_953 + 64] = address(arg1)
        mem[_953 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_953 + 100] = _459
        mem[_953 + 132] = 64
        mem[_953 + 164] = mem[_953]
        idx = 0
        s = _953 + 32
        t = _953 + 196
        while idx < mem[_953]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg3))
        staticcall address(arg3).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _953 + (32 * mem[_953]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1171 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1177 = mem[_1171]
        require mem[_1171] <= test266151307()
        require _1171 + mem[_1171] + 31 < _1171 + return_data.size
        _1185 = mem[_1171 + mem[_1171]]
        if mem[_1171 + mem[_1171]] > test266151307():
            revert with 'NH{q', 65
        if _1171 + ceil32(return_data.size) + floor32(mem[_1171 + mem[_1171]]) + 1 > test266151307() or floor32(mem[_1171 + mem[_1171]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1171 + ceil32(return_data.size) + floor32(mem[_1171 + mem[_1171]]) + 1
        mem[_1171 + ceil32(return_data.size)] = _1185
        require _1177 + (32 * _1185) + 32 <= return_data.size
        idx = 0
        s = _1171 + _1177 + 32
        t = _1171 + ceil32(return_data.size) + 32
        while idx < _1185:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _1185 < 1:
            revert with 'NH{q', 17
        if _1185 - 1 >= _1185:
            revert with 'NH{q', 50
        _1363 = mem[(32 * _1185 - 1) + _1171 + ceil32(return_data.size) + 32]
        _1367 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_1367]:
            revert with 'NH{q', 50
        mem[_1367 + 32] = address(arg2)
        if 1 >= mem[_1367]:
            revert with 'NH{q', 50
        mem[_1367 + 64] = address(arg1)
        mem[_1367 + 100] = address(arg3)
        mem[_1367 + 132] = _459
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), _459
        mem[_1367 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1367 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_1367 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_1367 + ceil32(return_data.size) + 100] = _459
        mem[_1367 + ceil32(return_data.size) + 132] = _1363
        mem[_1367 + ceil32(return_data.size) + 164] = 160
        mem[_1367 + ceil32(return_data.size) + 260] = mem[_1367]
        idx = 0
        s = _1367 + 32
        t = _1367 + ceil32(return_data.size) + 292
        while idx < mem[_1367]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1367 + ceil32(return_data.size) + 196] = this.address
        mem[_1367 + ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(address(arg3))
        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _459, _1363, 160, address(this.address), block.timestamp, mem[_1367 + ceil32(return_data.size) + 260 len (32 * mem[_1367]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1367 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1367 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _1509 = mem[_1367 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _459) >> 32
        require mem[_1367 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _459) >> 32 <= test266151307()
        require _1367 + ceil32(return_data.size) + mem[_1367 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _459) >> 32 + 127 < _1367 + ceil32(return_data.size) + return_data.size + 96
        _1517 = mem[_1367 + ceil32(return_data.size) + mem[_1367 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _459) >> 32 + 96]
        if mem[_1367 + ceil32(return_data.size) + mem[_1367 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _459) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if _1367 + (2 * ceil32(return_data.size)) + floor32(mem[_1367 + ceil32(return_data.size) + mem[_1367 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _459) >> 32 + 96]) + 97 > test266151307() or floor32(mem[_1367 + ceil32(return_data.size) + mem[_1367 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _459) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[_1367 + (2 * ceil32(return_data.size)) + 96] = mem[_1367 + ceil32(return_data.size) + mem[_1367 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _459) >> 32 + 96]
        require _1509 + (32 * _1517) + 32 <= return_data.size
        idx = 0
        s = _1367 + ceil32(return_data.size) + _1509 + 128
        t = _1367 + (2 * ceil32(return_data.size)) + 128
        while idx < _1517:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 1, 0, _459, _1363
    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
        if 10^ext_call.return_data[0] > -1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99, address(this.address), 10^ext_call.return_data[0] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = address(arg1)
        mem[ceil32(return_data.size) + 160] = address(arg2)
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 10^ext_call.return_data[0] / 100
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg3))
        staticcall address(arg3).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^ext_call.return_data[0] / 100, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _188 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _192 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^ext_call.return_data[0] / 100) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _192
        require _188 + (32 * _192) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _188 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _192:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _192 < 1:
            revert with 'NH{q', 17
        if _192 - 1 >= _192:
            revert with 'NH{q', 50
        _458 = mem[(32 * _192 - 1) + (2 * ceil32(return_data.size)) + 224]
        _462 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_462]:
            revert with 'NH{q', 50
        mem[_462 + 32] = address(arg1)
        if 1 >= mem[_462]:
            revert with 'NH{q', 50
        mem[_462 + 64] = address(arg2)
        mem[_462 + 100] = address(arg3)
        mem[_462 + 132] = 10^ext_call.return_data[0] / 100
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), 10^ext_call.return_data[0] / 100
        mem[_462 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _462 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_462 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_462 + ceil32(return_data.size) + 100] = 10^ext_call.return_data[0] / 100
        mem[_462 + ceil32(return_data.size) + 132] = _458
        mem[_462 + ceil32(return_data.size) + 164] = 160
        mem[_462 + ceil32(return_data.size) + 260] = mem[_462]
        idx = 0
        s = _462 + 32
        t = _462 + ceil32(return_data.size) + 292
        while idx < mem[_462]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_462 + ceil32(return_data.size) + 196] = this.address
        mem[_462 + ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(address(arg3))
        call address(arg3).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _462 + ceil32(return_data.size) + (32 * mem[_462]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _720 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _726 = mem[_720]
        require mem[_720] <= test266151307()
        require _720 + mem[_720] + 31 < _720 + return_data.size
        _734 = mem[_720 + mem[_720]]
        if mem[_720 + mem[_720]] > test266151307():
            revert with 'NH{q', 65
        if _720 + ceil32(return_data.size) + floor32(mem[_720 + mem[_720]]) + 1 > test266151307() or floor32(mem[_720 + mem[_720]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _720 + ceil32(return_data.size) + floor32(mem[_720 + mem[_720]]) + 1
        mem[_720 + ceil32(return_data.size)] = _734
        require _726 + (32 * _734) + 32 <= return_data.size
        idx = 0
        s = _720 + _726 + 32
        t = _720 + ceil32(return_data.size) + 32
        while idx < _734:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _952 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_952]:
            revert with 'NH{q', 50
        mem[_952 + 32] = address(arg2)
        if 1 >= mem[_952]:
            revert with 'NH{q', 50
        mem[_952 + 64] = address(arg1)
        mem[_952 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_952 + 100] = _458
        mem[_952 + 132] = 64
        mem[_952 + 164] = mem[_952]
        idx = 0
        s = _952 + 32
        t = _952 + 196
        while idx < mem[_952]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg3))
        staticcall address(arg3).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _952 + (32 * mem[_952]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1170 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1176 = mem[_1170]
        require mem[_1170] <= test266151307()
        require _1170 + mem[_1170] + 31 < _1170 + return_data.size
        _1184 = mem[_1170 + mem[_1170]]
        if mem[_1170 + mem[_1170]] > test266151307():
            revert with 'NH{q', 65
        if _1170 + ceil32(return_data.size) + floor32(mem[_1170 + mem[_1170]]) + 1 > test266151307() or floor32(mem[_1170 + mem[_1170]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1170 + ceil32(return_data.size) + floor32(mem[_1170 + mem[_1170]]) + 1
        mem[_1170 + ceil32(return_data.size)] = _1184
        require _1176 + (32 * _1184) + 32 <= return_data.size
        idx = 0
        s = _1170 + _1176 + 32
        t = _1170 + ceil32(return_data.size) + 32
        while idx < _1184:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _1184 < 1:
            revert with 'NH{q', 17
        if _1184 - 1 >= _1184:
            revert with 'NH{q', 50
        _1362 = mem[(32 * _1184 - 1) + _1170 + ceil32(return_data.size) + 32]
        _1366 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_1366]:
            revert with 'NH{q', 50
        mem[_1366 + 32] = address(arg2)
        if 1 >= mem[_1366]:
            revert with 'NH{q', 50
        mem[_1366 + 64] = address(arg1)
        mem[_1366 + 100] = address(arg3)
        mem[_1366 + 132] = _458
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), _458
        mem[_1366 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1366 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_1366 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_1366 + ceil32(return_data.size) + 100] = _458
        mem[_1366 + ceil32(return_data.size) + 132] = _1362
        mem[_1366 + ceil32(return_data.size) + 164] = 160
        mem[_1366 + ceil32(return_data.size) + 260] = mem[_1366]
        idx = 0
        s = _1366 + 32
        t = _1366 + ceil32(return_data.size) + 292
        while idx < mem[_1366]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1366 + ceil32(return_data.size) + 196] = this.address
        mem[_1366 + ceil32(return_data.size) + 228] = block.timestamp
        require ext_code.size(address(arg3))
        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _458, _1362, 160, address(this.address), block.timestamp, mem[_1366 + ceil32(return_data.size) + 260 len (32 * mem[_1366]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1366 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1366 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _1508 = mem[_1366 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _458) >> 32
        require mem[_1366 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _458) >> 32 <= test266151307()
        require _1366 + ceil32(return_data.size) + mem[_1366 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _458) >> 32 + 127 < _1366 + ceil32(return_data.size) + return_data.size + 96
        _1516 = mem[_1366 + ceil32(return_data.size) + mem[_1366 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _458) >> 32 + 96]
        if mem[_1366 + ceil32(return_data.size) + mem[_1366 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _458) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if _1366 + (2 * ceil32(return_data.size)) + floor32(mem[_1366 + ceil32(return_data.size) + mem[_1366 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _458) >> 32 + 96]) + 97 > test266151307() or floor32(mem[_1366 + ceil32(return_data.size) + mem[_1366 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _458) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[_1366 + (2 * ceil32(return_data.size)) + 96] = mem[_1366 + ceil32(return_data.size) + mem[_1366 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _458) >> 32 + 96]
        require _1508 + (32 * _1516) + 32 <= return_data.size
        idx = 0
        s = _1366 + ceil32(return_data.size) + _1508 + 128
        t = _1366 + (2 * ceil32(return_data.size)) + 128
        while idx < _1516:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 1, 10^ext_call.return_data[0] / 100, _458, _1362
    s = 10
    t = 1
    idx = ext_call.return_data[0]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99, address(this.address), t * s / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(arg1)
    mem[ceil32(return_data.size) + 160] = address(arg2)
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = t * s / 100
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    u = ceil32(return_data.size) + 128
    v = ceil32(return_data.size) + 292
    while idx < 2:
        mem[v] = mem[u + 12 len 20]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    require ext_code.size(address(arg3))
    staticcall address(arg3).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args t * s / 100, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _449 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _451 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s / 100) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _451
    require _449 + (32 * _451) + 32 <= return_data.size
    idx = 0
    u = ceil32(return_data.size) + _449 + 224
    v = (2 * ceil32(return_data.size)) + 224
    while idx < _451:
        require mem[u] == mem[u]
        mem[v] = mem[u]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    if _451 < 1:
        revert with 'NH{q', 17
    if _451 - 1 >= _451:
        revert with 'NH{q', 50
    _711 = mem[(32 * _451 - 1) + (2 * ceil32(return_data.size)) + 224]
    _719 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_719]:
        revert with 'NH{q', 50
    mem[_719 + 32] = address(arg1)
    if 1 >= mem[_719]:
        revert with 'NH{q', 50
    mem[_719 + 64] = address(arg2)
    mem[_719 + 100] = address(arg3)
    mem[_719 + 132] = t * s / 100
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), t * s / 100
    mem[_719 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _719 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[_719 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_719 + ceil32(return_data.size) + 100] = t * s / 100
    mem[_719 + ceil32(return_data.size) + 132] = _711
    mem[_719 + ceil32(return_data.size) + 164] = 160
    mem[_719 + ceil32(return_data.size) + 260] = mem[_719]
    idx = 0
    u = _719 + 32
    v = _719 + ceil32(return_data.size) + 292
    while idx < mem[_719]:
        mem[v] = mem[u + 12 len 20]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    mem[_719 + ceil32(return_data.size) + 196] = this.address
    mem[_719 + ceil32(return_data.size) + 228] = block.timestamp
    require ext_code.size(address(arg3))
    call address(arg3).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _719 + ceil32(return_data.size) + (32 * mem[_719]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _969 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _971 = mem[_969]
    require mem[_969] <= test266151307()
    require _969 + mem[_969] + 31 < _969 + return_data.size
    _977 = mem[_969 + mem[_969]]
    if mem[_969 + mem[_969]] > test266151307():
        revert with 'NH{q', 65
    if _969 + ceil32(return_data.size) + floor32(mem[_969 + mem[_969]]) + 1 > test266151307() or floor32(mem[_969 + mem[_969]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _969 + ceil32(return_data.size) + floor32(mem[_969 + mem[_969]]) + 1
    mem[_969 + ceil32(return_data.size)] = _977
    require _971 + (32 * _977) + 32 <= return_data.size
    idx = 0
    u = _969 + _971 + 32
    v = _969 + ceil32(return_data.size) + 32
    while idx < _977:
        require mem[u] == mem[u]
        mem[v] = mem[u]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    _1175 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_1175]:
        revert with 'NH{q', 50
    mem[_1175 + 32] = address(arg2)
    if 1 >= mem[_1175]:
        revert with 'NH{q', 50
    mem[_1175 + 64] = address(arg1)
    mem[_1175 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_1175 + 100] = _711
    mem[_1175 + 132] = 64
    mem[_1175 + 164] = mem[_1175]
    idx = 0
    u = _1175 + 32
    v = _1175 + 196
    while idx < mem[_1175]:
        mem[v] = mem[u + 12 len 20]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    require ext_code.size(address(arg3))
    staticcall address(arg3).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _1175 + (32 * mem[_1175]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1351 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1353 = mem[_1351]
    require mem[_1351] <= test266151307()
    require _1351 + mem[_1351] + 31 < _1351 + return_data.size
    _1355 = mem[_1351 + mem[_1351]]
    if mem[_1351 + mem[_1351]] > test266151307():
        revert with 'NH{q', 65
    if _1351 + ceil32(return_data.size) + floor32(mem[_1351 + mem[_1351]]) + 1 > test266151307() or floor32(mem[_1351 + mem[_1351]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _1351 + ceil32(return_data.size) + floor32(mem[_1351 + mem[_1351]]) + 1
    mem[_1351 + ceil32(return_data.size)] = _1355
    require _1353 + (32 * _1355) + 32 <= return_data.size
    idx = 0
    u = _1351 + _1353 + 32
    v = _1351 + ceil32(return_data.size) + 32
    while idx < _1355:
        require mem[u] == mem[u]
        mem[v] = mem[u]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    if _1355 < 1:
        revert with 'NH{q', 17
    if _1355 - 1 >= _1355:
        revert with 'NH{q', 50
    _1493 = mem[(32 * _1355 - 1) + _1351 + ceil32(return_data.size) + 32]
    _1501 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_1501]:
        revert with 'NH{q', 50
    mem[_1501 + 32] = address(arg2)
    if 1 >= mem[_1501]:
        revert with 'NH{q', 50
    mem[_1501 + 64] = address(arg1)
    mem[_1501 + 100] = address(arg3)
    mem[_1501 + 132] = _711
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), _711
    mem[_1501 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _1501 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[_1501 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_1501 + ceil32(return_data.size) + 100] = _711
    mem[_1501 + ceil32(return_data.size) + 132] = _1493
    mem[_1501 + ceil32(return_data.size) + 164] = 160
    mem[_1501 + ceil32(return_data.size) + 260] = mem[_1501]
    idx = 0
    u = _1501 + 32
    v = _1501 + ceil32(return_data.size) + 292
    while idx < mem[_1501]:
        mem[v] = mem[u + 12 len 20]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    mem[_1501 + ceil32(return_data.size) + 196] = this.address
    mem[_1501 + ceil32(return_data.size) + 228] = block.timestamp
    require ext_code.size(address(arg3))
    call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _711, _1493, 160, address(this.address), block.timestamp, mem[_1501 + ceil32(return_data.size) + 260 len (32 * mem[_1501]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_1501 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _1501 + (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _1577 = mem[_1501 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _711) >> 32
    require mem[_1501 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _711) >> 32 <= test266151307()
    require _1501 + ceil32(return_data.size) + mem[_1501 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _711) >> 32 + 127 < _1501 + ceil32(return_data.size) + return_data.size + 96
    _1579 = mem[_1501 + ceil32(return_data.size) + mem[_1501 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _711) >> 32 + 96]
    if mem[_1501 + ceil32(return_data.size) + mem[_1501 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _711) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if _1501 + (2 * ceil32(return_data.size)) + floor32(mem[_1501 + ceil32(return_data.size) + mem[_1501 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _711) >> 32 + 96]) + 97 > test266151307() or floor32(mem[_1501 + ceil32(return_data.size) + mem[_1501 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _711) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[_1501 + (2 * ceil32(return_data.size)) + 96] = mem[_1501 + ceil32(return_data.size) + mem[_1501 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _711) >> 32 + 96]
    require _1577 + (32 * _1579) + 32 <= return_data.size
    idx = 0
    u = _1501 + ceil32(return_data.size) + _1577 + 128
    v = _1501 + (2 * ceil32(return_data.size)) + 128
    while idx < _1579:
        require mem[u] == mem[u]
        mem[v] = mem[u]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    return 1, t * s / 100, _711, _1493
}

function sub_e9fc9745(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
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
    require ext_code.size(address(arg3))
    staticcall address(arg3).factory() with:
            gas gas_remaining wei
    mem[544] = ext_call.return_data[0]
    if not ext_call.success:
        require ext_code.size(address(arg4))
        staticcall address(arg4).factory() with:
                gas gas_remaining wei
        mem[544] = ext_call.return_data[0]
        if not ext_call.success:
            mem[548] = 10^6
            mem[580] = 10^12
            mem[612] = 10^12
            require ext_code.size(address(arg3))
            staticcall address(arg3).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -101:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 548] = 10^6
            mem[ceil32(return_data.size) + 580] = 10^12
            mem[ceil32(return_data.size) + 612] = 10^12
            require ext_code.size(address(arg4))
            staticcall address(arg4).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -101:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 544] = 0
            if address(arg1) < address(arg2):
                mem[(2 * ceil32(return_data.size)) + 576] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 608] = address(arg2)
                mem[(2 * ceil32(return_data.size)) + 640] = 0
                mem[(2 * ceil32(return_data.size)) + 672] = 0
                mem[(2 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                if address(arg1) == address(arg1):
                    mem[(2 * ceil32(return_data.size)) + 736] = 0
                    mem[(2 * ceil32(return_data.size)) + 768] = 0
                    mem[(2 * ceil32(return_data.size)) + 800] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 832] = address(arg2)
                    mem[(2 * ceil32(return_data.size)) + 864] = 0
                    mem[(2 * ceil32(return_data.size)) + 896] = 0
                    mem[(2 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    mem[(2 * ceil32(return_data.size)) + 960] = 1
                    mem[(2 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 996] = 0
                    mem[(2 * ceil32(return_data.size)) + 1028] = 0
                    mem[(2 * ceil32(return_data.size)) + 1060] = 0
                    mem[(2 * ceil32(return_data.size)) + 1092] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 1124] = address(arg2)
                    mem[(2 * ceil32(return_data.size)) + 1156] = 0
                    mem[(2 * ceil32(return_data.size)) + 1188] = 0
                    mem[(2 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    mem[(2 * ceil32(return_data.size)) + 1252] = 0
                    mem[(2 * ceil32(return_data.size)) + 1284] = 0
                    mem[(2 * ceil32(return_data.size)) + 1316] = address(arg1)
                    mem[(2 * ceil32(return_data.size)) + 1348] = address(arg2)
                    mem[(2 * ceil32(return_data.size)) + 1380] = 0
                    mem[(2 * ceil32(return_data.size)) + 1412] = 0
                    mem[(2 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    mem[(2 * ceil32(return_data.size)) + 1476] = 1
                    require ext_code.size(stor0)
                    staticcall stor0.0x21444fed with:
                            gas gas_remaining wei
                           args 0, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _427 = mem[(2 * ceil32(return_data.size)) + 992 len 4], 0
                    require mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                    require return_data.size - mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                    if not bool((4 * ceil32(return_data.size)) + 1088 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + 1088
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                    mem[(4 * ceil32(return_data.size)) + 992] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                    require mem[(2 * ceil32(return_data.size)) + _427 + 1024] == bool(mem[(2 * ceil32(return_data.size)) + _427 + 1024])
                    mem[(4 * ceil32(return_data.size)) + 1024] = mem[(2 * ceil32(return_data.size)) + _427 + 1024]
                    _595 = mem[(2 * ceil32(return_data.size)) + _427 + 1056]
                    require mem[(2 * ceil32(return_data.size)) + _427 + 1056] <= test266151307()
                    require (2 * ceil32(return_data.size)) + _427 + mem[(2 * ceil32(return_data.size)) + _427 + 1056] + 1023 < (2 * ceil32(return_data.size)) + return_data.size + 992
                    _631 = mem[(2 * ceil32(return_data.size)) + _427 + mem[(2 * ceil32(return_data.size)) + _427 + 1056] + 992]
                    if mem[(2 * ceil32(return_data.size)) + _427 + mem[(2 * ceil32(return_data.size)) + _427 + 1056] + 992] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + _427 + mem[(2 * ceil32(return_data.size)) + _427 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + _427 + mem[(2 * ceil32(return_data.size)) + _427 + 1056] + 992]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + _427 + mem[(2 * ceil32(return_data.size)) + _427 + 1056] + 992]) + 1089
                    mem[(4 * ceil32(return_data.size)) + 1088] = mem[(2 * ceil32(return_data.size)) + _427 + mem[(2 * ceil32(return_data.size)) + _427 + 1056] + 992]
                    require _427 + _595 + (32 * _631) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _427 + _595 + 1024
                    t = (4 * ceil32(return_data.size)) + 1120
                    while idx < _631:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 1056] = (4 * ceil32(return_data.size)) + 1088
                    if not mem[(4 * ceil32(return_data.size)) + 1024]:
                        revert with 0, 'S3'
                    if not mem[(2 * ceil32(return_data.size)) + 736]:
                        if not mem[(2 * ceil32(return_data.size)) + 736]:
                            _3051 = mem[(2 * ceil32(return_data.size)) + 608]
                            _3147 = mem[(4 * ceil32(return_data.size)) + 992]
                            if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                                revert with 'NH{q', 50
                            _3403 = mem[(4 * ceil32(return_data.size)) + 1216]
                            if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                                revert with 'NH{q', 50
                            _3723 = mem[(4 * ceil32(return_data.size)) + 1184]
                            if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                                revert with 'NH{q', 17
                            _4171 = mem[(2 * ceil32(return_data.size)) + 544]
                            _4172 = mem[(2 * ceil32(return_data.size)) + 768]
                            if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                                revert with 'NH{q', 50
                            _4495 = mem[(4 * ceil32(return_data.size)) + 1184]
                            if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                                revert with 'NH{q', 50
                            _4743 = mem[(4 * ceil32(return_data.size)) + 1216]
                            _4744 = mem[64]
                            mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 588 len 20]
                            mem[mem[64] + 64] = address(_3051)
                            mem[mem[64] + 96] = address(_4172)
                            mem[mem[64] + 128] = _3147
                            mem[mem[64] + 160] = _4495
                            mem[mem[64] + 192] = _4743
                            _5611 = mem[64]
                            mem[mem[64]] = 192
                            mem[64] = mem[64] + 224
                            if 0 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                                revert with 'NH{q', 50
                            _5851 = mem[(4 * ceil32(return_data.size)) + 1120]
                            if 1 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                                revert with 'NH{q', 50
                            _6091 = mem[(4 * ceil32(return_data.size)) + 1152]
                            mem[_4744 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4744 + 228] = _5851
                            mem[_4744 + 260] = _6091
                            mem[_4744 + 292] = this.address
                            mem[_4744 + 324] = 128
                            _6667 = mem[_5611]
                            mem[_4744 + 356] = mem[_5611]
                            mem[_4744 + 388 len ceil32(_6667)] = mem[_5611 + 32 len ceil32(_6667)]
                            if ceil32(_6667) > _6667:
                                mem[_4744 + _6667 + 388] = 0
                            require ext_code.size(address(_4171))
                            call address(_4171).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _5851, _6091, address(this.address), 128, mem[_4744 + 356 len ceil32(_6667) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _3723 + _3403 < _3147:
                                revert with 'NH{q', 17
                            return _3147, _3723 + _3403, _3723 + _3403 - _3147
                        _3052 = mem[(2 * ceil32(return_data.size)) + 576]
                        _3150 = mem[(4 * ceil32(return_data.size)) + 992]
                        if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _3406 = mem[(4 * ceil32(return_data.size)) + 1216]
                        if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _3724 = mem[(4 * ceil32(return_data.size)) + 1184]
                        if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                            revert with 'NH{q', 17
                        _4175 = mem[(2 * ceil32(return_data.size)) + 544]
                        _4176 = mem[(2 * ceil32(return_data.size)) + 768]
                        if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _4498 = mem[(4 * ceil32(return_data.size)) + 1184]
                        if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _4745 = mem[(4 * ceil32(return_data.size)) + 1216]
                        _4746 = mem[64]
                        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 588 len 20]
                        mem[mem[64] + 64] = address(_3052)
                        mem[mem[64] + 96] = address(_4176)
                        mem[mem[64] + 128] = _3150
                        mem[mem[64] + 160] = _4498
                        mem[mem[64] + 192] = _4745
                        _5614 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        if 0 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _5854 = mem[(4 * ceil32(return_data.size)) + 1120]
                        if 1 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _6093 = mem[(4 * ceil32(return_data.size)) + 1152]
                        mem[_4746 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4746 + 228] = _5854
                        mem[_4746 + 260] = _6093
                        mem[_4746 + 292] = this.address
                        mem[_4746 + 324] = 128
                        _6668 = mem[_5614]
                        mem[_4746 + 356] = mem[_5614]
                        mem[_4746 + 388 len ceil32(_6668)] = mem[_5614 + 32 len ceil32(_6668)]
                        if ceil32(_6668) > _6668:
                            mem[_4746 + _6668 + 388] = 0
                        require ext_code.size(address(_4175))
                        call address(_4175).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5854, _6093, address(this.address), 128, mem[_4746 + 356 len ceil32(_6668) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _3724 + _3406 < _3150:
                            revert with 'NH{q', 17
                        return _3150, _3724 + _3406, _3724 + _3406 - _3150
                    if not mem[(2 * ceil32(return_data.size)) + 736]:
                        _3053 = mem[(2 * ceil32(return_data.size)) + 608]
                        _3153 = mem[(4 * ceil32(return_data.size)) + 992]
                        if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _3409 = mem[(4 * ceil32(return_data.size)) + 1216]
                        if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _3725 = mem[(4 * ceil32(return_data.size)) + 1184]
                        if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                            revert with 'NH{q', 17
                        _4179 = mem[(2 * ceil32(return_data.size)) + 544]
                        _4180 = mem[(2 * ceil32(return_data.size)) + 768]
                        if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _4501 = mem[(4 * ceil32(return_data.size)) + 1184]
                        if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _4747 = mem[(4 * ceil32(return_data.size)) + 1216]
                        _4748 = mem[64]
                        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 620 len 20]
                        mem[mem[64] + 64] = address(_3053)
                        mem[mem[64] + 96] = address(_4180)
                        mem[mem[64] + 128] = _3153
                        mem[mem[64] + 160] = _4501
                        mem[mem[64] + 192] = _4747
                        _5617 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        if 0 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _5857 = mem[(4 * ceil32(return_data.size)) + 1120]
                        if 1 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _6095 = mem[(4 * ceil32(return_data.size)) + 1152]
                        mem[_4748 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4748 + 228] = _5857
                        mem[_4748 + 260] = _6095
                        mem[_4748 + 292] = this.address
                        mem[_4748 + 324] = 128
                        _6669 = mem[_5617]
                        mem[_4748 + 356] = mem[_5617]
                        mem[_4748 + 388 len ceil32(_6669)] = mem[_5617 + 32 len ceil32(_6669)]
                        if ceil32(_6669) > _6669:
                            mem[_4748 + _6669 + 388] = 0
                        require ext_code.size(address(_4179))
                        call address(_4179).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5857, _6095, address(this.address), 128, mem[_4748 + 356 len ceil32(_6669) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _3725 + _3409 < _3153:
                            revert with 'NH{q', 17
                        return _3153, _3725 + _3409, _3725 + _3409 - _3153
                    _3054 = mem[(2 * ceil32(return_data.size)) + 576]
                    _3156 = mem[(4 * ceil32(return_data.size)) + 992]
                    if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _3412 = mem[(4 * ceil32(return_data.size)) + 1216]
                    if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _3726 = mem[(4 * ceil32(return_data.size)) + 1184]
                    if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    _4183 = mem[(2 * ceil32(return_data.size)) + 544]
                    _4184 = mem[(2 * ceil32(return_data.size)) + 768]
                    if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _4504 = mem[(4 * ceil32(return_data.size)) + 1184]
                    if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _4749 = mem[(4 * ceil32(return_data.size)) + 1216]
                    _4750 = mem[64]
                    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 620 len 20]
                    mem[mem[64] + 64] = address(_3054)
                    mem[mem[64] + 96] = address(_4184)
                    mem[mem[64] + 128] = _3156
                    mem[mem[64] + 160] = _4504
                    mem[mem[64] + 192] = _4749
                    _5620 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _5860 = mem[(4 * ceil32(return_data.size)) + 1120]
                    if 1 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _6097 = mem[(4 * ceil32(return_data.size)) + 1152]
                    mem[_4750 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4750 + 228] = _5860
                    mem[_4750 + 260] = _6097
                    mem[_4750 + 292] = this.address
                    mem[_4750 + 324] = 128
                    _6670 = mem[_5620]
                    mem[_4750 + 356] = mem[_5620]
                    mem[_4750 + 388 len ceil32(_6670)] = mem[_5620 + 32 len ceil32(_6670)]
                    if ceil32(_6670) > _6670:
                        mem[_4750 + _6670 + 388] = 0
                    require ext_code.size(address(_4183))
                    call address(_4183).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5860, _6097, address(this.address), 128, mem[_4750 + 356 len ceil32(_6670) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _3726 + _3412 < _3156:
                        revert with 'NH{q', 17
                    return _3156, _3726 + _3412, _3726 + _3412 - _3156
                mem[(2 * ceil32(return_data.size)) + 736] = 1
                mem[(2 * ceil32(return_data.size)) + 768] = 0
                mem[(2 * ceil32(return_data.size)) + 800] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 832] = address(arg2)
                mem[(2 * ceil32(return_data.size)) + 864] = 0
                mem[(2 * ceil32(return_data.size)) + 896] = 0
                mem[(2 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(2 * ceil32(return_data.size)) + 960] = 0
                mem[(2 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 996] = 0
                mem[(2 * ceil32(return_data.size)) + 1028] = 0
                mem[(2 * ceil32(return_data.size)) + 1060] = 0
                mem[(2 * ceil32(return_data.size)) + 1092] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 1124] = address(arg2)
                mem[(2 * ceil32(return_data.size)) + 1156] = 0
                mem[(2 * ceil32(return_data.size)) + 1188] = 0
                mem[(2 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(2 * ceil32(return_data.size)) + 1252] = 1
                mem[(2 * ceil32(return_data.size)) + 1284] = 0
                mem[(2 * ceil32(return_data.size)) + 1316] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 1348] = address(arg2)
                mem[(2 * ceil32(return_data.size)) + 1380] = 0
                mem[(2 * ceil32(return_data.size)) + 1412] = 0
                mem[(2 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(2 * ceil32(return_data.size)) + 1476] = 0
                require ext_code.size(stor0)
                staticcall stor0.0x21444fed with:
                        gas gas_remaining wei
                       args 0, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _428 = mem[(2 * ceil32(return_data.size)) + 992 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                require return_data.size - mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                if not bool((4 * ceil32(return_data.size)) + 1088 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + 1088
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                mem[(4 * ceil32(return_data.size)) + 992] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                require mem[(2 * ceil32(return_data.size)) + _428 + 1024] == bool(mem[(2 * ceil32(return_data.size)) + _428 + 1024])
                mem[(4 * ceil32(return_data.size)) + 1024] = mem[(2 * ceil32(return_data.size)) + _428 + 1024]
                _596 = mem[(2 * ceil32(return_data.size)) + _428 + 1056]
                require mem[(2 * ceil32(return_data.size)) + _428 + 1056] <= test266151307()
                require (2 * ceil32(return_data.size)) + _428 + mem[(2 * ceil32(return_data.size)) + _428 + 1056] + 1023 < (2 * ceil32(return_data.size)) + return_data.size + 992
                _632 = mem[(2 * ceil32(return_data.size)) + _428 + mem[(2 * ceil32(return_data.size)) + _428 + 1056] + 992]
                if mem[(2 * ceil32(return_data.size)) + _428 + mem[(2 * ceil32(return_data.size)) + _428 + 1056] + 992] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + _428 + mem[(2 * ceil32(return_data.size)) + _428 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + _428 + mem[(2 * ceil32(return_data.size)) + _428 + 1056] + 992]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + _428 + mem[(2 * ceil32(return_data.size)) + _428 + 1056] + 992]) + 1089
                mem[(4 * ceil32(return_data.size)) + 1088] = mem[(2 * ceil32(return_data.size)) + _428 + mem[(2 * ceil32(return_data.size)) + _428 + 1056] + 992]
                require _428 + _596 + (32 * _632) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _428 + _596 + 1024
                t = (4 * ceil32(return_data.size)) + 1120
                while idx < _632:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 1056] = (4 * ceil32(return_data.size)) + 1088
                if not mem[(4 * ceil32(return_data.size)) + 1024]:
                    revert with 0, 'S3'
                if not mem[(2 * ceil32(return_data.size)) + 736]:
                    if not mem[(2 * ceil32(return_data.size)) + 736]:
                        _3055 = mem[(2 * ceil32(return_data.size)) + 608]
                        _3159 = mem[(4 * ceil32(return_data.size)) + 992]
                        if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _3415 = mem[(4 * ceil32(return_data.size)) + 1216]
                        if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _3727 = mem[(4 * ceil32(return_data.size)) + 1184]
                        if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                            revert with 'NH{q', 17
                        _4187 = mem[(2 * ceil32(return_data.size)) + 544]
                        _4188 = mem[(2 * ceil32(return_data.size)) + 768]
                        if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _4507 = mem[(4 * ceil32(return_data.size)) + 1184]
                        if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _4751 = mem[(4 * ceil32(return_data.size)) + 1216]
                        _4752 = mem[64]
                        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 588 len 20]
                        mem[mem[64] + 64] = address(_3055)
                        mem[mem[64] + 96] = address(_4188)
                        mem[mem[64] + 128] = _3159
                        mem[mem[64] + 160] = _4507
                        mem[mem[64] + 192] = _4751
                        _5623 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        if 0 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _5863 = mem[(4 * ceil32(return_data.size)) + 1120]
                        if 1 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                            revert with 'NH{q', 50
                        _6099 = mem[(4 * ceil32(return_data.size)) + 1152]
                        mem[_4752 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4752 + 228] = _5863
                        mem[_4752 + 260] = _6099
                        mem[_4752 + 292] = this.address
                        mem[_4752 + 324] = 128
                        _6671 = mem[_5623]
                        mem[_4752 + 356] = mem[_5623]
                        mem[_4752 + 388 len ceil32(_6671)] = mem[_5623 + 32 len ceil32(_6671)]
                        if ceil32(_6671) > _6671:
                            mem[_4752 + _6671 + 388] = 0
                        require ext_code.size(address(_4187))
                        call address(_4187).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5863, _6099, address(this.address), 128, mem[_4752 + 356 len ceil32(_6671) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _3727 + _3415 < _3159:
                            revert with 'NH{q', 17
                        return _3159, _3727 + _3415, _3727 + _3415 - _3159
                    _3056 = mem[(2 * ceil32(return_data.size)) + 576]
                    _3162 = mem[(4 * ceil32(return_data.size)) + 992]
                    if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _3418 = mem[(4 * ceil32(return_data.size)) + 1216]
                    if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _3728 = mem[(4 * ceil32(return_data.size)) + 1184]
                    if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    _4191 = mem[(2 * ceil32(return_data.size)) + 544]
                    _4192 = mem[(2 * ceil32(return_data.size)) + 768]
                    if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _4510 = mem[(4 * ceil32(return_data.size)) + 1184]
                    if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _4753 = mem[(4 * ceil32(return_data.size)) + 1216]
                    _4754 = mem[64]
                    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 588 len 20]
                    mem[mem[64] + 64] = address(_3056)
                    mem[mem[64] + 96] = address(_4192)
                    mem[mem[64] + 128] = _3162
                    mem[mem[64] + 160] = _4510
                    mem[mem[64] + 192] = _4753
                    _5626 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _5866 = mem[(4 * ceil32(return_data.size)) + 1120]
                    if 1 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _6101 = mem[(4 * ceil32(return_data.size)) + 1152]
                    mem[_4754 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4754 + 228] = _5866
                    mem[_4754 + 260] = _6101
                    mem[_4754 + 292] = this.address
                    mem[_4754 + 324] = 128
                    _6672 = mem[_5626]
                    mem[_4754 + 356] = mem[_5626]
                    mem[_4754 + 388 len ceil32(_6672)] = mem[_5626 + 32 len ceil32(_6672)]
                    if ceil32(_6672) > _6672:
                        mem[_4754 + _6672 + 388] = 0
                    require ext_code.size(address(_4191))
                    call address(_4191).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5866, _6101, address(this.address), 128, mem[_4754 + 356 len ceil32(_6672) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _3728 + _3418 < _3162:
                        revert with 'NH{q', 17
                    return _3162, _3728 + _3418, _3728 + _3418 - _3162
                if not mem[(2 * ceil32(return_data.size)) + 736]:
                    _3057 = mem[(2 * ceil32(return_data.size)) + 608]
                    _3165 = mem[(4 * ceil32(return_data.size)) + 992]
                    if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _3421 = mem[(4 * ceil32(return_data.size)) + 1216]
                    if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _3729 = mem[(4 * ceil32(return_data.size)) + 1184]
                    if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    _4195 = mem[(2 * ceil32(return_data.size)) + 544]
                    _4196 = mem[(2 * ceil32(return_data.size)) + 768]
                    if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _4513 = mem[(4 * ceil32(return_data.size)) + 1184]
                    if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _4755 = mem[(4 * ceil32(return_data.size)) + 1216]
                    _4756 = mem[64]
                    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 620 len 20]
                    mem[mem[64] + 64] = address(_3057)
                    mem[mem[64] + 96] = address(_4196)
                    mem[mem[64] + 128] = _3165
                    mem[mem[64] + 160] = _4513
                    mem[mem[64] + 192] = _4755
                    _5629 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _5869 = mem[(4 * ceil32(return_data.size)) + 1120]
                    if 1 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _6103 = mem[(4 * ceil32(return_data.size)) + 1152]
                    mem[_4756 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4756 + 228] = _5869
                    mem[_4756 + 260] = _6103
                    mem[_4756 + 292] = this.address
                    mem[_4756 + 324] = 128
                    _6673 = mem[_5629]
                    mem[_4756 + 356] = mem[_5629]
                    mem[_4756 + 388 len ceil32(_6673)] = mem[_5629 + 32 len ceil32(_6673)]
                    if ceil32(_6673) > _6673:
                        mem[_4756 + _6673 + 388] = 0
                    require ext_code.size(address(_4195))
                    call address(_4195).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5869, _6103, address(this.address), 128, mem[_4756 + 356 len ceil32(_6673) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _3729 + _3421 < _3165:
                        revert with 'NH{q', 17
                    return _3165, _3729 + _3421, _3729 + _3421 - _3165
                _3058 = mem[(2 * ceil32(return_data.size)) + 576]
                _3168 = mem[(4 * ceil32(return_data.size)) + 992]
                if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _3424 = mem[(4 * ceil32(return_data.size)) + 1216]
                if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _3730 = mem[(4 * ceil32(return_data.size)) + 1184]
                if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _4199 = mem[(2 * ceil32(return_data.size)) + 544]
                _4200 = mem[(2 * ceil32(return_data.size)) + 768]
                if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _4516 = mem[(4 * ceil32(return_data.size)) + 1184]
                if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _4757 = mem[(4 * ceil32(return_data.size)) + 1216]
                _4758 = mem[64]
                mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 620 len 20]
                mem[mem[64] + 64] = address(_3058)
                mem[mem[64] + 96] = address(_4200)
                mem[mem[64] + 128] = _3168
                mem[mem[64] + 160] = _4516
                mem[mem[64] + 192] = _4757
                _5632 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _5872 = mem[(4 * ceil32(return_data.size)) + 1120]
                if 1 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _6105 = mem[(4 * ceil32(return_data.size)) + 1152]
                mem[_4758 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_4758 + 228] = _5872
                mem[_4758 + 260] = _6105
                mem[_4758 + 292] = this.address
                mem[_4758 + 324] = 128
                _6674 = mem[_5632]
                mem[_4758 + 356] = mem[_5632]
                mem[_4758 + 388 len ceil32(_6674)] = mem[_5632 + 32 len ceil32(_6674)]
                if ceil32(_6674) > _6674:
                    mem[_4758 + _6674 + 388] = 0
                require ext_code.size(address(_4199))
                call address(_4199).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _5872, _6105, address(this.address), 128, mem[_4758 + 356 len ceil32(_6674) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _3730 + _3424 < _3168:
                    revert with 'NH{q', 17
                return _3168, _3730 + _3424, _3730 + _3424 - _3168
            mem[(2 * ceil32(return_data.size)) + 576] = address(arg2)
            mem[(2 * ceil32(return_data.size)) + 608] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 640] = 0
            mem[(2 * ceil32(return_data.size)) + 672] = 0
            mem[(2 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            if address(arg2) == address(arg1):
                mem[(2 * ceil32(return_data.size)) + 736] = 0
                mem[(2 * ceil32(return_data.size)) + 768] = 0
                mem[(2 * ceil32(return_data.size)) + 800] = address(arg2)
                mem[(2 * ceil32(return_data.size)) + 832] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 864] = 0
                mem[(2 * ceil32(return_data.size)) + 896] = 0
                mem[(2 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(2 * ceil32(return_data.size)) + 960] = 1
                mem[(2 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 996] = 0
                mem[(2 * ceil32(return_data.size)) + 1028] = 0
                mem[(2 * ceil32(return_data.size)) + 1060] = 0
                mem[(2 * ceil32(return_data.size)) + 1092] = address(arg2)
                mem[(2 * ceil32(return_data.size)) + 1124] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 1156] = 0
                mem[(2 * ceil32(return_data.size)) + 1188] = 0
                mem[(2 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(2 * ceil32(return_data.size)) + 1252] = 0
                mem[(2 * ceil32(return_data.size)) + 1284] = 0
                mem[(2 * ceil32(return_data.size)) + 1316] = address(arg2)
                mem[(2 * ceil32(return_data.size)) + 1348] = address(arg1)
                mem[(2 * ceil32(return_data.size)) + 1380] = 0
                mem[(2 * ceil32(return_data.size)) + 1412] = 0
                mem[(2 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(2 * ceil32(return_data.size)) + 1476] = 1
                require ext_code.size(stor0)
                staticcall stor0.0x21444fed with:
                        gas gas_remaining wei
                       args 0, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _429 = mem[(2 * ceil32(return_data.size)) + 992 len 4], 0
                require mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                require return_data.size - mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                if not bool((4 * ceil32(return_data.size)) + 1088 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + 1088
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                mem[(4 * ceil32(return_data.size)) + 992] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                require mem[(2 * ceil32(return_data.size)) + _429 + 1024] == bool(mem[(2 * ceil32(return_data.size)) + _429 + 1024])
                mem[(4 * ceil32(return_data.size)) + 1024] = mem[(2 * ceil32(return_data.size)) + _429 + 1024]
                _597 = mem[(2 * ceil32(return_data.size)) + _429 + 1056]
                require mem[(2 * ceil32(return_data.size)) + _429 + 1056] <= test266151307()
                require (2 * ceil32(return_data.size)) + _429 + mem[(2 * ceil32(return_data.size)) + _429 + 1056] + 1023 < (2 * ceil32(return_data.size)) + return_data.size + 992
                _633 = mem[(2 * ceil32(return_data.size)) + _429 + mem[(2 * ceil32(return_data.size)) + _429 + 1056] + 992]
                if mem[(2 * ceil32(return_data.size)) + _429 + mem[(2 * ceil32(return_data.size)) + _429 + 1056] + 992] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + _429 + mem[(2 * ceil32(return_data.size)) + _429 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + _429 + mem[(2 * ceil32(return_data.size)) + _429 + 1056] + 992]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + _429 + mem[(2 * ceil32(return_data.size)) + _429 + 1056] + 992]) + 1089
                mem[(4 * ceil32(return_data.size)) + 1088] = _633
                require _429 + _597 + (32 * _633) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + _429 + _597 + 1024
                t = (4 * ceil32(return_data.size)) + 1120
                while idx < _633:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 1056] = (4 * ceil32(return_data.size)) + 1088
                if not mem[(4 * ceil32(return_data.size)) + 1024]:
                    revert with 0, 'S3'
                if not mem[(2 * ceil32(return_data.size)) + 736]:
                    if not mem[(2 * ceil32(return_data.size)) + 736]:
                        _3059 = mem[(2 * ceil32(return_data.size)) + 608]
                        _3171 = mem[(4 * ceil32(return_data.size)) + 992]
                        if 3 >= _633:
                            revert with 'NH{q', 50
                        _3427 = mem[(4 * ceil32(return_data.size)) + 1216]
                        if 2 >= _633:
                            revert with 'NH{q', 50
                        _3731 = mem[(4 * ceil32(return_data.size)) + 1184]
                        if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                            revert with 'NH{q', 17
                        _4203 = mem[(2 * ceil32(return_data.size)) + 544]
                        _4204 = mem[(2 * ceil32(return_data.size)) + 768]
                        if 2 >= _633:
                            revert with 'NH{q', 50
                        _4519 = mem[(4 * ceil32(return_data.size)) + 1184]
                        if 3 >= _633:
                            revert with 'NH{q', 50
                        _4759 = mem[(4 * ceil32(return_data.size)) + 1216]
                        _4760 = mem[64]
                        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 588 len 20]
                        mem[mem[64] + 64] = address(_3059)
                        mem[mem[64] + 96] = address(_4204)
                        mem[mem[64] + 128] = _3171
                        mem[mem[64] + 160] = _4519
                        mem[mem[64] + 192] = _4759
                        _5635 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        if 0 >= _633:
                            revert with 'NH{q', 50
                        _5875 = mem[(4 * ceil32(return_data.size)) + 1120]
                        if 1 >= _633:
                            revert with 'NH{q', 50
                        _6107 = mem[(4 * ceil32(return_data.size)) + 1152]
                        mem[_4760 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4760 + 228] = _5875
                        mem[_4760 + 260] = _6107
                        mem[_4760 + 292] = this.address
                        mem[_4760 + 324] = 128
                        _6675 = mem[_5635]
                        mem[_4760 + 356] = mem[_5635]
                        mem[_4760 + 388 len ceil32(_6675)] = mem[_5635 + 32 len ceil32(_6675)]
                        if ceil32(_6675) > _6675:
                            mem[_4760 + _6675 + 388] = 0
                        require ext_code.size(address(_4203))
                        call address(_4203).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _5875, _6107, address(this.address), 128, mem[_4760 + 356 len ceil32(_6675) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _3731 + _3427 < _3171:
                            revert with 'NH{q', 17
                        return _3171, _3731 + _3427, _3731 + _3427 - _3171
                    _3060 = mem[(2 * ceil32(return_data.size)) + 576]
                    _3174 = mem[(4 * ceil32(return_data.size)) + 992]
                    if 3 >= _633:
                        revert with 'NH{q', 50
                    _3430 = mem[(4 * ceil32(return_data.size)) + 1216]
                    if 2 >= _633:
                        revert with 'NH{q', 50
                    _3732 = mem[(4 * ceil32(return_data.size)) + 1184]
                    if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    _4207 = mem[(2 * ceil32(return_data.size)) + 544]
                    _4208 = mem[(2 * ceil32(return_data.size)) + 768]
                    if 2 >= _633:
                        revert with 'NH{q', 50
                    _4522 = mem[(4 * ceil32(return_data.size)) + 1184]
                    if 3 >= _633:
                        revert with 'NH{q', 50
                    _4761 = mem[(4 * ceil32(return_data.size)) + 1216]
                    _4762 = mem[64]
                    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 588 len 20]
                    mem[mem[64] + 64] = address(_3060)
                    mem[mem[64] + 96] = address(_4208)
                    mem[mem[64] + 128] = _3174
                    mem[mem[64] + 160] = _4522
                    mem[mem[64] + 192] = _4761
                    _5638 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= _633:
                        revert with 'NH{q', 50
                    _5878 = mem[(4 * ceil32(return_data.size)) + 1120]
                    if 1 >= _633:
                        revert with 'NH{q', 50
                    _6109 = mem[(4 * ceil32(return_data.size)) + 1152]
                    mem[_4762 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4762 + 228] = _5878
                    mem[_4762 + 260] = _6109
                    mem[_4762 + 292] = this.address
                    mem[_4762 + 324] = 128
                    _6676 = mem[_5638]
                    mem[_4762 + 356] = mem[_5638]
                    mem[_4762 + 388 len ceil32(_6676)] = mem[_5638 + 32 len ceil32(_6676)]
                    if ceil32(_6676) > _6676:
                        mem[_4762 + _6676 + 388] = 0
                    require ext_code.size(address(_4207))
                    call address(_4207).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5878, _6109, address(this.address), 128, mem[_4762 + 356 len ceil32(_6676) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _3732 + _3430 < _3174:
                        revert with 'NH{q', 17
                    return _3174, _3732 + _3430, _3732 + _3430 - _3174
                if not mem[(2 * ceil32(return_data.size)) + 736]:
                    _3061 = mem[(2 * ceil32(return_data.size)) + 608]
                    _3177 = mem[(4 * ceil32(return_data.size)) + 992]
                    if 3 >= _633:
                        revert with 'NH{q', 50
                    _3433 = mem[(4 * ceil32(return_data.size)) + 1216]
                    if 2 >= _633:
                        revert with 'NH{q', 50
                    _3733 = mem[(4 * ceil32(return_data.size)) + 1184]
                    if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    _4211 = mem[(2 * ceil32(return_data.size)) + 544]
                    _4212 = mem[(2 * ceil32(return_data.size)) + 768]
                    if 2 >= _633:
                        revert with 'NH{q', 50
                    _4525 = mem[(4 * ceil32(return_data.size)) + 1184]
                    if 3 >= _633:
                        revert with 'NH{q', 50
                    _4763 = mem[(4 * ceil32(return_data.size)) + 1216]
                    _4764 = mem[64]
                    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 620 len 20]
                    mem[mem[64] + 64] = address(_3061)
                    mem[mem[64] + 96] = address(_4212)
                    mem[mem[64] + 128] = _3177
                    mem[mem[64] + 160] = _4525
                    mem[mem[64] + 192] = _4763
                    _5641 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= _633:
                        revert with 'NH{q', 50
                    _5881 = mem[(4 * ceil32(return_data.size)) + 1120]
                    if 1 >= _633:
                        revert with 'NH{q', 50
                    _6111 = mem[(4 * ceil32(return_data.size)) + 1152]
                    mem[_4764 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4764 + 228] = _5881
                    mem[_4764 + 260] = _6111
                    mem[_4764 + 292] = this.address
                    mem[_4764 + 324] = 128
                    _6677 = mem[_5641]
                    mem[_4764 + 356] = mem[_5641]
                    mem[_4764 + 388 len ceil32(_6677)] = mem[_5641 + 32 len ceil32(_6677)]
                    if ceil32(_6677) > _6677:
                        mem[_4764 + _6677 + 388] = 0
                    require ext_code.size(address(_4211))
                    call address(_4211).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5881, _6111, address(this.address), 128, mem[_4764 + 356 len ceil32(_6677) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _3733 + _3433 < _3177:
                        revert with 'NH{q', 17
                    return _3177, _3733 + _3433, _3733 + _3433 - _3177
                _3062 = mem[(2 * ceil32(return_data.size)) + 576]
                _3180 = mem[(4 * ceil32(return_data.size)) + 992]
                if 3 >= _633:
                    revert with 'NH{q', 50
                _3436 = mem[(4 * ceil32(return_data.size)) + 1216]
                if 2 >= _633:
                    revert with 'NH{q', 50
                _3734 = mem[(4 * ceil32(return_data.size)) + 1184]
                if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _4215 = mem[(2 * ceil32(return_data.size)) + 544]
                _4216 = mem[(2 * ceil32(return_data.size)) + 768]
                if 2 >= _633:
                    revert with 'NH{q', 50
                _4528 = mem[(4 * ceil32(return_data.size)) + 1184]
                if 3 >= _633:
                    revert with 'NH{q', 50
                _4765 = mem[(4 * ceil32(return_data.size)) + 1216]
                _4766 = mem[64]
                mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 620 len 20]
                mem[mem[64] + 64] = address(_3062)
                mem[mem[64] + 96] = address(_4216)
                mem[mem[64] + 128] = _3180
                mem[mem[64] + 160] = _4528
                mem[mem[64] + 192] = _4765
                _5644 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _633:
                    revert with 'NH{q', 50
                _5884 = mem[(4 * ceil32(return_data.size)) + 1120]
                if 1 >= _633:
                    revert with 'NH{q', 50
                _6113 = mem[(4 * ceil32(return_data.size)) + 1152]
                mem[_4766 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_4766 + 228] = _5884
                mem[_4766 + 260] = _6113
                mem[_4766 + 292] = this.address
                mem[_4766 + 324] = 128
                _6678 = mem[_5644]
                mem[_4766 + 356] = mem[_5644]
                mem[_4766 + 388 len ceil32(_6678)] = mem[_5644 + 32 len ceil32(_6678)]
                if ceil32(_6678) > _6678:
                    mem[_4766 + _6678 + 388] = 0
                require ext_code.size(address(_4215))
                call address(_4215).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _5884, _6113, address(this.address), 128, mem[_4766 + 356 len ceil32(_6678) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _3734 + _3436 < _3180:
                    revert with 'NH{q', 17
                return _3180, _3734 + _3436, _3734 + _3436 - _3180
            mem[(2 * ceil32(return_data.size)) + 736] = 1
            mem[(2 * ceil32(return_data.size)) + 768] = 0
            mem[(2 * ceil32(return_data.size)) + 800] = address(arg2)
            mem[(2 * ceil32(return_data.size)) + 832] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 864] = 0
            mem[(2 * ceil32(return_data.size)) + 896] = 0
            mem[(2 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(2 * ceil32(return_data.size)) + 960] = 0
            mem[(2 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 996] = 0
            mem[(2 * ceil32(return_data.size)) + 1028] = 0
            mem[(2 * ceil32(return_data.size)) + 1060] = 0
            mem[(2 * ceil32(return_data.size)) + 1092] = address(arg2)
            mem[(2 * ceil32(return_data.size)) + 1124] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 1156] = 0
            mem[(2 * ceil32(return_data.size)) + 1188] = 0
            mem[(2 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(2 * ceil32(return_data.size)) + 1252] = 1
            mem[(2 * ceil32(return_data.size)) + 1284] = 0
            mem[(2 * ceil32(return_data.size)) + 1316] = address(arg2)
            mem[(2 * ceil32(return_data.size)) + 1348] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 1380] = 0
            mem[(2 * ceil32(return_data.size)) + 1412] = 0
            mem[(2 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(2 * ceil32(return_data.size)) + 1476] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _430 = mem[(2 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((4 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + 1088
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(4 * ceil32(return_data.size)) + 992] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(2 * ceil32(return_data.size)) + _430 + 1024] == bool(mem[(2 * ceil32(return_data.size)) + _430 + 1024])
            mem[(4 * ceil32(return_data.size)) + 1024] = mem[(2 * ceil32(return_data.size)) + _430 + 1024]
            _598 = mem[(2 * ceil32(return_data.size)) + _430 + 1056]
            require mem[(2 * ceil32(return_data.size)) + _430 + 1056] <= test266151307()
            require (2 * ceil32(return_data.size)) + _430 + mem[(2 * ceil32(return_data.size)) + _430 + 1056] + 1023 < (2 * ceil32(return_data.size)) + return_data.size + 992
            _634 = mem[(2 * ceil32(return_data.size)) + _430 + mem[(2 * ceil32(return_data.size)) + _430 + 1056] + 992]
            if mem[(2 * ceil32(return_data.size)) + _430 + mem[(2 * ceil32(return_data.size)) + _430 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + _430 + mem[(2 * ceil32(return_data.size)) + _430 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + _430 + mem[(2 * ceil32(return_data.size)) + _430 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + _430 + mem[(2 * ceil32(return_data.size)) + _430 + 1056] + 992]) + 1089
            mem[(4 * ceil32(return_data.size)) + 1088] = mem[(2 * ceil32(return_data.size)) + _430 + mem[(2 * ceil32(return_data.size)) + _430 + 1056] + 992]
            require _430 + _598 + (32 * _634) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _430 + _598 + 1024
            t = (4 * ceil32(return_data.size)) + 1120
            while idx < _634:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 1056] = (4 * ceil32(return_data.size)) + 1088
            if not mem[(4 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            if not mem[(2 * ceil32(return_data.size)) + 736]:
                if not mem[(2 * ceil32(return_data.size)) + 736]:
                    _3063 = mem[(2 * ceil32(return_data.size)) + 608]
                    _3183 = mem[(4 * ceil32(return_data.size)) + 992]
                    if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _3439 = mem[(4 * ceil32(return_data.size)) + 1216]
                    if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _3735 = mem[(4 * ceil32(return_data.size)) + 1184]
                    if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    _4219 = mem[(2 * ceil32(return_data.size)) + 544]
                    _4220 = mem[(2 * ceil32(return_data.size)) + 768]
                    if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _4531 = mem[(4 * ceil32(return_data.size)) + 1184]
                    if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _4767 = mem[(4 * ceil32(return_data.size)) + 1216]
                    _4768 = mem[64]
                    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 588 len 20]
                    mem[mem[64] + 64] = address(_3063)
                    mem[mem[64] + 96] = address(_4220)
                    mem[mem[64] + 128] = _3183
                    mem[mem[64] + 160] = _4531
                    mem[mem[64] + 192] = _4767
                    _5647 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _5887 = mem[(4 * ceil32(return_data.size)) + 1120]
                    if 1 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                        revert with 'NH{q', 50
                    _6115 = mem[(4 * ceil32(return_data.size)) + 1152]
                    mem[_4768 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4768 + 228] = _5887
                    mem[_4768 + 260] = _6115
                    mem[_4768 + 292] = this.address
                    mem[_4768 + 324] = 128
                    _6679 = mem[_5647]
                    mem[_4768 + 356] = mem[_5647]
                    mem[_4768 + 388 len ceil32(_6679)] = mem[_5647 + 32 len ceil32(_6679)]
                    if ceil32(_6679) > _6679:
                        mem[_4768 + _6679 + 388] = 0
                    require ext_code.size(address(_4219))
                    call address(_4219).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5887, _6115, address(this.address), 128, mem[_4768 + 356 len ceil32(_6679) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _3735 + _3439 < _3183:
                        revert with 'NH{q', 17
                    return _3183, _3735 + _3439, _3735 + _3439 - _3183
                _3064 = mem[(2 * ceil32(return_data.size)) + 576]
                _3186 = mem[(4 * ceil32(return_data.size)) + 992]
                if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _3442 = mem[(4 * ceil32(return_data.size)) + 1216]
                if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _3736 = mem[(4 * ceil32(return_data.size)) + 1184]
                if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _4223 = mem[(2 * ceil32(return_data.size)) + 544]
                _4224 = mem[(2 * ceil32(return_data.size)) + 768]
                if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _4534 = mem[(4 * ceil32(return_data.size)) + 1184]
                if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _4769 = mem[(4 * ceil32(return_data.size)) + 1216]
                _4770 = mem[64]
                mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 588 len 20]
                mem[mem[64] + 64] = address(_3064)
                mem[mem[64] + 96] = address(_4224)
                mem[mem[64] + 128] = _3186
                mem[mem[64] + 160] = _4534
                mem[mem[64] + 192] = _4769
                _5650 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _5890 = mem[(4 * ceil32(return_data.size)) + 1120]
                if 1 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _6117 = mem[(4 * ceil32(return_data.size)) + 1152]
                mem[_4770 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_4770 + 228] = _5890
                mem[_4770 + 260] = _6117
                mem[_4770 + 292] = this.address
                mem[_4770 + 324] = 128
                _6680 = mem[_5650]
                mem[_4770 + 356] = mem[_5650]
                mem[_4770 + 388 len ceil32(_6680)] = mem[_5650 + 32 len ceil32(_6680)]
                if ceil32(_6680) > _6680:
                    mem[_4770 + _6680 + 388] = 0
                require ext_code.size(address(_4223))
                call address(_4223).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _5890, _6117, address(this.address), 128, mem[_4770 + 356 len ceil32(_6680) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _3736 + _3442 < _3186:
                    revert with 'NH{q', 17
                return _3186, _3736 + _3442, _3736 + _3442 - _3186
            if not mem[(2 * ceil32(return_data.size)) + 736]:
                _3065 = mem[(2 * ceil32(return_data.size)) + 608]
                _3189 = mem[(4 * ceil32(return_data.size)) + 992]
                if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _3445 = mem[(4 * ceil32(return_data.size)) + 1216]
                if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _3737 = mem[(4 * ceil32(return_data.size)) + 1184]
                if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _4227 = mem[(2 * ceil32(return_data.size)) + 544]
                _4228 = mem[(2 * ceil32(return_data.size)) + 768]
                if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _4537 = mem[(4 * ceil32(return_data.size)) + 1184]
                if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _4771 = mem[(4 * ceil32(return_data.size)) + 1216]
                _4772 = mem[64]
                mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 620 len 20]
                mem[mem[64] + 64] = address(_3065)
                mem[mem[64] + 96] = address(_4228)
                mem[mem[64] + 128] = _3189
                mem[mem[64] + 160] = _4537
                mem[mem[64] + 192] = _4771
                _5653 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _5893 = mem[(4 * ceil32(return_data.size)) + 1120]
                if 1 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _6119 = mem[(4 * ceil32(return_data.size)) + 1152]
                mem[_4772 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_4772 + 228] = _5893
                mem[_4772 + 260] = _6119
                mem[_4772 + 292] = this.address
                mem[_4772 + 324] = 128
                _6681 = mem[_5653]
                mem[_4772 + 356] = mem[_5653]
                mem[_4772 + 388 len ceil32(_6681)] = mem[_5653 + 32 len ceil32(_6681)]
                if ceil32(_6681) > _6681:
                    mem[_4772 + _6681 + 388] = 0
                require ext_code.size(address(_4227))
                call address(_4227).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _5893, _6119, address(this.address), 128, mem[_4772 + 356 len ceil32(_6681) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _3737 + _3445 < _3189:
                    revert with 'NH{q', 17
                return _3189, _3737 + _3445, _3737 + _3445 - _3189
            _3066 = mem[(2 * ceil32(return_data.size)) + 576]
            _3192 = mem[(4 * ceil32(return_data.size)) + 992]
            if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                revert with 'NH{q', 50
            _3448 = mem[(4 * ceil32(return_data.size)) + 1216]
            if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                revert with 'NH{q', 50
            _3738 = mem[(4 * ceil32(return_data.size)) + 1184]
            if mem[(4 * ceil32(return_data.size)) + 1184] > -mem[(4 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            _4231 = mem[(2 * ceil32(return_data.size)) + 544]
            _4232 = mem[(2 * ceil32(return_data.size)) + 768]
            if 2 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                revert with 'NH{q', 50
            _4540 = mem[(4 * ceil32(return_data.size)) + 1184]
            if 3 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                revert with 'NH{q', 50
            _4773 = mem[(4 * ceil32(return_data.size)) + 1216]
            _4774 = mem[64]
            mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 620 len 20]
            mem[mem[64] + 64] = address(_3066)
            mem[mem[64] + 96] = address(_4232)
            mem[mem[64] + 128] = _3192
            mem[mem[64] + 160] = _4540
            mem[mem[64] + 192] = _4773
            _5656 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                revert with 'NH{q', 50
            _5896 = mem[(4 * ceil32(return_data.size)) + 1120]
            if 1 >= mem[(4 * ceil32(return_data.size)) + 1088]:
                revert with 'NH{q', 50
            _6121 = mem[(4 * ceil32(return_data.size)) + 1152]
            mem[_4774 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_4774 + 228] = _5896
            mem[_4774 + 260] = _6121
            mem[_4774 + 292] = this.address
            mem[_4774 + 324] = 128
            _6682 = mem[_5656]
            mem[_4774 + 356] = mem[_5656]
            mem[_4774 + 388 len ceil32(_6682)] = mem[_5656 + 32 len ceil32(_6682)]
            if ceil32(_6682) > _6682:
                mem[_4774 + _6682 + 388] = 0
            require ext_code.size(address(_4231))
            call address(_4231).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _5896, _6121, address(this.address), 128, mem[_4774 + 356 len ceil32(_6682) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _3738 + _3448 < _3192:
                revert with 'NH{q', 17
            return _3192, _3738 + _3448, _3738 + _3448 - _3192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 548] = address(arg1)
        mem[ceil32(return_data.size) + 580] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), address(arg2)
        mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            mem[ceil32(return_data.size) + 548] = 10^6
            mem[ceil32(return_data.size) + 580] = 10^12
            mem[ceil32(return_data.size) + 612] = 10^12
            require ext_code.size(address(arg3))
            staticcall address(arg3).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -101:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 548] = 10^6
            mem[(2 * ceil32(return_data.size)) + 580] = 10^12
            mem[(2 * ceil32(return_data.size)) + 612] = 10^12
            require ext_code.size(address(arg4))
            staticcall address(arg4).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -101:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 544] = 0
            if address(arg1) < address(arg2):
                mem[(4 * ceil32(return_data.size)) + 576] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 608] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 640] = 0
                mem[(4 * ceil32(return_data.size)) + 672] = 0
                mem[(4 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                if address(arg1) == address(arg1):
                    mem[(4 * ceil32(return_data.size)) + 736] = 0
                    mem[(4 * ceil32(return_data.size)) + 768] = 0
                    mem[(4 * ceil32(return_data.size)) + 800] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 832] = address(arg2)
                    mem[(4 * ceil32(return_data.size)) + 864] = 0
                    mem[(4 * ceil32(return_data.size)) + 896] = 0
                    mem[(4 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    mem[(4 * ceil32(return_data.size)) + 960] = 1
                    mem[(4 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 996] = 0
                    mem[(4 * ceil32(return_data.size)) + 1028] = 0
                    mem[(4 * ceil32(return_data.size)) + 1060] = 0
                    mem[(4 * ceil32(return_data.size)) + 1092] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 1124] = address(arg2)
                    mem[(4 * ceil32(return_data.size)) + 1156] = 0
                    mem[(4 * ceil32(return_data.size)) + 1188] = 0
                    mem[(4 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    mem[(4 * ceil32(return_data.size)) + 1252] = 0
                    mem[(4 * ceil32(return_data.size)) + 1284] = 0
                    mem[(4 * ceil32(return_data.size)) + 1316] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 1348] = address(arg2)
                    mem[(4 * ceil32(return_data.size)) + 1380] = 0
                    mem[(4 * ceil32(return_data.size)) + 1412] = 0
                    mem[(4 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    mem[(4 * ceil32(return_data.size)) + 1476] = 1
                    require ext_code.size(stor0)
                    staticcall stor0.0x21444fed with:
                            gas gas_remaining wei
                           args 0, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _647 = mem[(4 * ceil32(return_data.size)) + 992 len 4], 0
                    require mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                    require return_data.size - mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                    if not bool((6 * ceil32(return_data.size)) + 1088 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + 1088
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                    mem[(6 * ceil32(return_data.size)) + 992] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                    require mem[(4 * ceil32(return_data.size)) + _647 + 1024] == bool(mem[(4 * ceil32(return_data.size)) + _647 + 1024])
                    mem[(6 * ceil32(return_data.size)) + 1024] = mem[(4 * ceil32(return_data.size)) + _647 + 1024]
                    _971 = mem[(4 * ceil32(return_data.size)) + _647 + 1056]
                    require mem[(4 * ceil32(return_data.size)) + _647 + 1056] <= test266151307()
                    require (4 * ceil32(return_data.size)) + _647 + mem[(4 * ceil32(return_data.size)) + _647 + 1056] + 1023 < (4 * ceil32(return_data.size)) + return_data.size + 992
                    _995 = mem[(4 * ceil32(return_data.size)) + _647 + mem[(4 * ceil32(return_data.size)) + _647 + 1056] + 992]
                    if mem[(4 * ceil32(return_data.size)) + _647 + mem[(4 * ceil32(return_data.size)) + _647 + 1056] + 992] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _647 + mem[(4 * ceil32(return_data.size)) + _647 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + _647 + mem[(4 * ceil32(return_data.size)) + _647 + 1056] + 992]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _647 + mem[(4 * ceil32(return_data.size)) + _647 + 1056] + 992]) + 1089
                    mem[(6 * ceil32(return_data.size)) + 1088] = _995
                    require _647 + _971 + (32 * _995) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _647 + _971 + 1024
                    t = (6 * ceil32(return_data.size)) + 1120
                    while idx < _995:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 1056] = (6 * ceil32(return_data.size)) + 1088
                    if not mem[(6 * ceil32(return_data.size)) + 1024]:
                        revert with 0, 'S3'
                    _3195 = mem[(6 * ceil32(return_data.size)) + 992]
                    if 3 >= _995:
                        revert with 'NH{q', 50
                    _3451 = mem[(6 * ceil32(return_data.size)) + 1216]
                    if 2 >= _995:
                        revert with 'NH{q', 50
                    _3739 = mem[(6 * ceil32(return_data.size)) + 1184]
                    if mem[(6 * ceil32(return_data.size)) + 1184] > -mem[(6 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    if 2 >= _995:
                        revert with 'NH{q', 50
                    _4543 = mem[(6 * ceil32(return_data.size)) + 1184]
                    if 3 >= _995:
                        revert with 'NH{q', 50
                    _4775 = mem[(6 * ceil32(return_data.size)) + 1216]
                    _4776 = mem[64]
                    mem[mem[64] + 32] = uint64(arg1) << 96
                    mem[mem[64] + 64] = address(arg2)
                    mem[mem[64] + 96] = 0
                    mem[mem[64] + 128] = _3195
                    mem[mem[64] + 160] = _4543
                    mem[mem[64] + 192] = _4775
                    _5659 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= _995:
                        revert with 'NH{q', 50
                    _5899 = mem[(6 * ceil32(return_data.size)) + 1120]
                    if 1 >= _995:
                        revert with 'NH{q', 50
                    _6123 = mem[(6 * ceil32(return_data.size)) + 1152]
                    mem[_4776 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4776 + 228] = _5899
                    mem[_4776 + 260] = _6123
                    mem[_4776 + 292] = this.address
                    mem[_4776 + 324] = 128
                    _6683 = mem[_5659]
                    mem[_4776 + 356] = mem[_5659]
                    mem[_4776 + 388 len ceil32(_6683)] = mem[_5659 + 32 len ceil32(_6683)]
                    if ceil32(_6683) > _6683:
                        mem[_4776 + _6683 + 388] = 0
                    require ext_code.size(0)
                    call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5899, _6123, address(this.address), 128, mem[_4776 + 356 len ceil32(_6683) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _3739 + _3451 < _3195:
                        revert with 'NH{q', 17
                    return _3195, _3739 + _3451, _3739 + _3451 - _3195
                mem[(4 * ceil32(return_data.size)) + 736] = 1
                mem[(4 * ceil32(return_data.size)) + 768] = 0
                mem[(4 * ceil32(return_data.size)) + 800] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 832] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 864] = 0
                mem[(4 * ceil32(return_data.size)) + 896] = 0
                mem[(4 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(4 * ceil32(return_data.size)) + 960] = 0
                mem[(4 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 996] = 0
                mem[(4 * ceil32(return_data.size)) + 1028] = 0
                mem[(4 * ceil32(return_data.size)) + 1060] = 0
                mem[(4 * ceil32(return_data.size)) + 1092] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 1124] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 1156] = 0
                mem[(4 * ceil32(return_data.size)) + 1188] = 0
                mem[(4 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(4 * ceil32(return_data.size)) + 1252] = 1
                mem[(4 * ceil32(return_data.size)) + 1284] = 0
                mem[(4 * ceil32(return_data.size)) + 1316] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 1348] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 1380] = 0
                mem[(4 * ceil32(return_data.size)) + 1412] = 0
                mem[(4 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(4 * ceil32(return_data.size)) + 1476] = 0
                require ext_code.size(stor0)
                staticcall stor0.0x21444fed with:
                        gas gas_remaining wei
                       args 0, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _648 = mem[(4 * ceil32(return_data.size)) + 992 len 4], 0
                require mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                require return_data.size - mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                if not bool((6 * ceil32(return_data.size)) + 1088 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + 1088
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                mem[(6 * ceil32(return_data.size)) + 992] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                require mem[(4 * ceil32(return_data.size)) + _648 + 1024] == bool(mem[(4 * ceil32(return_data.size)) + _648 + 1024])
                mem[(6 * ceil32(return_data.size)) + 1024] = mem[(4 * ceil32(return_data.size)) + _648 + 1024]
                _972 = mem[(4 * ceil32(return_data.size)) + _648 + 1056]
                require mem[(4 * ceil32(return_data.size)) + _648 + 1056] <= test266151307()
                require (4 * ceil32(return_data.size)) + _648 + mem[(4 * ceil32(return_data.size)) + _648 + 1056] + 1023 < (4 * ceil32(return_data.size)) + return_data.size + 992
                _996 = mem[(4 * ceil32(return_data.size)) + _648 + mem[(4 * ceil32(return_data.size)) + _648 + 1056] + 992]
                if mem[(4 * ceil32(return_data.size)) + _648 + mem[(4 * ceil32(return_data.size)) + _648 + 1056] + 992] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _648 + mem[(4 * ceil32(return_data.size)) + _648 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + _648 + mem[(4 * ceil32(return_data.size)) + _648 + 1056] + 992]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _648 + mem[(4 * ceil32(return_data.size)) + _648 + 1056] + 992]) + 1089
                mem[(6 * ceil32(return_data.size)) + 1088] = mem[(4 * ceil32(return_data.size)) + _648 + mem[(4 * ceil32(return_data.size)) + _648 + 1056] + 992]
                require _648 + _972 + (32 * _996) + 32 <= return_data.size
                idx = 0
                s = (4 * ceil32(return_data.size)) + _648 + _972 + 1024
                t = (6 * ceil32(return_data.size)) + 1120
                while idx < _996:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 1056] = (6 * ceil32(return_data.size)) + 1088
                if not mem[(6 * ceil32(return_data.size)) + 1024]:
                    revert with 0, 'S3'
                _3216 = mem[(6 * ceil32(return_data.size)) + 992]
                if 3 >= mem[(6 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _3472 = mem[(6 * ceil32(return_data.size)) + 1216]
                if 2 >= mem[(6 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _3746 = mem[(6 * ceil32(return_data.size)) + 1184]
                if mem[(6 * ceil32(return_data.size)) + 1184] > -mem[(6 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                if 2 >= mem[(6 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _4564 = mem[(6 * ceil32(return_data.size)) + 1184]
                if 3 >= mem[(6 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _4789 = mem[(6 * ceil32(return_data.size)) + 1216]
                _4790 = mem[64]
                mem[mem[64] + 32] = uint64(arg2) << 96
                mem[mem[64] + 64] = address(arg1)
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = _3216
                mem[mem[64] + 160] = _4564
                mem[mem[64] + 192] = _4789
                _5680 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= mem[(6 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _5920 = mem[(6 * ceil32(return_data.size)) + 1120]
                if 1 >= mem[(6 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _6137 = mem[(6 * ceil32(return_data.size)) + 1152]
                mem[_4790 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_4790 + 228] = _5920
                mem[_4790 + 260] = _6137
                mem[_4790 + 292] = this.address
                mem[_4790 + 324] = 128
                _6690 = mem[_5680]
                mem[_4790 + 356] = mem[_5680]
                mem[_4790 + 388 len ceil32(_6690)] = mem[_5680 + 32 len ceil32(_6690)]
                if ceil32(_6690) > _6690:
                    mem[_4790 + _6690 + 388] = 0
                require ext_code.size(0)
                call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _5920, _6137, address(this.address), 128, mem[_4790 + 356 len ceil32(_6690) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _3746 + _3472 < _3216:
                    revert with 'NH{q', 17
                return _3216, _3746 + _3472, _3746 + _3472 - _3216
            mem[(4 * ceil32(return_data.size)) + 576] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 608] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 640] = 0
            mem[(4 * ceil32(return_data.size)) + 672] = 0
            mem[(4 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            if address(arg2) == address(arg1):
                mem[(4 * ceil32(return_data.size)) + 736] = 0
                mem[(4 * ceil32(return_data.size)) + 768] = 0
                mem[(4 * ceil32(return_data.size)) + 800] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 832] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 864] = 0
                mem[(4 * ceil32(return_data.size)) + 896] = 0
                mem[(4 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(4 * ceil32(return_data.size)) + 960] = 1
                mem[(4 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 996] = 0
                mem[(4 * ceil32(return_data.size)) + 1028] = 0
                mem[(4 * ceil32(return_data.size)) + 1060] = 0
                mem[(4 * ceil32(return_data.size)) + 1092] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 1124] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 1156] = 0
                mem[(4 * ceil32(return_data.size)) + 1188] = 0
                mem[(4 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(4 * ceil32(return_data.size)) + 1252] = 0
                mem[(4 * ceil32(return_data.size)) + 1284] = 0
                mem[(4 * ceil32(return_data.size)) + 1316] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 1348] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 1380] = 0
                mem[(4 * ceil32(return_data.size)) + 1412] = 0
                mem[(4 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(4 * ceil32(return_data.size)) + 1476] = 1
                require ext_code.size(stor0)
                staticcall stor0.0x21444fed with:
                        gas gas_remaining wei
                       args 0, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _649 = mem[(4 * ceil32(return_data.size)) + 992 len 4], 0
                require mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                require return_data.size - mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                if not bool((6 * ceil32(return_data.size)) + 1088 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + 1088
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                mem[(6 * ceil32(return_data.size)) + 992] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                require mem[(4 * ceil32(return_data.size)) + _649 + 1024] == bool(mem[(4 * ceil32(return_data.size)) + _649 + 1024])
                mem[(6 * ceil32(return_data.size)) + 1024] = mem[(4 * ceil32(return_data.size)) + _649 + 1024]
                _973 = mem[(4 * ceil32(return_data.size)) + _649 + 1056]
                require mem[(4 * ceil32(return_data.size)) + _649 + 1056] <= test266151307()
                require (4 * ceil32(return_data.size)) + _649 + mem[(4 * ceil32(return_data.size)) + _649 + 1056] + 1023 < (4 * ceil32(return_data.size)) + return_data.size + 992
                _997 = mem[(4 * ceil32(return_data.size)) + _649 + mem[(4 * ceil32(return_data.size)) + _649 + 1056] + 992]
                if mem[(4 * ceil32(return_data.size)) + _649 + mem[(4 * ceil32(return_data.size)) + _649 + 1056] + 992] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _649 + mem[(4 * ceil32(return_data.size)) + _649 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + _649 + mem[(4 * ceil32(return_data.size)) + _649 + 1056] + 992]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _649 + mem[(4 * ceil32(return_data.size)) + _649 + 1056] + 992]) + 1089
                mem[(6 * ceil32(return_data.size)) + 1088] = _997
                require _649 + _973 + (32 * _997) + 32 <= return_data.size
                idx = 0
                s = (4 * ceil32(return_data.size)) + _649 + _973 + 1024
                t = (6 * ceil32(return_data.size)) + 1120
                while idx < _997:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 1056] = (6 * ceil32(return_data.size)) + 1088
                if not mem[(6 * ceil32(return_data.size)) + 1024]:
                    revert with 0, 'S3'
                _3219 = mem[(6 * ceil32(return_data.size)) + 992]
                if 3 >= _997:
                    revert with 'NH{q', 50
                _3475 = mem[(6 * ceil32(return_data.size)) + 1216]
                if 2 >= _997:
                    revert with 'NH{q', 50
                _3747 = mem[(6 * ceil32(return_data.size)) + 1184]
                if mem[(6 * ceil32(return_data.size)) + 1184] > -mem[(6 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                if 2 >= _997:
                    revert with 'NH{q', 50
                _4567 = mem[(6 * ceil32(return_data.size)) + 1184]
                if 3 >= _997:
                    revert with 'NH{q', 50
                _4791 = mem[(6 * ceil32(return_data.size)) + 1216]
                _4792 = mem[64]
                mem[mem[64] + 32] = uint64(arg2) << 96
                mem[mem[64] + 64] = address(arg1)
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = _3219
                mem[mem[64] + 160] = _4567
                mem[mem[64] + 192] = _4791
                _5683 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _997:
                    revert with 'NH{q', 50
                _5923 = mem[(6 * ceil32(return_data.size)) + 1120]
                if 1 >= _997:
                    revert with 'NH{q', 50
                _6139 = mem[(6 * ceil32(return_data.size)) + 1152]
                mem[_4792 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_4792 + 228] = _5923
                mem[_4792 + 260] = _6139
                mem[_4792 + 292] = this.address
                mem[_4792 + 324] = 128
                _6691 = mem[_5683]
                mem[_4792 + 356] = mem[_5683]
                mem[_4792 + 388 len ceil32(_6691)] = mem[_5683 + 32 len ceil32(_6691)]
                if ceil32(_6691) > _6691:
                    mem[_4792 + _6691 + 388] = 0
                require ext_code.size(0)
                call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _5923, _6139, address(this.address), 128, mem[_4792 + 356 len ceil32(_6691) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _3747 + _3475 < _3219:
                    revert with 'NH{q', 17
                return _3219, _3747 + _3475, _3747 + _3475 - _3219
            mem[(4 * ceil32(return_data.size)) + 736] = 1
            mem[(4 * ceil32(return_data.size)) + 768] = 0
            mem[(4 * ceil32(return_data.size)) + 800] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 832] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 864] = 0
            mem[(4 * ceil32(return_data.size)) + 896] = 0
            mem[(4 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(4 * ceil32(return_data.size)) + 960] = 0
            mem[(4 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 996] = 0
            mem[(4 * ceil32(return_data.size)) + 1028] = 0
            mem[(4 * ceil32(return_data.size)) + 1060] = 0
            mem[(4 * ceil32(return_data.size)) + 1092] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 1124] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 1156] = 0
            mem[(4 * ceil32(return_data.size)) + 1188] = 0
            mem[(4 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(4 * ceil32(return_data.size)) + 1252] = 1
            mem[(4 * ceil32(return_data.size)) + 1284] = 0
            mem[(4 * ceil32(return_data.size)) + 1316] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 1348] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 1380] = 0
            mem[(4 * ceil32(return_data.size)) + 1412] = 0
            mem[(4 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(4 * ceil32(return_data.size)) + 1476] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _650 = mem[(4 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((6 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (6 * ceil32(return_data.size)) + 1088
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(6 * ceil32(return_data.size)) + 992] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(4 * ceil32(return_data.size)) + _650 + 1024] == bool(mem[(4 * ceil32(return_data.size)) + _650 + 1024])
            mem[(6 * ceil32(return_data.size)) + 1024] = mem[(4 * ceil32(return_data.size)) + _650 + 1024]
            _974 = mem[(4 * ceil32(return_data.size)) + _650 + 1056]
            require mem[(4 * ceil32(return_data.size)) + _650 + 1056] <= test266151307()
            require (4 * ceil32(return_data.size)) + _650 + mem[(4 * ceil32(return_data.size)) + _650 + 1056] + 1023 < (4 * ceil32(return_data.size)) + return_data.size + 992
            _998 = mem[(4 * ceil32(return_data.size)) + _650 + mem[(4 * ceil32(return_data.size)) + _650 + 1056] + 992]
            if mem[(4 * ceil32(return_data.size)) + _650 + mem[(4 * ceil32(return_data.size)) + _650 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _650 + mem[(4 * ceil32(return_data.size)) + _650 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + _650 + mem[(4 * ceil32(return_data.size)) + _650 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _650 + mem[(4 * ceil32(return_data.size)) + _650 + 1056] + 992]) + 1089
            mem[(6 * ceil32(return_data.size)) + 1088] = _998
            require _650 + _974 + (32 * _998) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _650 + _974 + 1024
            t = (6 * ceil32(return_data.size)) + 1120
            while idx < _998:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 1056] = (6 * ceil32(return_data.size)) + 1088
            if not mem[(6 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            _3240 = mem[(6 * ceil32(return_data.size)) + 992]
            if 3 >= _998:
                revert with 'NH{q', 50
            _3496 = mem[(6 * ceil32(return_data.size)) + 1216]
            if 2 >= _998:
                revert with 'NH{q', 50
            _3754 = mem[(6 * ceil32(return_data.size)) + 1184]
            if mem[(6 * ceil32(return_data.size)) + 1184] > -mem[(6 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            if 2 >= _998:
                revert with 'NH{q', 50
            _4588 = mem[(6 * ceil32(return_data.size)) + 1184]
            if 3 >= _998:
                revert with 'NH{q', 50
            _4805 = mem[(6 * ceil32(return_data.size)) + 1216]
            _4806 = mem[64]
            mem[mem[64] + 32] = uint64(arg1) << 96
            mem[mem[64] + 64] = address(arg2)
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = _3240
            mem[mem[64] + 160] = _4588
            mem[mem[64] + 192] = _4805
            _5704 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _998:
                revert with 'NH{q', 50
            _5944 = mem[(6 * ceil32(return_data.size)) + 1120]
            if 1 >= _998:
                revert with 'NH{q', 50
            _6153 = mem[(6 * ceil32(return_data.size)) + 1152]
            mem[_4806 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_4806 + 228] = _5944
            mem[_4806 + 260] = _6153
            mem[_4806 + 292] = this.address
            mem[_4806 + 324] = 128
            _6698 = mem[_5704]
            mem[_4806 + 356] = mem[_5704]
            mem[_4806 + 388 len ceil32(_6698)] = mem[_5704 + 32 len ceil32(_6698)]
            if ceil32(_6698) > _6698:
                mem[_4806 + _6698 + 388] = 0
            require ext_code.size(0)
            call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _5944, _6153, address(this.address), 128, mem[_4806 + 356 len ceil32(_6698) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _3754 + _3496 < _3240:
                revert with 'NH{q', 17
            return _3240, _3754 + _3496, _3754 + _3496 - _3240
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 548] = 10^6
        mem[(2 * ceil32(return_data.size)) + 580] = 10^12
        mem[(2 * ceil32(return_data.size)) + 612] = 10^12
        require ext_code.size(address(arg3))
        staticcall address(arg3).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -101:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
            revert with 'NH{q', 17
        if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 548] = 10^6
        mem[(4 * ceil32(return_data.size)) + 580] = 10^12
        mem[(4 * ceil32(return_data.size)) + 612] = 10^12
        require ext_code.size(address(arg4))
        staticcall address(arg4).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -101:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
            revert with 'NH{q', 17
        if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 544] = 0
        if address(arg1) < address(arg2):
            mem[(6 * ceil32(return_data.size)) + 576] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 608] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 640] = 0
            mem[(6 * ceil32(return_data.size)) + 672] = 0
            mem[(6 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            if address(arg1) == address(arg1):
                mem[(6 * ceil32(return_data.size)) + 736] = 0
                mem[(6 * ceil32(return_data.size)) + 768] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 800] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 832] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 864] = 0
                mem[(6 * ceil32(return_data.size)) + 896] = 0
                mem[(6 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(6 * ceil32(return_data.size)) + 960] = 1
                mem[(6 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 996] = 0
                mem[(6 * ceil32(return_data.size)) + 1028] = 0
                mem[(6 * ceil32(return_data.size)) + 1060] = 0
                mem[(6 * ceil32(return_data.size)) + 1092] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 1124] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 1156] = 0
                mem[(6 * ceil32(return_data.size)) + 1188] = 0
                mem[(6 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(6 * ceil32(return_data.size)) + 1252] = 0
                mem[(6 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 1316] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 1348] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 1380] = 0
                mem[(6 * ceil32(return_data.size)) + 1412] = 0
                mem[(6 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(6 * ceil32(return_data.size)) + 1476] = 1
                require ext_code.size(stor0)
                staticcall stor0.0x21444fed with:
                        gas gas_remaining wei
                       args 0, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, address(ext_call.return_data[0]), address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _723 = mem[(6 * ceil32(return_data.size)) + 992 len 4], 0
                require mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                require return_data.size - mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                if not bool((7 * ceil32(return_data.size)) + 1088 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + 1088
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                mem[(7 * ceil32(return_data.size)) + 992] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                require mem[(6 * ceil32(return_data.size)) + _723 + 1024] == bool(mem[(6 * ceil32(return_data.size)) + _723 + 1024])
                mem[(7 * ceil32(return_data.size)) + 1024] = mem[(6 * ceil32(return_data.size)) + _723 + 1024]
                _1191 = mem[(6 * ceil32(return_data.size)) + _723 + 1056]
                require mem[(6 * ceil32(return_data.size)) + _723 + 1056] <= test266151307()
                require (6 * ceil32(return_data.size)) + _723 + mem[(6 * ceil32(return_data.size)) + _723 + 1056] + 1023 < (6 * ceil32(return_data.size)) + return_data.size + 992
                _1211 = mem[(6 * ceil32(return_data.size)) + _723 + mem[(6 * ceil32(return_data.size)) + _723 + 1056] + 992]
                if mem[(6 * ceil32(return_data.size)) + _723 + mem[(6 * ceil32(return_data.size)) + _723 + 1056] + 992] > test266151307():
                    revert with 'NH{q', 65
                if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _723 + mem[(6 * ceil32(return_data.size)) + _723 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + _723 + mem[(6 * ceil32(return_data.size)) + _723 + 1056] + 992]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _723 + mem[(6 * ceil32(return_data.size)) + _723 + 1056] + 992]) + 1089
                mem[(7 * ceil32(return_data.size)) + 1088] = _1211
                require _723 + _1191 + (32 * _1211) + 32 <= return_data.size
                idx = 0
                s = (6 * ceil32(return_data.size)) + _723 + _1191 + 1024
                t = (7 * ceil32(return_data.size)) + 1120
                while idx < _1211:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 1056] = (7 * ceil32(return_data.size)) + 1088
                if not mem[(7 * ceil32(return_data.size)) + 1024]:
                    revert with 0, 'S3'
                _3243 = mem[(7 * ceil32(return_data.size)) + 992]
                if 3 >= _1211:
                    revert with 'NH{q', 50
                _3499 = mem[(7 * ceil32(return_data.size)) + 1216]
                if 2 >= _1211:
                    revert with 'NH{q', 50
                _3755 = mem[(7 * ceil32(return_data.size)) + 1184]
                if mem[(7 * ceil32(return_data.size)) + 1184] > -mem[(7 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                if 2 >= _1211:
                    revert with 'NH{q', 50
                _4591 = mem[(7 * ceil32(return_data.size)) + 1184]
                if 3 >= _1211:
                    revert with 'NH{q', 50
                _4807 = mem[(7 * ceil32(return_data.size)) + 1216]
                _4808 = mem[64]
                mem[mem[64] + 32] = uint64(arg1) << 96
                mem[mem[64] + 64] = address(arg2)
                mem[mem[64] + 96] = address(ext_call.return_data[0])
                mem[mem[64] + 128] = _3243
                mem[mem[64] + 160] = _4591
                mem[mem[64] + 192] = _4807
                _5707 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _1211:
                    revert with 'NH{q', 50
                _5947 = mem[(7 * ceil32(return_data.size)) + 1120]
                if 1 >= _1211:
                    revert with 'NH{q', 50
                _6155 = mem[(7 * ceil32(return_data.size)) + 1152]
                mem[_4808 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_4808 + 228] = _5947
                mem[_4808 + 260] = _6155
                mem[_4808 + 292] = this.address
                mem[_4808 + 324] = 128
                _6699 = mem[_5707]
                mem[_4808 + 356] = mem[_5707]
                mem[_4808 + 388 len ceil32(_6699)] = mem[_5707 + 32 len ceil32(_6699)]
                if ceil32(_6699) > _6699:
                    mem[_4808 + _6699 + 388] = 0
                require ext_code.size(0)
                call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _5947, _6155, address(this.address), 128, mem[_4808 + 356 len ceil32(_6699) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _3755 + _3499 < _3243:
                    revert with 'NH{q', 17
                return _3243, _3755 + _3499, _3755 + _3499 - _3243
            mem[(6 * ceil32(return_data.size)) + 736] = 1
            mem[(6 * ceil32(return_data.size)) + 768] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 800] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 832] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 864] = 0
            mem[(6 * ceil32(return_data.size)) + 896] = 0
            mem[(6 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 960] = 0
            mem[(6 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 996] = 0
            mem[(6 * ceil32(return_data.size)) + 1028] = 0
            mem[(6 * ceil32(return_data.size)) + 1060] = 0
            mem[(6 * ceil32(return_data.size)) + 1092] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 1124] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 1156] = 0
            mem[(6 * ceil32(return_data.size)) + 1188] = 0
            mem[(6 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 1252] = 1
            mem[(6 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 1316] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 1348] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 1380] = 0
            mem[(6 * ceil32(return_data.size)) + 1412] = 0
            mem[(6 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 1476] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, address(ext_call.return_data[0]), address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _724 = mem[(6 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((7 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + 1088
            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(7 * ceil32(return_data.size)) + 992] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(6 * ceil32(return_data.size)) + _724 + 1024] == bool(mem[(6 * ceil32(return_data.size)) + _724 + 1024])
            mem[(7 * ceil32(return_data.size)) + 1024] = mem[(6 * ceil32(return_data.size)) + _724 + 1024]
            _1192 = mem[(6 * ceil32(return_data.size)) + _724 + 1056]
            require mem[(6 * ceil32(return_data.size)) + _724 + 1056] <= test266151307()
            require (6 * ceil32(return_data.size)) + _724 + mem[(6 * ceil32(return_data.size)) + _724 + 1056] + 1023 < (6 * ceil32(return_data.size)) + return_data.size + 992
            _1212 = mem[(6 * ceil32(return_data.size)) + _724 + mem[(6 * ceil32(return_data.size)) + _724 + 1056] + 992]
            if mem[(6 * ceil32(return_data.size)) + _724 + mem[(6 * ceil32(return_data.size)) + _724 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _724 + mem[(6 * ceil32(return_data.size)) + _724 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + _724 + mem[(6 * ceil32(return_data.size)) + _724 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _724 + mem[(6 * ceil32(return_data.size)) + _724 + 1056] + 992]) + 1089
            mem[(7 * ceil32(return_data.size)) + 1088] = _1212
            require _724 + _1192 + (32 * _1212) + 32 <= return_data.size
            idx = 0
            s = (6 * ceil32(return_data.size)) + _724 + _1192 + 1024
            t = (7 * ceil32(return_data.size)) + 1120
            while idx < _1212:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 1056] = (7 * ceil32(return_data.size)) + 1088
            if not mem[(7 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            _3264 = mem[(7 * ceil32(return_data.size)) + 992]
            if 3 >= _1212:
                revert with 'NH{q', 50
            _3520 = mem[(7 * ceil32(return_data.size)) + 1216]
            if 2 >= _1212:
                revert with 'NH{q', 50
            _3762 = mem[(7 * ceil32(return_data.size)) + 1184]
            if mem[(7 * ceil32(return_data.size)) + 1184] > -mem[(7 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            if 2 >= _1212:
                revert with 'NH{q', 50
            _4612 = mem[(7 * ceil32(return_data.size)) + 1184]
            if 3 >= _1212:
                revert with 'NH{q', 50
            _4821 = mem[(7 * ceil32(return_data.size)) + 1216]
            _4822 = mem[64]
            mem[mem[64] + 32] = uint64(arg2) << 96
            mem[mem[64] + 64] = address(arg1)
            mem[mem[64] + 96] = address(ext_call.return_data[0])
            mem[mem[64] + 128] = _3264
            mem[mem[64] + 160] = _4612
            mem[mem[64] + 192] = _4821
            _5728 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _1212:
                revert with 'NH{q', 50
            _5968 = mem[(7 * ceil32(return_data.size)) + 1120]
            if 1 >= _1212:
                revert with 'NH{q', 50
            _6169 = mem[(7 * ceil32(return_data.size)) + 1152]
            mem[_4822 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_4822 + 228] = _5968
            mem[_4822 + 260] = _6169
            mem[_4822 + 292] = this.address
            mem[_4822 + 324] = 128
            _6706 = mem[_5728]
            mem[_4822 + 356] = mem[_5728]
            mem[_4822 + 388 len ceil32(_6706)] = mem[_5728 + 32 len ceil32(_6706)]
            if ceil32(_6706) > _6706:
                mem[_4822 + _6706 + 388] = 0
            require ext_code.size(0)
            call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _5968, _6169, address(this.address), 128, mem[_4822 + 356 len ceil32(_6706) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _3762 + _3520 < _3264:
                revert with 'NH{q', 17
            return _3264, _3762 + _3520, _3762 + _3520 - _3264
        mem[(6 * ceil32(return_data.size)) + 576] = address(arg2)
        mem[(6 * ceil32(return_data.size)) + 608] = address(arg1)
        mem[(6 * ceil32(return_data.size)) + 640] = 0
        mem[(6 * ceil32(return_data.size)) + 672] = 0
        mem[(6 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        if address(arg2) == address(arg1):
            mem[(6 * ceil32(return_data.size)) + 736] = 0
            mem[(6 * ceil32(return_data.size)) + 768] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 800] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 832] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 864] = 0
            mem[(6 * ceil32(return_data.size)) + 896] = 0
            mem[(6 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 960] = 1
            mem[(6 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 996] = 0
            mem[(6 * ceil32(return_data.size)) + 1028] = 0
            mem[(6 * ceil32(return_data.size)) + 1060] = 0
            mem[(6 * ceil32(return_data.size)) + 1092] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 1124] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 1156] = 0
            mem[(6 * ceil32(return_data.size)) + 1188] = 0
            mem[(6 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 1252] = 0
            mem[(6 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 1316] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 1348] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 1380] = 0
            mem[(6 * ceil32(return_data.size)) + 1412] = 0
            mem[(6 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 1476] = 1
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, address(ext_call.return_data[0]), address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _725 = mem[(6 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((7 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + 1088
            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(7 * ceil32(return_data.size)) + 992] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(6 * ceil32(return_data.size)) + _725 + 1024] == bool(mem[(6 * ceil32(return_data.size)) + _725 + 1024])
            mem[(7 * ceil32(return_data.size)) + 1024] = mem[(6 * ceil32(return_data.size)) + _725 + 1024]
            _1193 = mem[(6 * ceil32(return_data.size)) + _725 + 1056]
            require mem[(6 * ceil32(return_data.size)) + _725 + 1056] <= test266151307()
            require (6 * ceil32(return_data.size)) + _725 + mem[(6 * ceil32(return_data.size)) + _725 + 1056] + 1023 < (6 * ceil32(return_data.size)) + return_data.size + 992
            _1213 = mem[(6 * ceil32(return_data.size)) + _725 + mem[(6 * ceil32(return_data.size)) + _725 + 1056] + 992]
            if mem[(6 * ceil32(return_data.size)) + _725 + mem[(6 * ceil32(return_data.size)) + _725 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _725 + mem[(6 * ceil32(return_data.size)) + _725 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + _725 + mem[(6 * ceil32(return_data.size)) + _725 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _725 + mem[(6 * ceil32(return_data.size)) + _725 + 1056] + 992]) + 1089
            mem[(7 * ceil32(return_data.size)) + 1088] = _1213
            require _725 + _1193 + (32 * _1213) + 32 <= return_data.size
            idx = 0
            s = (6 * ceil32(return_data.size)) + _725 + _1193 + 1024
            t = (7 * ceil32(return_data.size)) + 1120
            while idx < _1213:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 1056] = (7 * ceil32(return_data.size)) + 1088
            if not mem[(7 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            _3267 = mem[(7 * ceil32(return_data.size)) + 992]
            if 3 >= _1213:
                revert with 'NH{q', 50
            _3523 = mem[(7 * ceil32(return_data.size)) + 1216]
            if 2 >= _1213:
                revert with 'NH{q', 50
            _3763 = mem[(7 * ceil32(return_data.size)) + 1184]
            if mem[(7 * ceil32(return_data.size)) + 1184] > -mem[(7 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            if 2 >= _1213:
                revert with 'NH{q', 50
            _4615 = mem[(7 * ceil32(return_data.size)) + 1184]
            if 3 >= _1213:
                revert with 'NH{q', 50
            _4823 = mem[(7 * ceil32(return_data.size)) + 1216]
            _4824 = mem[64]
            mem[mem[64] + 32] = uint64(arg2) << 96
            mem[mem[64] + 64] = address(arg1)
            mem[mem[64] + 96] = address(ext_call.return_data[0])
            mem[mem[64] + 128] = _3267
            mem[mem[64] + 160] = _4615
            mem[mem[64] + 192] = _4823
            _5731 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _1213:
                revert with 'NH{q', 50
            _5971 = mem[(7 * ceil32(return_data.size)) + 1120]
            if 1 >= _1213:
                revert with 'NH{q', 50
            _6171 = mem[(7 * ceil32(return_data.size)) + 1152]
            mem[_4824 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_4824 + 228] = _5971
            mem[_4824 + 260] = _6171
            mem[_4824 + 292] = this.address
            mem[_4824 + 324] = 128
            _6707 = mem[_5731]
            mem[_4824 + 356] = mem[_5731]
            mem[_4824 + 388 len ceil32(_6707)] = mem[_5731 + 32 len ceil32(_6707)]
            if ceil32(_6707) > _6707:
                mem[_4824 + _6707 + 388] = 0
            require ext_code.size(0)
            call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _5971, _6171, address(this.address), 128, mem[_4824 + 356 len ceil32(_6707) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _3763 + _3523 < _3267:
                revert with 'NH{q', 17
            return _3267, _3763 + _3523, _3763 + _3523 - _3267
        mem[(6 * ceil32(return_data.size)) + 736] = 1
        mem[(6 * ceil32(return_data.size)) + 768] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 800] = address(arg2)
        mem[(6 * ceil32(return_data.size)) + 832] = address(arg1)
        mem[(6 * ceil32(return_data.size)) + 864] = 0
        mem[(6 * ceil32(return_data.size)) + 896] = 0
        mem[(6 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(6 * ceil32(return_data.size)) + 960] = 0
        mem[(6 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 996] = 0
        mem[(6 * ceil32(return_data.size)) + 1028] = 0
        mem[(6 * ceil32(return_data.size)) + 1060] = 0
        mem[(6 * ceil32(return_data.size)) + 1092] = address(arg2)
        mem[(6 * ceil32(return_data.size)) + 1124] = address(arg1)
        mem[(6 * ceil32(return_data.size)) + 1156] = 0
        mem[(6 * ceil32(return_data.size)) + 1188] = 0
        mem[(6 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(6 * ceil32(return_data.size)) + 1252] = 1
        mem[(6 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 1316] = address(arg2)
        mem[(6 * ceil32(return_data.size)) + 1348] = address(arg1)
        mem[(6 * ceil32(return_data.size)) + 1380] = 0
        mem[(6 * ceil32(return_data.size)) + 1412] = 0
        mem[(6 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(6 * ceil32(return_data.size)) + 1476] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x21444fed with:
                gas gas_remaining wei
               args 0, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, address(ext_call.return_data[0]), address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _726 = mem[(6 * ceil32(return_data.size)) + 992 len 4], 0
        require mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
        require return_data.size - mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
        if not bool((7 * ceil32(return_data.size)) + 1088 <= test266151307()):
            revert with 'NH{q', 65
        mem[64] = (7 * ceil32(return_data.size)) + 1088
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
        mem[(7 * ceil32(return_data.size)) + 992] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
        require mem[(6 * ceil32(return_data.size)) + _726 + 1024] == bool(mem[(6 * ceil32(return_data.size)) + _726 + 1024])
        mem[(7 * ceil32(return_data.size)) + 1024] = mem[(6 * ceil32(return_data.size)) + _726 + 1024]
        _1194 = mem[(6 * ceil32(return_data.size)) + _726 + 1056]
        require mem[(6 * ceil32(return_data.size)) + _726 + 1056] <= test266151307()
        require (6 * ceil32(return_data.size)) + _726 + mem[(6 * ceil32(return_data.size)) + _726 + 1056] + 1023 < (6 * ceil32(return_data.size)) + return_data.size + 992
        _1214 = mem[(6 * ceil32(return_data.size)) + _726 + mem[(6 * ceil32(return_data.size)) + _726 + 1056] + 992]
        if mem[(6 * ceil32(return_data.size)) + _726 + mem[(6 * ceil32(return_data.size)) + _726 + 1056] + 992] > test266151307():
            revert with 'NH{q', 65
        if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _726 + mem[(6 * ceil32(return_data.size)) + _726 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + _726 + mem[(6 * ceil32(return_data.size)) + _726 + 1056] + 992]) + 97 < 96:
            revert with 'NH{q', 65
        mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _726 + mem[(6 * ceil32(return_data.size)) + _726 + 1056] + 992]) + 1089
        mem[(7 * ceil32(return_data.size)) + 1088] = _1214
        require _726 + _1194 + (32 * _1214) + 32 <= return_data.size
        idx = 0
        s = (6 * ceil32(return_data.size)) + _726 + _1194 + 1024
        t = (7 * ceil32(return_data.size)) + 1120
        while idx < _1214:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 1056] = (7 * ceil32(return_data.size)) + 1088
        if not mem[(7 * ceil32(return_data.size)) + 1024]:
            revert with 0, 'S3'
        _3288 = mem[(7 * ceil32(return_data.size)) + 992]
        if 3 >= _1214:
            revert with 'NH{q', 50
        _3544 = mem[(7 * ceil32(return_data.size)) + 1216]
        if 2 >= _1214:
            revert with 'NH{q', 50
        _3770 = mem[(7 * ceil32(return_data.size)) + 1184]
        if mem[(7 * ceil32(return_data.size)) + 1184] > -mem[(7 * ceil32(return_data.size)) + 1216] - 1:
            revert with 'NH{q', 17
        if 2 >= _1214:
            revert with 'NH{q', 50
        _4636 = mem[(7 * ceil32(return_data.size)) + 1184]
        if 3 >= _1214:
            revert with 'NH{q', 50
        _4837 = mem[(7 * ceil32(return_data.size)) + 1216]
        _4838 = mem[64]
        mem[mem[64] + 32] = uint64(arg1) << 96
        mem[mem[64] + 64] = address(arg2)
        mem[mem[64] + 96] = address(ext_call.return_data[0])
        mem[mem[64] + 128] = _3288
        mem[mem[64] + 160] = _4636
        mem[mem[64] + 192] = _4837
        _5752 = mem[64]
        mem[mem[64]] = 192
        mem[64] = mem[64] + 224
        if 0 >= _1214:
            revert with 'NH{q', 50
        _5992 = mem[(7 * ceil32(return_data.size)) + 1120]
        if 1 >= _1214:
            revert with 'NH{q', 50
        _6185 = mem[(7 * ceil32(return_data.size)) + 1152]
        mem[_4838 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_4838 + 228] = _5992
        mem[_4838 + 260] = _6185
        mem[_4838 + 292] = this.address
        mem[_4838 + 324] = 128
        _6714 = mem[_5752]
        mem[_4838 + 356] = mem[_5752]
        mem[_4838 + 388 len ceil32(_6714)] = mem[_5752 + 32 len ceil32(_6714)]
        if ceil32(_6714) > _6714:
            mem[_4838 + _6714 + 388] = 0
        require ext_code.size(0)
        call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _5992, _6185, address(this.address), 128, mem[_4838 + 356 len ceil32(_6714) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _3770 + _3544 < _3288:
            revert with 'NH{q', 17
        return _3288, _3770 + _3544, _3770 + _3544 - _3288
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 548] = address(arg1)
    mem[ceil32(return_data.size) + 580] = address(arg2)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        require ext_code.size(address(arg4))
        staticcall address(arg4).factory() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            mem[ceil32(return_data.size) + 548] = 10^6
            mem[ceil32(return_data.size) + 580] = 10^12
            mem[ceil32(return_data.size) + 612] = 10^12
            require ext_code.size(address(arg3))
            staticcall address(arg3).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -101:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 548] = 10^6
            mem[(2 * ceil32(return_data.size)) + 580] = 10^12
            mem[(2 * ceil32(return_data.size)) + 612] = 10^12
            require ext_code.size(address(arg4))
            staticcall address(arg4).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -101:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 544] = 0
            if address(arg1) < address(arg2):
                mem[(4 * ceil32(return_data.size)) + 576] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 608] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 640] = 0
                mem[(4 * ceil32(return_data.size)) + 672] = 0
                mem[(4 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                if address(arg1) == address(arg1):
                    mem[(4 * ceil32(return_data.size)) + 736] = 0
                    mem[(4 * ceil32(return_data.size)) + 768] = 0
                    mem[(4 * ceil32(return_data.size)) + 800] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 832] = address(arg2)
                    mem[(4 * ceil32(return_data.size)) + 864] = 0
                    mem[(4 * ceil32(return_data.size)) + 896] = 0
                    mem[(4 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    mem[(4 * ceil32(return_data.size)) + 960] = 1
                    mem[(4 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 996] = 0
                    mem[(4 * ceil32(return_data.size)) + 1028] = 0
                    mem[(4 * ceil32(return_data.size)) + 1060] = 0
                    mem[(4 * ceil32(return_data.size)) + 1092] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 1124] = address(arg2)
                    mem[(4 * ceil32(return_data.size)) + 1156] = 0
                    mem[(4 * ceil32(return_data.size)) + 1188] = 0
                    mem[(4 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    mem[(4 * ceil32(return_data.size)) + 1252] = 0
                    mem[(4 * ceil32(return_data.size)) + 1284] = 0
                    mem[(4 * ceil32(return_data.size)) + 1316] = address(arg1)
                    mem[(4 * ceil32(return_data.size)) + 1348] = address(arg2)
                    mem[(4 * ceil32(return_data.size)) + 1380] = 0
                    mem[(4 * ceil32(return_data.size)) + 1412] = 0
                    mem[(4 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    mem[(4 * ceil32(return_data.size)) + 1476] = 1
                    require ext_code.size(stor0)
                    staticcall stor0.0x21444fed with:
                            gas gas_remaining wei
                           args 0, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _651 = mem[(4 * ceil32(return_data.size)) + 992 len 4], 0
                    require mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                    require return_data.size - mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                    if not bool((6 * ceil32(return_data.size)) + 1088 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + 1088
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                    mem[(6 * ceil32(return_data.size)) + 992] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                    require mem[(4 * ceil32(return_data.size)) + _651 + 1024] == bool(mem[(4 * ceil32(return_data.size)) + _651 + 1024])
                    mem[(6 * ceil32(return_data.size)) + 1024] = mem[(4 * ceil32(return_data.size)) + _651 + 1024]
                    _975 = mem[(4 * ceil32(return_data.size)) + _651 + 1056]
                    require mem[(4 * ceil32(return_data.size)) + _651 + 1056] <= test266151307()
                    require (4 * ceil32(return_data.size)) + _651 + mem[(4 * ceil32(return_data.size)) + _651 + 1056] + 1023 < (4 * ceil32(return_data.size)) + return_data.size + 992
                    _999 = mem[(4 * ceil32(return_data.size)) + _651 + mem[(4 * ceil32(return_data.size)) + _651 + 1056] + 992]
                    if mem[(4 * ceil32(return_data.size)) + _651 + mem[(4 * ceil32(return_data.size)) + _651 + 1056] + 992] > test266151307():
                        revert with 'NH{q', 65
                    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _651 + mem[(4 * ceil32(return_data.size)) + _651 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + _651 + mem[(4 * ceil32(return_data.size)) + _651 + 1056] + 992]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _651 + mem[(4 * ceil32(return_data.size)) + _651 + 1056] + 992]) + 1089
                    mem[(6 * ceil32(return_data.size)) + 1088] = _999
                    require _651 + _975 + (32 * _999) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _651 + _975 + 1024
                    t = (6 * ceil32(return_data.size)) + 1120
                    while idx < _999:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 1056] = (6 * ceil32(return_data.size)) + 1088
                    if not mem[(6 * ceil32(return_data.size)) + 1024]:
                        revert with 0, 'S3'
                    _3291 = mem[(6 * ceil32(return_data.size)) + 992]
                    if 3 >= _999:
                        revert with 'NH{q', 50
                    _3547 = mem[(6 * ceil32(return_data.size)) + 1216]
                    if 2 >= _999:
                        revert with 'NH{q', 50
                    _3771 = mem[(6 * ceil32(return_data.size)) + 1184]
                    if mem[(6 * ceil32(return_data.size)) + 1184] > -mem[(6 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    if 2 >= _999:
                        revert with 'NH{q', 50
                    _4639 = mem[(6 * ceil32(return_data.size)) + 1184]
                    if 3 >= _999:
                        revert with 'NH{q', 50
                    _4839 = mem[(6 * ceil32(return_data.size)) + 1216]
                    _4840 = mem[64]
                    mem[mem[64] + 32] = uint64(arg1) << 96
                    mem[mem[64] + 64] = address(arg2)
                    mem[mem[64] + 96] = 0
                    mem[mem[64] + 128] = _3291
                    mem[mem[64] + 160] = _4639
                    mem[mem[64] + 192] = _4839
                    _5755 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= _999:
                        revert with 'NH{q', 50
                    _5995 = mem[(6 * ceil32(return_data.size)) + 1120]
                    if 1 >= _999:
                        revert with 'NH{q', 50
                    _6187 = mem[(6 * ceil32(return_data.size)) + 1152]
                    mem[_4840 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4840 + 228] = _5995
                    mem[_4840 + 260] = _6187
                    mem[_4840 + 292] = this.address
                    mem[_4840 + 324] = 128
                    _6715 = mem[_5755]
                    mem[_4840 + 356] = mem[_5755]
                    mem[_4840 + 388 len ceil32(_6715)] = mem[_5755 + 32 len ceil32(_6715)]
                    if ceil32(_6715) > _6715:
                        mem[_4840 + _6715 + 388] = 0
                    require ext_code.size(0)
                    call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _5995, _6187, address(this.address), 128, mem[_4840 + 356 len ceil32(_6715) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _3771 + _3547 < _3291:
                        revert with 'NH{q', 17
                    return _3291, _3771 + _3547, _3771 + _3547 - _3291
                mem[(4 * ceil32(return_data.size)) + 736] = 1
                mem[(4 * ceil32(return_data.size)) + 768] = 0
                mem[(4 * ceil32(return_data.size)) + 800] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 832] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 864] = 0
                mem[(4 * ceil32(return_data.size)) + 896] = 0
                mem[(4 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(4 * ceil32(return_data.size)) + 960] = 0
                mem[(4 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 996] = 0
                mem[(4 * ceil32(return_data.size)) + 1028] = 0
                mem[(4 * ceil32(return_data.size)) + 1060] = 0
                mem[(4 * ceil32(return_data.size)) + 1092] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 1124] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 1156] = 0
                mem[(4 * ceil32(return_data.size)) + 1188] = 0
                mem[(4 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(4 * ceil32(return_data.size)) + 1252] = 1
                mem[(4 * ceil32(return_data.size)) + 1284] = 0
                mem[(4 * ceil32(return_data.size)) + 1316] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 1348] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 1380] = 0
                mem[(4 * ceil32(return_data.size)) + 1412] = 0
                mem[(4 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(4 * ceil32(return_data.size)) + 1476] = 0
                require ext_code.size(stor0)
                staticcall stor0.0x21444fed with:
                        gas gas_remaining wei
                       args 0, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _652 = mem[(4 * ceil32(return_data.size)) + 992 len 4], 0
                require mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                require return_data.size - mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                if not bool((6 * ceil32(return_data.size)) + 1088 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + 1088
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                mem[(6 * ceil32(return_data.size)) + 992] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                require mem[(4 * ceil32(return_data.size)) + _652 + 1024] == bool(mem[(4 * ceil32(return_data.size)) + _652 + 1024])
                mem[(6 * ceil32(return_data.size)) + 1024] = mem[(4 * ceil32(return_data.size)) + _652 + 1024]
                _976 = mem[(4 * ceil32(return_data.size)) + _652 + 1056]
                require mem[(4 * ceil32(return_data.size)) + _652 + 1056] <= test266151307()
                require (4 * ceil32(return_data.size)) + _652 + mem[(4 * ceil32(return_data.size)) + _652 + 1056] + 1023 < (4 * ceil32(return_data.size)) + return_data.size + 992
                _1000 = mem[(4 * ceil32(return_data.size)) + _652 + mem[(4 * ceil32(return_data.size)) + _652 + 1056] + 992]
                if mem[(4 * ceil32(return_data.size)) + _652 + mem[(4 * ceil32(return_data.size)) + _652 + 1056] + 992] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _652 + mem[(4 * ceil32(return_data.size)) + _652 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + _652 + mem[(4 * ceil32(return_data.size)) + _652 + 1056] + 992]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _652 + mem[(4 * ceil32(return_data.size)) + _652 + 1056] + 992]) + 1089
                mem[(6 * ceil32(return_data.size)) + 1088] = _1000
                require _652 + _976 + (32 * _1000) + 32 <= return_data.size
                idx = 0
                s = (4 * ceil32(return_data.size)) + _652 + _976 + 1024
                t = (6 * ceil32(return_data.size)) + 1120
                while idx < _1000:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 1056] = (6 * ceil32(return_data.size)) + 1088
                if not mem[(6 * ceil32(return_data.size)) + 1024]:
                    revert with 0, 'S3'
                _3312 = mem[(6 * ceil32(return_data.size)) + 992]
                if 3 >= _1000:
                    revert with 'NH{q', 50
                _3568 = mem[(6 * ceil32(return_data.size)) + 1216]
                if 2 >= _1000:
                    revert with 'NH{q', 50
                _3778 = mem[(6 * ceil32(return_data.size)) + 1184]
                if mem[(6 * ceil32(return_data.size)) + 1184] > -mem[(6 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                if 2 >= _1000:
                    revert with 'NH{q', 50
                _4660 = mem[(6 * ceil32(return_data.size)) + 1184]
                if 3 >= _1000:
                    revert with 'NH{q', 50
                _4853 = mem[(6 * ceil32(return_data.size)) + 1216]
                _4854 = mem[64]
                mem[mem[64] + 32] = uint64(arg2) << 96
                mem[mem[64] + 64] = address(arg1)
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = _3312
                mem[mem[64] + 160] = _4660
                mem[mem[64] + 192] = _4853
                _5776 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _1000:
                    revert with 'NH{q', 50
                _6016 = mem[(6 * ceil32(return_data.size)) + 1120]
                if 1 >= _1000:
                    revert with 'NH{q', 50
                _6201 = mem[(6 * ceil32(return_data.size)) + 1152]
                mem[_4854 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_4854 + 228] = _6016
                mem[_4854 + 260] = _6201
                mem[_4854 + 292] = this.address
                mem[_4854 + 324] = 128
                _6722 = mem[_5776]
                mem[_4854 + 356] = mem[_5776]
                mem[_4854 + 388 len ceil32(_6722)] = mem[_5776 + 32 len ceil32(_6722)]
                if ceil32(_6722) > _6722:
                    mem[_4854 + _6722 + 388] = 0
                require ext_code.size(0)
                call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _6016, _6201, address(this.address), 128, mem[_4854 + 356 len ceil32(_6722) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _3778 + _3568 < _3312:
                    revert with 'NH{q', 17
                return _3312, _3778 + _3568, _3778 + _3568 - _3312
            mem[(4 * ceil32(return_data.size)) + 576] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 608] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 640] = 0
            mem[(4 * ceil32(return_data.size)) + 672] = 0
            mem[(4 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            if address(arg2) == address(arg1):
                mem[(4 * ceil32(return_data.size)) + 736] = 0
                mem[(4 * ceil32(return_data.size)) + 768] = 0
                mem[(4 * ceil32(return_data.size)) + 800] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 832] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 864] = 0
                mem[(4 * ceil32(return_data.size)) + 896] = 0
                mem[(4 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(4 * ceil32(return_data.size)) + 960] = 1
                mem[(4 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 996] = 0
                mem[(4 * ceil32(return_data.size)) + 1028] = 0
                mem[(4 * ceil32(return_data.size)) + 1060] = 0
                mem[(4 * ceil32(return_data.size)) + 1092] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 1124] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 1156] = 0
                mem[(4 * ceil32(return_data.size)) + 1188] = 0
                mem[(4 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(4 * ceil32(return_data.size)) + 1252] = 0
                mem[(4 * ceil32(return_data.size)) + 1284] = 0
                mem[(4 * ceil32(return_data.size)) + 1316] = address(arg2)
                mem[(4 * ceil32(return_data.size)) + 1348] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 1380] = 0
                mem[(4 * ceil32(return_data.size)) + 1412] = 0
                mem[(4 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(4 * ceil32(return_data.size)) + 1476] = 1
                require ext_code.size(stor0)
                staticcall stor0.0x21444fed with:
                        gas gas_remaining wei
                       args 0, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _653 = mem[(4 * ceil32(return_data.size)) + 992 len 4], 0
                require mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                require return_data.size - mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                if not bool((6 * ceil32(return_data.size)) + 1088 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + 1088
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                mem[(6 * ceil32(return_data.size)) + 992] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                require mem[(4 * ceil32(return_data.size)) + _653 + 1024] == bool(mem[(4 * ceil32(return_data.size)) + _653 + 1024])
                mem[(6 * ceil32(return_data.size)) + 1024] = mem[(4 * ceil32(return_data.size)) + _653 + 1024]
                _977 = mem[(4 * ceil32(return_data.size)) + _653 + 1056]
                require mem[(4 * ceil32(return_data.size)) + _653 + 1056] <= test266151307()
                require (4 * ceil32(return_data.size)) + _653 + mem[(4 * ceil32(return_data.size)) + _653 + 1056] + 1023 < (4 * ceil32(return_data.size)) + return_data.size + 992
                _1001 = mem[(4 * ceil32(return_data.size)) + _653 + mem[(4 * ceil32(return_data.size)) + _653 + 1056] + 992]
                if mem[(4 * ceil32(return_data.size)) + _653 + mem[(4 * ceil32(return_data.size)) + _653 + 1056] + 992] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _653 + mem[(4 * ceil32(return_data.size)) + _653 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + _653 + mem[(4 * ceil32(return_data.size)) + _653 + 1056] + 992]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _653 + mem[(4 * ceil32(return_data.size)) + _653 + 1056] + 992]) + 1089
                mem[(6 * ceil32(return_data.size)) + 1088] = mem[(4 * ceil32(return_data.size)) + _653 + mem[(4 * ceil32(return_data.size)) + _653 + 1056] + 992]
                require _653 + _977 + (32 * _1001) + 32 <= return_data.size
                idx = 0
                s = (4 * ceil32(return_data.size)) + _653 + _977 + 1024
                t = (6 * ceil32(return_data.size)) + 1120
                while idx < _1001:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 1056] = (6 * ceil32(return_data.size)) + 1088
                if not mem[(6 * ceil32(return_data.size)) + 1024]:
                    revert with 0, 'S3'
                _3315 = mem[(6 * ceil32(return_data.size)) + 992]
                if 3 >= mem[(6 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _3571 = mem[(6 * ceil32(return_data.size)) + 1216]
                if 2 >= mem[(6 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _3779 = mem[(6 * ceil32(return_data.size)) + 1184]
                if mem[(6 * ceil32(return_data.size)) + 1184] > -mem[(6 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                if 2 >= mem[(6 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _4663 = mem[(6 * ceil32(return_data.size)) + 1184]
                if 3 >= mem[(6 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _4855 = mem[(6 * ceil32(return_data.size)) + 1216]
                _4856 = mem[64]
                mem[mem[64] + 32] = uint64(arg2) << 96
                mem[mem[64] + 64] = address(arg1)
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = _3315
                mem[mem[64] + 160] = _4663
                mem[mem[64] + 192] = _4855
                _5779 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= mem[(6 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _6019 = mem[(6 * ceil32(return_data.size)) + 1120]
                if 1 >= mem[(6 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _6203 = mem[(6 * ceil32(return_data.size)) + 1152]
                mem[_4856 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_4856 + 228] = _6019
                mem[_4856 + 260] = _6203
                mem[_4856 + 292] = this.address
                mem[_4856 + 324] = 128
                _6723 = mem[_5779]
                mem[_4856 + 356] = mem[_5779]
                mem[_4856 + 388 len ceil32(_6723)] = mem[_5779 + 32 len ceil32(_6723)]
                if ceil32(_6723) > _6723:
                    mem[_4856 + _6723 + 388] = 0
                require ext_code.size(0)
                call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _6019, _6203, address(this.address), 128, mem[_4856 + 356 len ceil32(_6723) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _3779 + _3571 < _3315:
                    revert with 'NH{q', 17
                return _3315, _3779 + _3571, _3779 + _3571 - _3315
            mem[(4 * ceil32(return_data.size)) + 736] = 1
            mem[(4 * ceil32(return_data.size)) + 768] = 0
            mem[(4 * ceil32(return_data.size)) + 800] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 832] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 864] = 0
            mem[(4 * ceil32(return_data.size)) + 896] = 0
            mem[(4 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(4 * ceil32(return_data.size)) + 960] = 0
            mem[(4 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 996] = 0
            mem[(4 * ceil32(return_data.size)) + 1028] = 0
            mem[(4 * ceil32(return_data.size)) + 1060] = 0
            mem[(4 * ceil32(return_data.size)) + 1092] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 1124] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 1156] = 0
            mem[(4 * ceil32(return_data.size)) + 1188] = 0
            mem[(4 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(4 * ceil32(return_data.size)) + 1252] = 1
            mem[(4 * ceil32(return_data.size)) + 1284] = 0
            mem[(4 * ceil32(return_data.size)) + 1316] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 1348] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 1380] = 0
            mem[(4 * ceil32(return_data.size)) + 1412] = 0
            mem[(4 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(4 * ceil32(return_data.size)) + 1476] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _654 = mem[(4 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((6 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (6 * ceil32(return_data.size)) + 1088
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(6 * ceil32(return_data.size)) + 992] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(4 * ceil32(return_data.size)) + _654 + 1024] == bool(mem[(4 * ceil32(return_data.size)) + _654 + 1024])
            mem[(6 * ceil32(return_data.size)) + 1024] = mem[(4 * ceil32(return_data.size)) + _654 + 1024]
            _978 = mem[(4 * ceil32(return_data.size)) + _654 + 1056]
            require mem[(4 * ceil32(return_data.size)) + _654 + 1056] <= test266151307()
            require (4 * ceil32(return_data.size)) + _654 + mem[(4 * ceil32(return_data.size)) + _654 + 1056] + 1023 < (4 * ceil32(return_data.size)) + return_data.size + 992
            _1002 = mem[(4 * ceil32(return_data.size)) + _654 + mem[(4 * ceil32(return_data.size)) + _654 + 1056] + 992]
            if mem[(4 * ceil32(return_data.size)) + _654 + mem[(4 * ceil32(return_data.size)) + _654 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _654 + mem[(4 * ceil32(return_data.size)) + _654 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + _654 + mem[(4 * ceil32(return_data.size)) + _654 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + _654 + mem[(4 * ceil32(return_data.size)) + _654 + 1056] + 992]) + 1089
            mem[(6 * ceil32(return_data.size)) + 1088] = _1002
            require _654 + _978 + (32 * _1002) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _654 + _978 + 1024
            t = (6 * ceil32(return_data.size)) + 1120
            while idx < _1002:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 1056] = (6 * ceil32(return_data.size)) + 1088
            if not mem[(6 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            _3336 = mem[(6 * ceil32(return_data.size)) + 992]
            if 3 >= _1002:
                revert with 'NH{q', 50
            _3592 = mem[(6 * ceil32(return_data.size)) + 1216]
            if 2 >= _1002:
                revert with 'NH{q', 50
            _3786 = mem[(6 * ceil32(return_data.size)) + 1184]
            if mem[(6 * ceil32(return_data.size)) + 1184] > -mem[(6 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            if 2 >= _1002:
                revert with 'NH{q', 50
            _4684 = mem[(6 * ceil32(return_data.size)) + 1184]
            if 3 >= _1002:
                revert with 'NH{q', 50
            _4869 = mem[(6 * ceil32(return_data.size)) + 1216]
            _4870 = mem[64]
            mem[mem[64] + 32] = uint64(arg1) << 96
            mem[mem[64] + 64] = address(arg2)
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = _3336
            mem[mem[64] + 160] = _4684
            mem[mem[64] + 192] = _4869
            _5800 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _1002:
                revert with 'NH{q', 50
            _6040 = mem[(6 * ceil32(return_data.size)) + 1120]
            if 1 >= _1002:
                revert with 'NH{q', 50
            _6217 = mem[(6 * ceil32(return_data.size)) + 1152]
            mem[_4870 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_4870 + 228] = _6040
            mem[_4870 + 260] = _6217
            mem[_4870 + 292] = this.address
            mem[_4870 + 324] = 128
            _6730 = mem[_5800]
            mem[_4870 + 356] = mem[_5800]
            mem[_4870 + 388 len ceil32(_6730)] = mem[_5800 + 32 len ceil32(_6730)]
            if ceil32(_6730) > _6730:
                mem[_4870 + _6730 + 388] = 0
            require ext_code.size(0)
            call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _6040, _6217, address(this.address), 128, mem[_4870 + 356 len ceil32(_6730) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _3786 + _3592 < _3336:
                revert with 'NH{q', 17
            return _3336, _3786 + _3592, _3786 + _3592 - _3336
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 548] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 580] = address(arg2)
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), address(arg2)
        mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            mem[(2 * ceil32(return_data.size)) + 548] = 10^6
            mem[(2 * ceil32(return_data.size)) + 580] = 10^12
            mem[(2 * ceil32(return_data.size)) + 612] = 10^12
            require ext_code.size(address(arg3))
            staticcall address(arg3).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -101:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 548] = 10^6
            mem[(4 * ceil32(return_data.size)) + 580] = 10^12
            mem[(4 * ceil32(return_data.size)) + 612] = 10^12
            require ext_code.size(address(arg4))
            staticcall address(arg4).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > -101:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
                revert with 'NH{q', 17
            mem[(6 * ceil32(return_data.size)) + 544] = 0
            if address(arg1) < address(arg2):
                mem[(6 * ceil32(return_data.size)) + 576] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 608] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 640] = 0
                mem[(6 * ceil32(return_data.size)) + 672] = 0
                mem[(6 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                if address(arg1) == address(arg1):
                    mem[(6 * ceil32(return_data.size)) + 736] = 0
                    mem[(6 * ceil32(return_data.size)) + 768] = 0
                    mem[(6 * ceil32(return_data.size)) + 800] = address(arg1)
                    mem[(6 * ceil32(return_data.size)) + 832] = address(arg2)
                    mem[(6 * ceil32(return_data.size)) + 864] = 0
                    mem[(6 * ceil32(return_data.size)) + 896] = 0
                    mem[(6 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    mem[(6 * ceil32(return_data.size)) + 960] = 1
                    mem[(6 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 996] = 0
                    mem[(6 * ceil32(return_data.size)) + 1028] = 0
                    mem[(6 * ceil32(return_data.size)) + 1060] = 0
                    mem[(6 * ceil32(return_data.size)) + 1092] = address(arg1)
                    mem[(6 * ceil32(return_data.size)) + 1124] = address(arg2)
                    mem[(6 * ceil32(return_data.size)) + 1156] = 0
                    mem[(6 * ceil32(return_data.size)) + 1188] = 0
                    mem[(6 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    mem[(6 * ceil32(return_data.size)) + 1252] = 0
                    mem[(6 * ceil32(return_data.size)) + 1284] = 0
                    mem[(6 * ceil32(return_data.size)) + 1316] = address(arg1)
                    mem[(6 * ceil32(return_data.size)) + 1348] = address(arg2)
                    mem[(6 * ceil32(return_data.size)) + 1380] = 0
                    mem[(6 * ceil32(return_data.size)) + 1412] = 0
                    mem[(6 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    mem[(6 * ceil32(return_data.size)) + 1476] = 1
                    require ext_code.size(stor0)
                    staticcall stor0.0x21444fed with:
                            gas gas_remaining wei
                           args 0, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1011 = mem[(6 * ceil32(return_data.size)) + 992 len 4], 0
                    require mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                    require return_data.size - mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                    if not bool((7 * ceil32(return_data.size)) + 1088 <= test266151307()):
                        revert with 'NH{q', 65
                    mem[64] = (7 * ceil32(return_data.size)) + 1088
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                    mem[(7 * ceil32(return_data.size)) + 992] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                    require mem[(6 * ceil32(return_data.size)) + _1011 + 1024] == bool(mem[(6 * ceil32(return_data.size)) + _1011 + 1024])
                    mem[(7 * ceil32(return_data.size)) + 1024] = mem[(6 * ceil32(return_data.size)) + _1011 + 1024]
                    _1607 = mem[(6 * ceil32(return_data.size)) + _1011 + 1056]
                    require mem[(6 * ceil32(return_data.size)) + _1011 + 1056] <= test266151307()
                    require (6 * ceil32(return_data.size)) + _1011 + mem[(6 * ceil32(return_data.size)) + _1011 + 1056] + 1023 < (6 * ceil32(return_data.size)) + return_data.size + 992
                    _1631 = mem[(6 * ceil32(return_data.size)) + _1011 + mem[(6 * ceil32(return_data.size)) + _1011 + 1056] + 992]
                    if mem[(6 * ceil32(return_data.size)) + _1011 + mem[(6 * ceil32(return_data.size)) + _1011 + 1056] + 992] > test266151307():
                        revert with 'NH{q', 65
                    if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _1011 + mem[(6 * ceil32(return_data.size)) + _1011 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + _1011 + mem[(6 * ceil32(return_data.size)) + _1011 + 1056] + 992]) + 97 < 96:
                        revert with 'NH{q', 65
                    mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _1011 + mem[(6 * ceil32(return_data.size)) + _1011 + 1056] + 992]) + 1089
                    mem[(7 * ceil32(return_data.size)) + 1088] = _1631
                    require _1011 + _1607 + (32 * _1631) + 32 <= return_data.size
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + _1011 + _1607 + 1024
                    t = (7 * ceil32(return_data.size)) + 1120
                    while idx < _1631:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + 1056] = (7 * ceil32(return_data.size)) + 1088
                    if not mem[(7 * ceil32(return_data.size)) + 1024]:
                        revert with 0, 'S3'
                    _8219 = mem[(7 * ceil32(return_data.size)) + 992]
                    if 3 >= _1631:
                        revert with 'NH{q', 50
                    _8411 = mem[(7 * ceil32(return_data.size)) + 1216]
                    if 2 >= _1631:
                        revert with 'NH{q', 50
                    _8603 = mem[(7 * ceil32(return_data.size)) + 1184]
                    if mem[(7 * ceil32(return_data.size)) + 1184] > -mem[(7 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    if 2 >= _1631:
                        revert with 'NH{q', 50
                    _9099 = mem[(7 * ceil32(return_data.size)) + 1184]
                    if 3 >= _1631:
                        revert with 'NH{q', 50
                    _9291 = mem[(7 * ceil32(return_data.size)) + 1216]
                    _9292 = mem[64]
                    mem[mem[64] + 32] = uint64(arg1) << 96
                    mem[mem[64] + 64] = address(arg2)
                    mem[mem[64] + 96] = 0
                    mem[mem[64] + 128] = _8219
                    mem[mem[64] + 160] = _9099
                    mem[mem[64] + 192] = _9291
                    _9579 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= _1631:
                        revert with 'NH{q', 50
                    _9771 = mem[(7 * ceil32(return_data.size)) + 1120]
                    if 1 >= _1631:
                        revert with 'NH{q', 50
                    _9963 = mem[(7 * ceil32(return_data.size)) + 1152]
                    mem[_9292 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_9292 + 228] = _9771
                    mem[_9292 + 260] = _9963
                    mem[_9292 + 292] = this.address
                    mem[_9292 + 324] = 128
                    _10091 = mem[_9579]
                    mem[_9292 + 356] = mem[_9579]
                    mem[_9292 + 388 len ceil32(_10091)] = mem[_9579 + 32 len ceil32(_10091)]
                    if ceil32(_10091) > _10091:
                        mem[_9292 + _10091 + 388] = 0
                    require ext_code.size(0)
                    call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _9771, _9963, address(this.address), 128, mem[_9292 + 356 len ceil32(_10091) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _8603 + _8411 < _8219:
                        revert with 'NH{q', 17
                    return _8219, _8603 + _8411, _8603 + _8411 - _8219
                mem[(6 * ceil32(return_data.size)) + 736] = 1
                mem[(6 * ceil32(return_data.size)) + 768] = 0
                mem[(6 * ceil32(return_data.size)) + 800] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 832] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 864] = 0
                mem[(6 * ceil32(return_data.size)) + 896] = 0
                mem[(6 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(6 * ceil32(return_data.size)) + 960] = 0
                mem[(6 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 996] = 0
                mem[(6 * ceil32(return_data.size)) + 1028] = 0
                mem[(6 * ceil32(return_data.size)) + 1060] = 0
                mem[(6 * ceil32(return_data.size)) + 1092] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 1124] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 1156] = 0
                mem[(6 * ceil32(return_data.size)) + 1188] = 0
                mem[(6 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(6 * ceil32(return_data.size)) + 1252] = 1
                mem[(6 * ceil32(return_data.size)) + 1284] = 0
                mem[(6 * ceil32(return_data.size)) + 1316] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 1348] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 1380] = 0
                mem[(6 * ceil32(return_data.size)) + 1412] = 0
                mem[(6 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(6 * ceil32(return_data.size)) + 1476] = 0
                require ext_code.size(stor0)
                staticcall stor0.0x21444fed with:
                        gas gas_remaining wei
                       args 0, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1012 = mem[(6 * ceil32(return_data.size)) + 992 len 4], 0
                require mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                require return_data.size - mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                if not bool((7 * ceil32(return_data.size)) + 1088 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + 1088
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                mem[(7 * ceil32(return_data.size)) + 992] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                require mem[(6 * ceil32(return_data.size)) + _1012 + 1024] == bool(mem[(6 * ceil32(return_data.size)) + _1012 + 1024])
                mem[(7 * ceil32(return_data.size)) + 1024] = mem[(6 * ceil32(return_data.size)) + _1012 + 1024]
                _1608 = mem[(6 * ceil32(return_data.size)) + _1012 + 1056]
                require mem[(6 * ceil32(return_data.size)) + _1012 + 1056] <= test266151307()
                require (6 * ceil32(return_data.size)) + _1012 + mem[(6 * ceil32(return_data.size)) + _1012 + 1056] + 1023 < (6 * ceil32(return_data.size)) + return_data.size + 992
                _1632 = mem[(6 * ceil32(return_data.size)) + _1012 + mem[(6 * ceil32(return_data.size)) + _1012 + 1056] + 992]
                if mem[(6 * ceil32(return_data.size)) + _1012 + mem[(6 * ceil32(return_data.size)) + _1012 + 1056] + 992] > test266151307():
                    revert with 'NH{q', 65
                if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _1012 + mem[(6 * ceil32(return_data.size)) + _1012 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + _1012 + mem[(6 * ceil32(return_data.size)) + _1012 + 1056] + 992]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _1012 + mem[(6 * ceil32(return_data.size)) + _1012 + 1056] + 992]) + 1089
                mem[(7 * ceil32(return_data.size)) + 1088] = _1632
                require _1012 + _1608 + (32 * _1632) + 32 <= return_data.size
                idx = 0
                s = (6 * ceil32(return_data.size)) + _1012 + _1608 + 1024
                t = (7 * ceil32(return_data.size)) + 1120
                while idx < _1632:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 1056] = (7 * ceil32(return_data.size)) + 1088
                if not mem[(7 * ceil32(return_data.size)) + 1024]:
                    revert with 0, 'S3'
                _8240 = mem[(7 * ceil32(return_data.size)) + 992]
                if 3 >= _1632:
                    revert with 'NH{q', 50
                _8432 = mem[(7 * ceil32(return_data.size)) + 1216]
                if 2 >= _1632:
                    revert with 'NH{q', 50
                _8610 = mem[(7 * ceil32(return_data.size)) + 1184]
                if mem[(7 * ceil32(return_data.size)) + 1184] > -mem[(7 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                if 2 >= _1632:
                    revert with 'NH{q', 50
                _9120 = mem[(7 * ceil32(return_data.size)) + 1184]
                if 3 >= _1632:
                    revert with 'NH{q', 50
                _9305 = mem[(7 * ceil32(return_data.size)) + 1216]
                _9306 = mem[64]
                mem[mem[64] + 32] = uint64(arg2) << 96
                mem[mem[64] + 64] = address(arg1)
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = _8240
                mem[mem[64] + 160] = _9120
                mem[mem[64] + 192] = _9305
                _9600 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _1632:
                    revert with 'NH{q', 50
                _9792 = mem[(7 * ceil32(return_data.size)) + 1120]
                if 1 >= _1632:
                    revert with 'NH{q', 50
                _9977 = mem[(7 * ceil32(return_data.size)) + 1152]
                mem[_9306 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9306 + 228] = _9792
                mem[_9306 + 260] = _9977
                mem[_9306 + 292] = this.address
                mem[_9306 + 324] = 128
                _10098 = mem[_9600]
                mem[_9306 + 356] = mem[_9600]
                mem[_9306 + 388 len ceil32(_10098)] = mem[_9600 + 32 len ceil32(_10098)]
                if ceil32(_10098) > _10098:
                    mem[_9306 + _10098 + 388] = 0
                require ext_code.size(0)
                call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9792, _9977, address(this.address), 128, mem[_9306 + 356 len ceil32(_10098) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8610 + _8432 < _8240:
                    revert with 'NH{q', 17
                return _8240, _8610 + _8432, _8610 + _8432 - _8240
            mem[(6 * ceil32(return_data.size)) + 576] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 608] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 640] = 0
            mem[(6 * ceil32(return_data.size)) + 672] = 0
            mem[(6 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            if address(arg2) == address(arg1):
                mem[(6 * ceil32(return_data.size)) + 736] = 0
                mem[(6 * ceil32(return_data.size)) + 768] = 0
                mem[(6 * ceil32(return_data.size)) + 800] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 832] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 864] = 0
                mem[(6 * ceil32(return_data.size)) + 896] = 0
                mem[(6 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(6 * ceil32(return_data.size)) + 960] = 1
                mem[(6 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 996] = 0
                mem[(6 * ceil32(return_data.size)) + 1028] = 0
                mem[(6 * ceil32(return_data.size)) + 1060] = 0
                mem[(6 * ceil32(return_data.size)) + 1092] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 1124] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 1156] = 0
                mem[(6 * ceil32(return_data.size)) + 1188] = 0
                mem[(6 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(6 * ceil32(return_data.size)) + 1252] = 0
                mem[(6 * ceil32(return_data.size)) + 1284] = 0
                mem[(6 * ceil32(return_data.size)) + 1316] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 1348] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 1380] = 0
                mem[(6 * ceil32(return_data.size)) + 1412] = 0
                mem[(6 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(6 * ceil32(return_data.size)) + 1476] = 1
                require ext_code.size(stor0)
                staticcall stor0.0x21444fed with:
                        gas gas_remaining wei
                       args 0, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1013 = mem[(6 * ceil32(return_data.size)) + 992 len 4], 0
                require mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                require return_data.size - mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                if not bool((7 * ceil32(return_data.size)) + 1088 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + 1088
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                mem[(7 * ceil32(return_data.size)) + 992] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                require mem[(6 * ceil32(return_data.size)) + _1013 + 1024] == bool(mem[(6 * ceil32(return_data.size)) + _1013 + 1024])
                mem[(7 * ceil32(return_data.size)) + 1024] = mem[(6 * ceil32(return_data.size)) + _1013 + 1024]
                _1609 = mem[(6 * ceil32(return_data.size)) + _1013 + 1056]
                require mem[(6 * ceil32(return_data.size)) + _1013 + 1056] <= test266151307()
                require (6 * ceil32(return_data.size)) + _1013 + mem[(6 * ceil32(return_data.size)) + _1013 + 1056] + 1023 < (6 * ceil32(return_data.size)) + return_data.size + 992
                _1633 = mem[(6 * ceil32(return_data.size)) + _1013 + mem[(6 * ceil32(return_data.size)) + _1013 + 1056] + 992]
                if mem[(6 * ceil32(return_data.size)) + _1013 + mem[(6 * ceil32(return_data.size)) + _1013 + 1056] + 992] > test266151307():
                    revert with 'NH{q', 65
                if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _1013 + mem[(6 * ceil32(return_data.size)) + _1013 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + _1013 + mem[(6 * ceil32(return_data.size)) + _1013 + 1056] + 992]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _1013 + mem[(6 * ceil32(return_data.size)) + _1013 + 1056] + 992]) + 1089
                mem[(7 * ceil32(return_data.size)) + 1088] = mem[(6 * ceil32(return_data.size)) + _1013 + mem[(6 * ceil32(return_data.size)) + _1013 + 1056] + 992]
                require _1013 + _1609 + (32 * _1633) + 32 <= return_data.size
                idx = 0
                s = (6 * ceil32(return_data.size)) + _1013 + _1609 + 1024
                t = (7 * ceil32(return_data.size)) + 1120
                while idx < _1633:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 1056] = (7 * ceil32(return_data.size)) + 1088
                if not mem[(7 * ceil32(return_data.size)) + 1024]:
                    revert with 0, 'S3'
                _8243 = mem[(7 * ceil32(return_data.size)) + 992]
                if 3 >= mem[(7 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _8435 = mem[(7 * ceil32(return_data.size)) + 1216]
                if 2 >= mem[(7 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _8611 = mem[(7 * ceil32(return_data.size)) + 1184]
                if mem[(7 * ceil32(return_data.size)) + 1184] > -mem[(7 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                if 2 >= mem[(7 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _9123 = mem[(7 * ceil32(return_data.size)) + 1184]
                if 3 >= mem[(7 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _9307 = mem[(7 * ceil32(return_data.size)) + 1216]
                _9308 = mem[64]
                mem[mem[64] + 32] = uint64(arg2) << 96
                mem[mem[64] + 64] = address(arg1)
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = _8243
                mem[mem[64] + 160] = _9123
                mem[mem[64] + 192] = _9307
                _9603 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= mem[(7 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _9795 = mem[(7 * ceil32(return_data.size)) + 1120]
                if 1 >= mem[(7 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _9979 = mem[(7 * ceil32(return_data.size)) + 1152]
                mem[_9308 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9308 + 228] = _9795
                mem[_9308 + 260] = _9979
                mem[_9308 + 292] = this.address
                mem[_9308 + 324] = 128
                _10099 = mem[_9603]
                mem[_9308 + 356] = mem[_9603]
                mem[_9308 + 388 len ceil32(_10099)] = mem[_9603 + 32 len ceil32(_10099)]
                if ceil32(_10099) > _10099:
                    mem[_9308 + _10099 + 388] = 0
                require ext_code.size(0)
                call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9795, _9979, address(this.address), 128, mem[_9308 + 356 len ceil32(_10099) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8611 + _8435 < _8243:
                    revert with 'NH{q', 17
                return _8243, _8611 + _8435, _8611 + _8435 - _8243
            mem[(6 * ceil32(return_data.size)) + 736] = 1
            mem[(6 * ceil32(return_data.size)) + 768] = 0
            mem[(6 * ceil32(return_data.size)) + 800] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 832] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 864] = 0
            mem[(6 * ceil32(return_data.size)) + 896] = 0
            mem[(6 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 960] = 0
            mem[(6 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 996] = 0
            mem[(6 * ceil32(return_data.size)) + 1028] = 0
            mem[(6 * ceil32(return_data.size)) + 1060] = 0
            mem[(6 * ceil32(return_data.size)) + 1092] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 1124] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 1156] = 0
            mem[(6 * ceil32(return_data.size)) + 1188] = 0
            mem[(6 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 1252] = 1
            mem[(6 * ceil32(return_data.size)) + 1284] = 0
            mem[(6 * ceil32(return_data.size)) + 1316] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 1348] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 1380] = 0
            mem[(6 * ceil32(return_data.size)) + 1412] = 0
            mem[(6 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 1476] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1014 = mem[(6 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((7 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + 1088
            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(7 * ceil32(return_data.size)) + 992] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(6 * ceil32(return_data.size)) + _1014 + 1024] == bool(mem[(6 * ceil32(return_data.size)) + _1014 + 1024])
            mem[(7 * ceil32(return_data.size)) + 1024] = mem[(6 * ceil32(return_data.size)) + _1014 + 1024]
            _1610 = mem[(6 * ceil32(return_data.size)) + _1014 + 1056]
            require mem[(6 * ceil32(return_data.size)) + _1014 + 1056] <= test266151307()
            require (6 * ceil32(return_data.size)) + _1014 + mem[(6 * ceil32(return_data.size)) + _1014 + 1056] + 1023 < (6 * ceil32(return_data.size)) + return_data.size + 992
            _1634 = mem[(6 * ceil32(return_data.size)) + _1014 + mem[(6 * ceil32(return_data.size)) + _1014 + 1056] + 992]
            if mem[(6 * ceil32(return_data.size)) + _1014 + mem[(6 * ceil32(return_data.size)) + _1014 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _1014 + mem[(6 * ceil32(return_data.size)) + _1014 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + _1014 + mem[(6 * ceil32(return_data.size)) + _1014 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _1014 + mem[(6 * ceil32(return_data.size)) + _1014 + 1056] + 992]) + 1089
            mem[(7 * ceil32(return_data.size)) + 1088] = _1634
            require _1014 + _1610 + (32 * _1634) + 32 <= return_data.size
            idx = 0
            s = (6 * ceil32(return_data.size)) + _1014 + _1610 + 1024
            t = (7 * ceil32(return_data.size)) + 1120
            while idx < _1634:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 1056] = (7 * ceil32(return_data.size)) + 1088
            if not mem[(7 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            _8264 = mem[(7 * ceil32(return_data.size)) + 992]
            if 3 >= _1634:
                revert with 'NH{q', 50
            _8456 = mem[(7 * ceil32(return_data.size)) + 1216]
            if 2 >= _1634:
                revert with 'NH{q', 50
            _8618 = mem[(7 * ceil32(return_data.size)) + 1184]
            if mem[(7 * ceil32(return_data.size)) + 1184] > -mem[(7 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            if 2 >= _1634:
                revert with 'NH{q', 50
            _9144 = mem[(7 * ceil32(return_data.size)) + 1184]
            if 3 >= _1634:
                revert with 'NH{q', 50
            _9321 = mem[(7 * ceil32(return_data.size)) + 1216]
            _9322 = mem[64]
            mem[mem[64] + 32] = uint64(arg1) << 96
            mem[mem[64] + 64] = address(arg2)
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = _8264
            mem[mem[64] + 160] = _9144
            mem[mem[64] + 192] = _9321
            _9624 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _1634:
                revert with 'NH{q', 50
            _9816 = mem[(7 * ceil32(return_data.size)) + 1120]
            if 1 >= _1634:
                revert with 'NH{q', 50
            _9993 = mem[(7 * ceil32(return_data.size)) + 1152]
            mem[_9322 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9322 + 228] = _9816
            mem[_9322 + 260] = _9993
            mem[_9322 + 292] = this.address
            mem[_9322 + 324] = 128
            _10106 = mem[_9624]
            mem[_9322 + 356] = mem[_9624]
            mem[_9322 + 388 len ceil32(_10106)] = mem[_9624 + 32 len ceil32(_10106)]
            if ceil32(_10106) > _10106:
                mem[_9322 + _10106 + 388] = 0
            require ext_code.size(0)
            call 0x0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9816, _9993, address(this.address), 128, mem[_9322 + 356 len ceil32(_10106) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8618 + _8456 < _8264:
                revert with 'NH{q', 17
            return _8264, _8618 + _8456, _8618 + _8456 - _8264
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 548] = 10^6
        mem[(4 * ceil32(return_data.size)) + 580] = 10^12
        mem[(4 * ceil32(return_data.size)) + 612] = 10^12
        require ext_code.size(address(arg3))
        staticcall address(arg3).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -101:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
            revert with 'NH{q', 17
        if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 548] = 10^6
        mem[(6 * ceil32(return_data.size)) + 580] = 10^12
        mem[(6 * ceil32(return_data.size)) + 612] = 10^12
        require ext_code.size(address(arg4))
        staticcall address(arg4).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[(6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -101:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
            revert with 'NH{q', 17
        if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 544] = 0
        if address(arg1) < address(arg2):
            mem[(7 * ceil32(return_data.size)) + 576] = address(arg1)
            mem[(7 * ceil32(return_data.size)) + 608] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 640] = 0
            mem[(7 * ceil32(return_data.size)) + 672] = 0
            mem[(7 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            if address(arg1) == address(arg1):
                mem[(7 * ceil32(return_data.size)) + 736] = 0
                mem[(7 * ceil32(return_data.size)) + 768] = address(ext_call.return_data[0])
                mem[(7 * ceil32(return_data.size)) + 800] = address(arg1)
                mem[(7 * ceil32(return_data.size)) + 832] = address(arg2)
                mem[(7 * ceil32(return_data.size)) + 864] = 0
                mem[(7 * ceil32(return_data.size)) + 896] = 0
                mem[(7 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(7 * ceil32(return_data.size)) + 960] = 1
                mem[(7 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 996] = 0
                mem[(7 * ceil32(return_data.size)) + 1028] = 0
                mem[(7 * ceil32(return_data.size)) + 1060] = 0
                mem[(7 * ceil32(return_data.size)) + 1092] = address(arg1)
                mem[(7 * ceil32(return_data.size)) + 1124] = address(arg2)
                mem[(7 * ceil32(return_data.size)) + 1156] = 0
                mem[(7 * ceil32(return_data.size)) + 1188] = 0
                mem[(7 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(7 * ceil32(return_data.size)) + 1252] = 0
                mem[(7 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
                mem[(7 * ceil32(return_data.size)) + 1316] = address(arg1)
                mem[(7 * ceil32(return_data.size)) + 1348] = address(arg2)
                mem[(7 * ceil32(return_data.size)) + 1380] = 0
                mem[(7 * ceil32(return_data.size)) + 1412] = 0
                mem[(7 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(7 * ceil32(return_data.size)) + 1476] = 1
                require ext_code.size(stor0)
                staticcall stor0.0x21444fed with:
                        gas gas_remaining wei
                       args 0, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, address(ext_call.return_data[0]), address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1227 = mem[(7 * ceil32(return_data.size)) + 992 len 4], 0
                require mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                require return_data.size - mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                if not bool((8 * ceil32(return_data.size)) + 1088 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + 1088
                require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                mem[(8 * ceil32(return_data.size)) + 992] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                require mem[(7 * ceil32(return_data.size)) + _1227 + 1024] == bool(mem[(7 * ceil32(return_data.size)) + _1227 + 1024])
                mem[(8 * ceil32(return_data.size)) + 1024] = mem[(7 * ceil32(return_data.size)) + _1227 + 1024]
                _2375 = mem[(7 * ceil32(return_data.size)) + _1227 + 1056]
                require mem[(7 * ceil32(return_data.size)) + _1227 + 1056] <= test266151307()
                require (7 * ceil32(return_data.size)) + _1227 + mem[(7 * ceil32(return_data.size)) + _1227 + 1056] + 1023 < (7 * ceil32(return_data.size)) + return_data.size + 992
                _2391 = mem[(7 * ceil32(return_data.size)) + _1227 + mem[(7 * ceil32(return_data.size)) + _1227 + 1056] + 992]
                if mem[(7 * ceil32(return_data.size)) + _1227 + mem[(7 * ceil32(return_data.size)) + _1227 + 1056] + 992] > test266151307():
                    revert with 'NH{q', 65
                if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1227 + mem[(7 * ceil32(return_data.size)) + _1227 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + _1227 + mem[(7 * ceil32(return_data.size)) + _1227 + 1056] + 992]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1227 + mem[(7 * ceil32(return_data.size)) + _1227 + 1056] + 992]) + 1089
                mem[(8 * ceil32(return_data.size)) + 1088] = _2391
                require _1227 + _2375 + (32 * _2391) + 32 <= return_data.size
                idx = 0
                s = (7 * ceil32(return_data.size)) + _1227 + _2375 + 1024
                t = (8 * ceil32(return_data.size)) + 1120
                while idx < _2391:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 1056] = (8 * ceil32(return_data.size)) + 1088
                if not mem[(8 * ceil32(return_data.size)) + 1024]:
                    revert with 0, 'S3'
                if not mem[(7 * ceil32(return_data.size)) + 736]:
                    if not mem[(7 * ceil32(return_data.size)) + 736]:
                        _8171 = mem[(7 * ceil32(return_data.size)) + 608]
                        _8267 = mem[(8 * ceil32(return_data.size)) + 992]
                        if 3 >= _2391:
                            revert with 'NH{q', 50
                        _8459 = mem[(8 * ceil32(return_data.size)) + 1216]
                        if 2 >= _2391:
                            revert with 'NH{q', 50
                        _8619 = mem[(8 * ceil32(return_data.size)) + 1184]
                        if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                            revert with 'NH{q', 17
                        _8891 = mem[(7 * ceil32(return_data.size)) + 544]
                        _8892 = mem[(7 * ceil32(return_data.size)) + 768]
                        if 2 >= _2391:
                            revert with 'NH{q', 50
                        _9147 = mem[(8 * ceil32(return_data.size)) + 1184]
                        if 3 >= _2391:
                            revert with 'NH{q', 50
                        _9323 = mem[(8 * ceil32(return_data.size)) + 1216]
                        _9324 = mem[64]
                        mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
                        mem[mem[64] + 64] = address(_8171)
                        mem[mem[64] + 96] = address(_8892)
                        mem[mem[64] + 128] = _8267
                        mem[mem[64] + 160] = _9147
                        mem[mem[64] + 192] = _9323
                        _9627 = mem[64]
                        mem[mem[64]] = 192
                        mem[64] = mem[64] + 224
                        if 0 >= _2391:
                            revert with 'NH{q', 50
                        _9819 = mem[(8 * ceil32(return_data.size)) + 1120]
                        if 1 >= _2391:
                            revert with 'NH{q', 50
                        _9995 = mem[(8 * ceil32(return_data.size)) + 1152]
                        mem[_9324 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_9324 + 228] = _9819
                        mem[_9324 + 260] = _9995
                        mem[_9324 + 292] = this.address
                        mem[_9324 + 324] = 128
                        _10107 = mem[_9627]
                        mem[_9324 + 356] = mem[_9627]
                        mem[_9324 + 388 len ceil32(_10107)] = mem[_9627 + 32 len ceil32(_10107)]
                        if ceil32(_10107) > _10107:
                            mem[_9324 + _10107 + 388] = 0
                        require ext_code.size(address(_8891))
                        call address(_8891).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _9819, _9995, address(this.address), 128, mem[_9324 + 356 len ceil32(_10107) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _8619 + _8459 < _8267:
                            revert with 'NH{q', 17
                        return _8267, _8619 + _8459, _8619 + _8459 - _8267
                    _8172 = mem[(7 * ceil32(return_data.size)) + 576]
                    _8270 = mem[(8 * ceil32(return_data.size)) + 992]
                    if 3 >= _2391:
                        revert with 'NH{q', 50
                    _8462 = mem[(8 * ceil32(return_data.size)) + 1216]
                    if 2 >= _2391:
                        revert with 'NH{q', 50
                    _8620 = mem[(8 * ceil32(return_data.size)) + 1184]
                    if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    _8895 = mem[(7 * ceil32(return_data.size)) + 544]
                    _8896 = mem[(7 * ceil32(return_data.size)) + 768]
                    if 2 >= _2391:
                        revert with 'NH{q', 50
                    _9150 = mem[(8 * ceil32(return_data.size)) + 1184]
                    if 3 >= _2391:
                        revert with 'NH{q', 50
                    _9325 = mem[(8 * ceil32(return_data.size)) + 1216]
                    _9326 = mem[64]
                    mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
                    mem[mem[64] + 64] = address(_8172)
                    mem[mem[64] + 96] = address(_8896)
                    mem[mem[64] + 128] = _8270
                    mem[mem[64] + 160] = _9150
                    mem[mem[64] + 192] = _9325
                    _9630 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= _2391:
                        revert with 'NH{q', 50
                    _9822 = mem[(8 * ceil32(return_data.size)) + 1120]
                    if 1 >= _2391:
                        revert with 'NH{q', 50
                    _9997 = mem[(8 * ceil32(return_data.size)) + 1152]
                    mem[_9326 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_9326 + 228] = _9822
                    mem[_9326 + 260] = _9997
                    mem[_9326 + 292] = this.address
                    mem[_9326 + 324] = 128
                    _10108 = mem[_9630]
                    mem[_9326 + 356] = mem[_9630]
                    mem[_9326 + 388 len ceil32(_10108)] = mem[_9630 + 32 len ceil32(_10108)]
                    if ceil32(_10108) > _10108:
                        mem[_9326 + _10108 + 388] = 0
                    require ext_code.size(address(_8895))
                    call address(_8895).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _9822, _9997, address(this.address), 128, mem[_9326 + 356 len ceil32(_10108) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _8620 + _8462 < _8270:
                        revert with 'NH{q', 17
                    return _8270, _8620 + _8462, _8620 + _8462 - _8270
                if not mem[(7 * ceil32(return_data.size)) + 736]:
                    _8173 = mem[(7 * ceil32(return_data.size)) + 608]
                    _8273 = mem[(8 * ceil32(return_data.size)) + 992]
                    if 3 >= _2391:
                        revert with 'NH{q', 50
                    _8465 = mem[(8 * ceil32(return_data.size)) + 1216]
                    if 2 >= _2391:
                        revert with 'NH{q', 50
                    _8621 = mem[(8 * ceil32(return_data.size)) + 1184]
                    if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    _8899 = mem[(7 * ceil32(return_data.size)) + 544]
                    _8900 = mem[(7 * ceil32(return_data.size)) + 768]
                    if 2 >= _2391:
                        revert with 'NH{q', 50
                    _9153 = mem[(8 * ceil32(return_data.size)) + 1184]
                    if 3 >= _2391:
                        revert with 'NH{q', 50
                    _9327 = mem[(8 * ceil32(return_data.size)) + 1216]
                    _9328 = mem[64]
                    mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
                    mem[mem[64] + 64] = address(_8173)
                    mem[mem[64] + 96] = address(_8900)
                    mem[mem[64] + 128] = _8273
                    mem[mem[64] + 160] = _9153
                    mem[mem[64] + 192] = _9327
                    _9633 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= _2391:
                        revert with 'NH{q', 50
                    _9825 = mem[(8 * ceil32(return_data.size)) + 1120]
                    if 1 >= _2391:
                        revert with 'NH{q', 50
                    _9999 = mem[(8 * ceil32(return_data.size)) + 1152]
                    mem[_9328 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_9328 + 228] = _9825
                    mem[_9328 + 260] = _9999
                    mem[_9328 + 292] = this.address
                    mem[_9328 + 324] = 128
                    _10109 = mem[_9633]
                    mem[_9328 + 356] = mem[_9633]
                    mem[_9328 + 388 len ceil32(_10109)] = mem[_9633 + 32 len ceil32(_10109)]
                    if ceil32(_10109) > _10109:
                        mem[_9328 + _10109 + 388] = 0
                    require ext_code.size(address(_8899))
                    call address(_8899).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _9825, _9999, address(this.address), 128, mem[_9328 + 356 len ceil32(_10109) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _8621 + _8465 < _8273:
                        revert with 'NH{q', 17
                    return _8273, _8621 + _8465, _8621 + _8465 - _8273
                _8174 = mem[(7 * ceil32(return_data.size)) + 576]
                _8276 = mem[(8 * ceil32(return_data.size)) + 992]
                if 3 >= _2391:
                    revert with 'NH{q', 50
                _8468 = mem[(8 * ceil32(return_data.size)) + 1216]
                if 2 >= _2391:
                    revert with 'NH{q', 50
                _8622 = mem[(8 * ceil32(return_data.size)) + 1184]
                if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _8903 = mem[(7 * ceil32(return_data.size)) + 544]
                _8904 = mem[(7 * ceil32(return_data.size)) + 768]
                if 2 >= _2391:
                    revert with 'NH{q', 50
                _9156 = mem[(8 * ceil32(return_data.size)) + 1184]
                if 3 >= _2391:
                    revert with 'NH{q', 50
                _9329 = mem[(8 * ceil32(return_data.size)) + 1216]
                _9330 = mem[64]
                mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
                mem[mem[64] + 64] = address(_8174)
                mem[mem[64] + 96] = address(_8904)
                mem[mem[64] + 128] = _8276
                mem[mem[64] + 160] = _9156
                mem[mem[64] + 192] = _9329
                _9636 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _2391:
                    revert with 'NH{q', 50
                _9828 = mem[(8 * ceil32(return_data.size)) + 1120]
                if 1 >= _2391:
                    revert with 'NH{q', 50
                _10001 = mem[(8 * ceil32(return_data.size)) + 1152]
                mem[_9330 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9330 + 228] = _9828
                mem[_9330 + 260] = _10001
                mem[_9330 + 292] = this.address
                mem[_9330 + 324] = 128
                _10110 = mem[_9636]
                mem[_9330 + 356] = mem[_9636]
                mem[_9330 + 388 len ceil32(_10110)] = mem[_9636 + 32 len ceil32(_10110)]
                if ceil32(_10110) > _10110:
                    mem[_9330 + _10110 + 388] = 0
                require ext_code.size(address(_8903))
                call address(_8903).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9828, _10001, address(this.address), 128, mem[_9330 + 356 len ceil32(_10110) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8622 + _8468 < _8276:
                    revert with 'NH{q', 17
                return _8276, _8622 + _8468, _8622 + _8468 - _8276
            mem[(7 * ceil32(return_data.size)) + 736] = 1
            mem[(7 * ceil32(return_data.size)) + 768] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 800] = address(arg1)
            mem[(7 * ceil32(return_data.size)) + 832] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 864] = 0
            mem[(7 * ceil32(return_data.size)) + 896] = 0
            mem[(7 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(7 * ceil32(return_data.size)) + 960] = 0
            mem[(7 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 996] = 0
            mem[(7 * ceil32(return_data.size)) + 1028] = 0
            mem[(7 * ceil32(return_data.size)) + 1060] = 0
            mem[(7 * ceil32(return_data.size)) + 1092] = address(arg1)
            mem[(7 * ceil32(return_data.size)) + 1124] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 1156] = 0
            mem[(7 * ceil32(return_data.size)) + 1188] = 0
            mem[(7 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(7 * ceil32(return_data.size)) + 1252] = 1
            mem[(7 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 1316] = address(arg1)
            mem[(7 * ceil32(return_data.size)) + 1348] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 1380] = 0
            mem[(7 * ceil32(return_data.size)) + 1412] = 0
            mem[(7 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(7 * ceil32(return_data.size)) + 1476] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, address(ext_call.return_data[0]), address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1228 = mem[(7 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((8 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + 1088
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(8 * ceil32(return_data.size)) + 992] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(7 * ceil32(return_data.size)) + _1228 + 1024] == bool(mem[(7 * ceil32(return_data.size)) + _1228 + 1024])
            mem[(8 * ceil32(return_data.size)) + 1024] = mem[(7 * ceil32(return_data.size)) + _1228 + 1024]
            _2376 = mem[(7 * ceil32(return_data.size)) + _1228 + 1056]
            require mem[(7 * ceil32(return_data.size)) + _1228 + 1056] <= test266151307()
            require (7 * ceil32(return_data.size)) + _1228 + mem[(7 * ceil32(return_data.size)) + _1228 + 1056] + 1023 < (7 * ceil32(return_data.size)) + return_data.size + 992
            _2392 = mem[(7 * ceil32(return_data.size)) + _1228 + mem[(7 * ceil32(return_data.size)) + _1228 + 1056] + 992]
            if mem[(7 * ceil32(return_data.size)) + _1228 + mem[(7 * ceil32(return_data.size)) + _1228 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1228 + mem[(7 * ceil32(return_data.size)) + _1228 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + _1228 + mem[(7 * ceil32(return_data.size)) + _1228 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1228 + mem[(7 * ceil32(return_data.size)) + _1228 + 1056] + 992]) + 1089
            mem[(8 * ceil32(return_data.size)) + 1088] = _2392
            require _1228 + _2376 + (32 * _2392) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _1228 + _2376 + 1024
            t = (8 * ceil32(return_data.size)) + 1120
            while idx < _2392:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 1056] = (8 * ceil32(return_data.size)) + 1088
            if not mem[(8 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            if not mem[(7 * ceil32(return_data.size)) + 736]:
                if not mem[(7 * ceil32(return_data.size)) + 736]:
                    _8175 = mem[(7 * ceil32(return_data.size)) + 608]
                    _8279 = mem[(8 * ceil32(return_data.size)) + 992]
                    if 3 >= _2392:
                        revert with 'NH{q', 50
                    _8471 = mem[(8 * ceil32(return_data.size)) + 1216]
                    if 2 >= _2392:
                        revert with 'NH{q', 50
                    _8623 = mem[(8 * ceil32(return_data.size)) + 1184]
                    if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    _8907 = mem[(7 * ceil32(return_data.size)) + 544]
                    _8908 = mem[(7 * ceil32(return_data.size)) + 768]
                    if 2 >= _2392:
                        revert with 'NH{q', 50
                    _9159 = mem[(8 * ceil32(return_data.size)) + 1184]
                    if 3 >= _2392:
                        revert with 'NH{q', 50
                    _9331 = mem[(8 * ceil32(return_data.size)) + 1216]
                    _9332 = mem[64]
                    mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
                    mem[mem[64] + 64] = address(_8175)
                    mem[mem[64] + 96] = address(_8908)
                    mem[mem[64] + 128] = _8279
                    mem[mem[64] + 160] = _9159
                    mem[mem[64] + 192] = _9331
                    _9639 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= _2392:
                        revert with 'NH{q', 50
                    _9831 = mem[(8 * ceil32(return_data.size)) + 1120]
                    if 1 >= _2392:
                        revert with 'NH{q', 50
                    _10003 = mem[(8 * ceil32(return_data.size)) + 1152]
                    mem[_9332 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_9332 + 228] = _9831
                    mem[_9332 + 260] = _10003
                    mem[_9332 + 292] = this.address
                    mem[_9332 + 324] = 128
                    _10111 = mem[_9639]
                    mem[_9332 + 356] = mem[_9639]
                    mem[_9332 + 388 len ceil32(_10111)] = mem[_9639 + 32 len ceil32(_10111)]
                    if ceil32(_10111) > _10111:
                        mem[_9332 + _10111 + 388] = 0
                    require ext_code.size(address(_8907))
                    call address(_8907).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _9831, _10003, address(this.address), 128, mem[_9332 + 356 len ceil32(_10111) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _8623 + _8471 < _8279:
                        revert with 'NH{q', 17
                    return _8279, _8623 + _8471, _8623 + _8471 - _8279
                _8176 = mem[(7 * ceil32(return_data.size)) + 576]
                _8282 = mem[(8 * ceil32(return_data.size)) + 992]
                if 3 >= _2392:
                    revert with 'NH{q', 50
                _8474 = mem[(8 * ceil32(return_data.size)) + 1216]
                if 2 >= _2392:
                    revert with 'NH{q', 50
                _8624 = mem[(8 * ceil32(return_data.size)) + 1184]
                if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _8911 = mem[(7 * ceil32(return_data.size)) + 544]
                _8912 = mem[(7 * ceil32(return_data.size)) + 768]
                if 2 >= _2392:
                    revert with 'NH{q', 50
                _9162 = mem[(8 * ceil32(return_data.size)) + 1184]
                if 3 >= _2392:
                    revert with 'NH{q', 50
                _9333 = mem[(8 * ceil32(return_data.size)) + 1216]
                _9334 = mem[64]
                mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
                mem[mem[64] + 64] = address(_8176)
                mem[mem[64] + 96] = address(_8912)
                mem[mem[64] + 128] = _8282
                mem[mem[64] + 160] = _9162
                mem[mem[64] + 192] = _9333
                _9642 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _2392:
                    revert with 'NH{q', 50
                _9834 = mem[(8 * ceil32(return_data.size)) + 1120]
                if 1 >= _2392:
                    revert with 'NH{q', 50
                _10005 = mem[(8 * ceil32(return_data.size)) + 1152]
                mem[_9334 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9334 + 228] = _9834
                mem[_9334 + 260] = _10005
                mem[_9334 + 292] = this.address
                mem[_9334 + 324] = 128
                _10112 = mem[_9642]
                mem[_9334 + 356] = mem[_9642]
                mem[_9334 + 388 len ceil32(_10112)] = mem[_9642 + 32 len ceil32(_10112)]
                if ceil32(_10112) > _10112:
                    mem[_9334 + _10112 + 388] = 0
                require ext_code.size(address(_8911))
                call address(_8911).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9834, _10005, address(this.address), 128, mem[_9334 + 356 len ceil32(_10112) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8624 + _8474 < _8282:
                    revert with 'NH{q', 17
                return _8282, _8624 + _8474, _8624 + _8474 - _8282
            if not mem[(7 * ceil32(return_data.size)) + 736]:
                _8177 = mem[(7 * ceil32(return_data.size)) + 608]
                _8285 = mem[(8 * ceil32(return_data.size)) + 992]
                if 3 >= _2392:
                    revert with 'NH{q', 50
                _8477 = mem[(8 * ceil32(return_data.size)) + 1216]
                if 2 >= _2392:
                    revert with 'NH{q', 50
                _8625 = mem[(8 * ceil32(return_data.size)) + 1184]
                if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _8915 = mem[(7 * ceil32(return_data.size)) + 544]
                _8916 = mem[(7 * ceil32(return_data.size)) + 768]
                if 2 >= _2392:
                    revert with 'NH{q', 50
                _9165 = mem[(8 * ceil32(return_data.size)) + 1184]
                if 3 >= _2392:
                    revert with 'NH{q', 50
                _9335 = mem[(8 * ceil32(return_data.size)) + 1216]
                _9336 = mem[64]
                mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
                mem[mem[64] + 64] = address(_8177)
                mem[mem[64] + 96] = address(_8916)
                mem[mem[64] + 128] = _8285
                mem[mem[64] + 160] = _9165
                mem[mem[64] + 192] = _9335
                _9645 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _2392:
                    revert with 'NH{q', 50
                _9837 = mem[(8 * ceil32(return_data.size)) + 1120]
                if 1 >= _2392:
                    revert with 'NH{q', 50
                _10007 = mem[(8 * ceil32(return_data.size)) + 1152]
                mem[_9336 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9336 + 228] = _9837
                mem[_9336 + 260] = _10007
                mem[_9336 + 292] = this.address
                mem[_9336 + 324] = 128
                _10113 = mem[_9645]
                mem[_9336 + 356] = mem[_9645]
                mem[_9336 + 388 len ceil32(_10113)] = mem[_9645 + 32 len ceil32(_10113)]
                if ceil32(_10113) > _10113:
                    mem[_9336 + _10113 + 388] = 0
                require ext_code.size(address(_8915))
                call address(_8915).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9837, _10007, address(this.address), 128, mem[_9336 + 356 len ceil32(_10113) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8625 + _8477 < _8285:
                    revert with 'NH{q', 17
                return _8285, _8625 + _8477, _8625 + _8477 - _8285
            _8178 = mem[(7 * ceil32(return_data.size)) + 576]
            _8288 = mem[(8 * ceil32(return_data.size)) + 992]
            if 3 >= _2392:
                revert with 'NH{q', 50
            _8480 = mem[(8 * ceil32(return_data.size)) + 1216]
            if 2 >= _2392:
                revert with 'NH{q', 50
            _8626 = mem[(8 * ceil32(return_data.size)) + 1184]
            if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            _8919 = mem[(7 * ceil32(return_data.size)) + 544]
            _8920 = mem[(7 * ceil32(return_data.size)) + 768]
            if 2 >= _2392:
                revert with 'NH{q', 50
            _9168 = mem[(8 * ceil32(return_data.size)) + 1184]
            if 3 >= _2392:
                revert with 'NH{q', 50
            _9337 = mem[(8 * ceil32(return_data.size)) + 1216]
            _9338 = mem[64]
            mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
            mem[mem[64] + 64] = address(_8178)
            mem[mem[64] + 96] = address(_8920)
            mem[mem[64] + 128] = _8288
            mem[mem[64] + 160] = _9168
            mem[mem[64] + 192] = _9337
            _9648 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _2392:
                revert with 'NH{q', 50
            _9840 = mem[(8 * ceil32(return_data.size)) + 1120]
            if 1 >= _2392:
                revert with 'NH{q', 50
            _10009 = mem[(8 * ceil32(return_data.size)) + 1152]
            mem[_9338 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9338 + 228] = _9840
            mem[_9338 + 260] = _10009
            mem[_9338 + 292] = this.address
            mem[_9338 + 324] = 128
            _10114 = mem[_9648]
            mem[_9338 + 356] = mem[_9648]
            mem[_9338 + 388 len ceil32(_10114)] = mem[_9648 + 32 len ceil32(_10114)]
            if ceil32(_10114) > _10114:
                mem[_9338 + _10114 + 388] = 0
            require ext_code.size(address(_8919))
            call address(_8919).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9840, _10009, address(this.address), 128, mem[_9338 + 356 len ceil32(_10114) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8626 + _8480 < _8288:
                revert with 'NH{q', 17
            return _8288, _8626 + _8480, _8626 + _8480 - _8288
        mem[(7 * ceil32(return_data.size)) + 576] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 608] = address(arg1)
        mem[(7 * ceil32(return_data.size)) + 640] = 0
        mem[(7 * ceil32(return_data.size)) + 672] = 0
        mem[(7 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        if address(arg2) == address(arg1):
            mem[(7 * ceil32(return_data.size)) + 736] = 0
            mem[(7 * ceil32(return_data.size)) + 768] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 800] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 832] = address(arg1)
            mem[(7 * ceil32(return_data.size)) + 864] = 0
            mem[(7 * ceil32(return_data.size)) + 896] = 0
            mem[(7 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(7 * ceil32(return_data.size)) + 960] = 1
            mem[(7 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 996] = 0
            mem[(7 * ceil32(return_data.size)) + 1028] = 0
            mem[(7 * ceil32(return_data.size)) + 1060] = 0
            mem[(7 * ceil32(return_data.size)) + 1092] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 1124] = address(arg1)
            mem[(7 * ceil32(return_data.size)) + 1156] = 0
            mem[(7 * ceil32(return_data.size)) + 1188] = 0
            mem[(7 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(7 * ceil32(return_data.size)) + 1252] = 0
            mem[(7 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 1316] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 1348] = address(arg1)
            mem[(7 * ceil32(return_data.size)) + 1380] = 0
            mem[(7 * ceil32(return_data.size)) + 1412] = 0
            mem[(7 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(7 * ceil32(return_data.size)) + 1476] = 1
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, address(ext_call.return_data[0]), address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1229 = mem[(7 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((8 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + 1088
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(8 * ceil32(return_data.size)) + 992] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(7 * ceil32(return_data.size)) + _1229 + 1024] == bool(mem[(7 * ceil32(return_data.size)) + _1229 + 1024])
            mem[(8 * ceil32(return_data.size)) + 1024] = mem[(7 * ceil32(return_data.size)) + _1229 + 1024]
            _2377 = mem[(7 * ceil32(return_data.size)) + _1229 + 1056]
            require mem[(7 * ceil32(return_data.size)) + _1229 + 1056] <= test266151307()
            require (7 * ceil32(return_data.size)) + _1229 + mem[(7 * ceil32(return_data.size)) + _1229 + 1056] + 1023 < (7 * ceil32(return_data.size)) + return_data.size + 992
            _2393 = mem[(7 * ceil32(return_data.size)) + _1229 + mem[(7 * ceil32(return_data.size)) + _1229 + 1056] + 992]
            if mem[(7 * ceil32(return_data.size)) + _1229 + mem[(7 * ceil32(return_data.size)) + _1229 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1229 + mem[(7 * ceil32(return_data.size)) + _1229 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + _1229 + mem[(7 * ceil32(return_data.size)) + _1229 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1229 + mem[(7 * ceil32(return_data.size)) + _1229 + 1056] + 992]) + 1089
            mem[(8 * ceil32(return_data.size)) + 1088] = _2393
            require _1229 + _2377 + (32 * _2393) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _1229 + _2377 + 1024
            t = (8 * ceil32(return_data.size)) + 1120
            while idx < _2393:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 1056] = (8 * ceil32(return_data.size)) + 1088
            if not mem[(8 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            if not mem[(7 * ceil32(return_data.size)) + 736]:
                if not mem[(7 * ceil32(return_data.size)) + 736]:
                    _8179 = mem[(7 * ceil32(return_data.size)) + 608]
                    _8291 = mem[(8 * ceil32(return_data.size)) + 992]
                    if 3 >= _2393:
                        revert with 'NH{q', 50
                    _8483 = mem[(8 * ceil32(return_data.size)) + 1216]
                    if 2 >= _2393:
                        revert with 'NH{q', 50
                    _8627 = mem[(8 * ceil32(return_data.size)) + 1184]
                    if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    _8923 = mem[(7 * ceil32(return_data.size)) + 544]
                    _8924 = mem[(7 * ceil32(return_data.size)) + 768]
                    if 2 >= _2393:
                        revert with 'NH{q', 50
                    _9171 = mem[(8 * ceil32(return_data.size)) + 1184]
                    if 3 >= _2393:
                        revert with 'NH{q', 50
                    _9339 = mem[(8 * ceil32(return_data.size)) + 1216]
                    _9340 = mem[64]
                    mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
                    mem[mem[64] + 64] = address(_8179)
                    mem[mem[64] + 96] = address(_8924)
                    mem[mem[64] + 128] = _8291
                    mem[mem[64] + 160] = _9171
                    mem[mem[64] + 192] = _9339
                    _9651 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= _2393:
                        revert with 'NH{q', 50
                    _9843 = mem[(8 * ceil32(return_data.size)) + 1120]
                    if 1 >= _2393:
                        revert with 'NH{q', 50
                    _10011 = mem[(8 * ceil32(return_data.size)) + 1152]
                    mem[_9340 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_9340 + 228] = _9843
                    mem[_9340 + 260] = _10011
                    mem[_9340 + 292] = this.address
                    mem[_9340 + 324] = 128
                    _10115 = mem[_9651]
                    mem[_9340 + 356] = mem[_9651]
                    mem[_9340 + 388 len ceil32(_10115)] = mem[_9651 + 32 len ceil32(_10115)]
                    if ceil32(_10115) > _10115:
                        mem[_9340 + _10115 + 388] = 0
                    require ext_code.size(address(_8923))
                    call address(_8923).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _9843, _10011, address(this.address), 128, mem[_9340 + 356 len ceil32(_10115) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _8627 + _8483 < _8291:
                        revert with 'NH{q', 17
                    return _8291, _8627 + _8483, _8627 + _8483 - _8291
                _8180 = mem[(7 * ceil32(return_data.size)) + 576]
                _8294 = mem[(8 * ceil32(return_data.size)) + 992]
                if 3 >= _2393:
                    revert with 'NH{q', 50
                _8486 = mem[(8 * ceil32(return_data.size)) + 1216]
                if 2 >= _2393:
                    revert with 'NH{q', 50
                _8628 = mem[(8 * ceil32(return_data.size)) + 1184]
                if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _8927 = mem[(7 * ceil32(return_data.size)) + 544]
                _8928 = mem[(7 * ceil32(return_data.size)) + 768]
                if 2 >= _2393:
                    revert with 'NH{q', 50
                _9174 = mem[(8 * ceil32(return_data.size)) + 1184]
                if 3 >= _2393:
                    revert with 'NH{q', 50
                _9341 = mem[(8 * ceil32(return_data.size)) + 1216]
                _9342 = mem[64]
                mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
                mem[mem[64] + 64] = address(_8180)
                mem[mem[64] + 96] = address(_8928)
                mem[mem[64] + 128] = _8294
                mem[mem[64] + 160] = _9174
                mem[mem[64] + 192] = _9341
                _9654 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _2393:
                    revert with 'NH{q', 50
                _9846 = mem[(8 * ceil32(return_data.size)) + 1120]
                if 1 >= _2393:
                    revert with 'NH{q', 50
                _10013 = mem[(8 * ceil32(return_data.size)) + 1152]
                mem[_9342 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9342 + 228] = _9846
                mem[_9342 + 260] = _10013
                mem[_9342 + 292] = this.address
                mem[_9342 + 324] = 128
                _10116 = mem[_9654]
                mem[_9342 + 356] = mem[_9654]
                mem[_9342 + 388 len ceil32(_10116)] = mem[_9654 + 32 len ceil32(_10116)]
                if ceil32(_10116) > _10116:
                    mem[_9342 + _10116 + 388] = 0
                require ext_code.size(address(_8927))
                call address(_8927).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9846, _10013, address(this.address), 128, mem[_9342 + 356 len ceil32(_10116) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8628 + _8486 < _8294:
                    revert with 'NH{q', 17
                return _8294, _8628 + _8486, _8628 + _8486 - _8294
            if not mem[(7 * ceil32(return_data.size)) + 736]:
                _8181 = mem[(7 * ceil32(return_data.size)) + 608]
                _8297 = mem[(8 * ceil32(return_data.size)) + 992]
                if 3 >= _2393:
                    revert with 'NH{q', 50
                _8489 = mem[(8 * ceil32(return_data.size)) + 1216]
                if 2 >= _2393:
                    revert with 'NH{q', 50
                _8629 = mem[(8 * ceil32(return_data.size)) + 1184]
                if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _8931 = mem[(7 * ceil32(return_data.size)) + 544]
                _8932 = mem[(7 * ceil32(return_data.size)) + 768]
                if 2 >= _2393:
                    revert with 'NH{q', 50
                _9177 = mem[(8 * ceil32(return_data.size)) + 1184]
                if 3 >= _2393:
                    revert with 'NH{q', 50
                _9343 = mem[(8 * ceil32(return_data.size)) + 1216]
                _9344 = mem[64]
                mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
                mem[mem[64] + 64] = address(_8181)
                mem[mem[64] + 96] = address(_8932)
                mem[mem[64] + 128] = _8297
                mem[mem[64] + 160] = _9177
                mem[mem[64] + 192] = _9343
                _9657 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _2393:
                    revert with 'NH{q', 50
                _9849 = mem[(8 * ceil32(return_data.size)) + 1120]
                if 1 >= _2393:
                    revert with 'NH{q', 50
                _10015 = mem[(8 * ceil32(return_data.size)) + 1152]
                mem[_9344 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9344 + 228] = _9849
                mem[_9344 + 260] = _10015
                mem[_9344 + 292] = this.address
                mem[_9344 + 324] = 128
                _10117 = mem[_9657]
                mem[_9344 + 356] = mem[_9657]
                mem[_9344 + 388 len ceil32(_10117)] = mem[_9657 + 32 len ceil32(_10117)]
                if ceil32(_10117) > _10117:
                    mem[_9344 + _10117 + 388] = 0
                require ext_code.size(address(_8931))
                call address(_8931).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9849, _10015, address(this.address), 128, mem[_9344 + 356 len ceil32(_10117) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8629 + _8489 < _8297:
                    revert with 'NH{q', 17
                return _8297, _8629 + _8489, _8629 + _8489 - _8297
            _8182 = mem[(7 * ceil32(return_data.size)) + 576]
            _8300 = mem[(8 * ceil32(return_data.size)) + 992]
            if 3 >= _2393:
                revert with 'NH{q', 50
            _8492 = mem[(8 * ceil32(return_data.size)) + 1216]
            if 2 >= _2393:
                revert with 'NH{q', 50
            _8630 = mem[(8 * ceil32(return_data.size)) + 1184]
            if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            _8935 = mem[(7 * ceil32(return_data.size)) + 544]
            _8936 = mem[(7 * ceil32(return_data.size)) + 768]
            if 2 >= _2393:
                revert with 'NH{q', 50
            _9180 = mem[(8 * ceil32(return_data.size)) + 1184]
            if 3 >= _2393:
                revert with 'NH{q', 50
            _9345 = mem[(8 * ceil32(return_data.size)) + 1216]
            _9346 = mem[64]
            mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
            mem[mem[64] + 64] = address(_8182)
            mem[mem[64] + 96] = address(_8936)
            mem[mem[64] + 128] = _8300
            mem[mem[64] + 160] = _9180
            mem[mem[64] + 192] = _9345
            _9660 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _2393:
                revert with 'NH{q', 50
            _9852 = mem[(8 * ceil32(return_data.size)) + 1120]
            if 1 >= _2393:
                revert with 'NH{q', 50
            _10017 = mem[(8 * ceil32(return_data.size)) + 1152]
            mem[_9346 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9346 + 228] = _9852
            mem[_9346 + 260] = _10017
            mem[_9346 + 292] = this.address
            mem[_9346 + 324] = 128
            _10118 = mem[_9660]
            mem[_9346 + 356] = mem[_9660]
            mem[_9346 + 388 len ceil32(_10118)] = mem[_9660 + 32 len ceil32(_10118)]
            if ceil32(_10118) > _10118:
                mem[_9346 + _10118 + 388] = 0
            require ext_code.size(address(_8935))
            call address(_8935).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9852, _10017, address(this.address), 128, mem[_9346 + 356 len ceil32(_10118) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8630 + _8492 < _8300:
                revert with 'NH{q', 17
            return _8300, _8630 + _8492, _8630 + _8492 - _8300
        mem[(7 * ceil32(return_data.size)) + 736] = 1
        mem[(7 * ceil32(return_data.size)) + 768] = address(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 800] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 832] = address(arg1)
        mem[(7 * ceil32(return_data.size)) + 864] = 0
        mem[(7 * ceil32(return_data.size)) + 896] = 0
        mem[(7 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(7 * ceil32(return_data.size)) + 960] = 0
        mem[(7 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 996] = 0
        mem[(7 * ceil32(return_data.size)) + 1028] = 0
        mem[(7 * ceil32(return_data.size)) + 1060] = 0
        mem[(7 * ceil32(return_data.size)) + 1092] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 1124] = address(arg1)
        mem[(7 * ceil32(return_data.size)) + 1156] = 0
        mem[(7 * ceil32(return_data.size)) + 1188] = 0
        mem[(7 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(7 * ceil32(return_data.size)) + 1252] = 1
        mem[(7 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 1316] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 1348] = address(arg1)
        mem[(7 * ceil32(return_data.size)) + 1380] = 0
        mem[(7 * ceil32(return_data.size)) + 1412] = 0
        mem[(7 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(7 * ceil32(return_data.size)) + 1476] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x21444fed with:
                gas gas_remaining wei
               args 0, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, address(ext_call.return_data[0]), address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1230 = mem[(7 * ceil32(return_data.size)) + 992 len 4], 0
        require mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
        require return_data.size - mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
        if not bool((8 * ceil32(return_data.size)) + 1088 <= test266151307()):
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + 1088
        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
        mem[(8 * ceil32(return_data.size)) + 992] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
        require mem[(7 * ceil32(return_data.size)) + _1230 + 1024] == bool(mem[(7 * ceil32(return_data.size)) + _1230 + 1024])
        mem[(8 * ceil32(return_data.size)) + 1024] = mem[(7 * ceil32(return_data.size)) + _1230 + 1024]
        _2378 = mem[(7 * ceil32(return_data.size)) + _1230 + 1056]
        require mem[(7 * ceil32(return_data.size)) + _1230 + 1056] <= test266151307()
        require (7 * ceil32(return_data.size)) + _1230 + mem[(7 * ceil32(return_data.size)) + _1230 + 1056] + 1023 < (7 * ceil32(return_data.size)) + return_data.size + 992
        _2394 = mem[(7 * ceil32(return_data.size)) + _1230 + mem[(7 * ceil32(return_data.size)) + _1230 + 1056] + 992]
        if mem[(7 * ceil32(return_data.size)) + _1230 + mem[(7 * ceil32(return_data.size)) + _1230 + 1056] + 992] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1230 + mem[(7 * ceil32(return_data.size)) + _1230 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + _1230 + mem[(7 * ceil32(return_data.size)) + _1230 + 1056] + 992]) + 97 < 96:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1230 + mem[(7 * ceil32(return_data.size)) + _1230 + 1056] + 992]) + 1089
        mem[(8 * ceil32(return_data.size)) + 1088] = _2394
        require _1230 + _2378 + (32 * _2394) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _1230 + _2378 + 1024
        t = (8 * ceil32(return_data.size)) + 1120
        while idx < _2394:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 1056] = (8 * ceil32(return_data.size)) + 1088
        if not mem[(8 * ceil32(return_data.size)) + 1024]:
            revert with 0, 'S3'
        if not mem[(7 * ceil32(return_data.size)) + 736]:
            if not mem[(7 * ceil32(return_data.size)) + 736]:
                _8183 = mem[(7 * ceil32(return_data.size)) + 608]
                _8303 = mem[(8 * ceil32(return_data.size)) + 992]
                if 3 >= _2394:
                    revert with 'NH{q', 50
                _8495 = mem[(8 * ceil32(return_data.size)) + 1216]
                if 2 >= _2394:
                    revert with 'NH{q', 50
                _8631 = mem[(8 * ceil32(return_data.size)) + 1184]
                if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _8939 = mem[(7 * ceil32(return_data.size)) + 544]
                _8940 = mem[(7 * ceil32(return_data.size)) + 768]
                if 2 >= _2394:
                    revert with 'NH{q', 50
                _9183 = mem[(8 * ceil32(return_data.size)) + 1184]
                if 3 >= _2394:
                    revert with 'NH{q', 50
                _9347 = mem[(8 * ceil32(return_data.size)) + 1216]
                _9348 = mem[64]
                mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
                mem[mem[64] + 64] = address(_8183)
                mem[mem[64] + 96] = address(_8940)
                mem[mem[64] + 128] = _8303
                mem[mem[64] + 160] = _9183
                mem[mem[64] + 192] = _9347
                _9663 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _2394:
                    revert with 'NH{q', 50
                _9855 = mem[(8 * ceil32(return_data.size)) + 1120]
                if 1 >= _2394:
                    revert with 'NH{q', 50
                _10019 = mem[(8 * ceil32(return_data.size)) + 1152]
                mem[_9348 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9348 + 228] = _9855
                mem[_9348 + 260] = _10019
                mem[_9348 + 292] = this.address
                mem[_9348 + 324] = 128
                _10119 = mem[_9663]
                mem[_9348 + 356] = mem[_9663]
                mem[_9348 + 388 len ceil32(_10119)] = mem[_9663 + 32 len ceil32(_10119)]
                if ceil32(_10119) > _10119:
                    mem[_9348 + _10119 + 388] = 0
                require ext_code.size(address(_8939))
                call address(_8939).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9855, _10019, address(this.address), 128, mem[_9348 + 356 len ceil32(_10119) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8631 + _8495 < _8303:
                    revert with 'NH{q', 17
                return _8303, _8631 + _8495, _8631 + _8495 - _8303
            _8184 = mem[(7 * ceil32(return_data.size)) + 576]
            _8306 = mem[(8 * ceil32(return_data.size)) + 992]
            if 3 >= _2394:
                revert with 'NH{q', 50
            _8498 = mem[(8 * ceil32(return_data.size)) + 1216]
            if 2 >= _2394:
                revert with 'NH{q', 50
            _8632 = mem[(8 * ceil32(return_data.size)) + 1184]
            if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            _8943 = mem[(7 * ceil32(return_data.size)) + 544]
            _8944 = mem[(7 * ceil32(return_data.size)) + 768]
            if 2 >= _2394:
                revert with 'NH{q', 50
            _9186 = mem[(8 * ceil32(return_data.size)) + 1184]
            if 3 >= _2394:
                revert with 'NH{q', 50
            _9349 = mem[(8 * ceil32(return_data.size)) + 1216]
            _9350 = mem[64]
            mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
            mem[mem[64] + 64] = address(_8184)
            mem[mem[64] + 96] = address(_8944)
            mem[mem[64] + 128] = _8306
            mem[mem[64] + 160] = _9186
            mem[mem[64] + 192] = _9349
            _9666 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _2394:
                revert with 'NH{q', 50
            _9858 = mem[(8 * ceil32(return_data.size)) + 1120]
            if 1 >= _2394:
                revert with 'NH{q', 50
            _10021 = mem[(8 * ceil32(return_data.size)) + 1152]
            mem[_9350 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9350 + 228] = _9858
            mem[_9350 + 260] = _10021
            mem[_9350 + 292] = this.address
            mem[_9350 + 324] = 128
            _10120 = mem[_9666]
            mem[_9350 + 356] = mem[_9666]
            mem[_9350 + 388 len ceil32(_10120)] = mem[_9666 + 32 len ceil32(_10120)]
            if ceil32(_10120) > _10120:
                mem[_9350 + _10120 + 388] = 0
            require ext_code.size(address(_8943))
            call address(_8943).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9858, _10021, address(this.address), 128, mem[_9350 + 356 len ceil32(_10120) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8632 + _8498 < _8306:
                revert with 'NH{q', 17
            return _8306, _8632 + _8498, _8632 + _8498 - _8306
        if not mem[(7 * ceil32(return_data.size)) + 736]:
            _8185 = mem[(7 * ceil32(return_data.size)) + 608]
            _8309 = mem[(8 * ceil32(return_data.size)) + 992]
            if 3 >= _2394:
                revert with 'NH{q', 50
            _8501 = mem[(8 * ceil32(return_data.size)) + 1216]
            if 2 >= _2394:
                revert with 'NH{q', 50
            _8633 = mem[(8 * ceil32(return_data.size)) + 1184]
            if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            _8947 = mem[(7 * ceil32(return_data.size)) + 544]
            _8948 = mem[(7 * ceil32(return_data.size)) + 768]
            if 2 >= _2394:
                revert with 'NH{q', 50
            _9189 = mem[(8 * ceil32(return_data.size)) + 1184]
            if 3 >= _2394:
                revert with 'NH{q', 50
            _9351 = mem[(8 * ceil32(return_data.size)) + 1216]
            _9352 = mem[64]
            mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
            mem[mem[64] + 64] = address(_8185)
            mem[mem[64] + 96] = address(_8948)
            mem[mem[64] + 128] = _8309
            mem[mem[64] + 160] = _9189
            mem[mem[64] + 192] = _9351
            _9669 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _2394:
                revert with 'NH{q', 50
            _9861 = mem[(8 * ceil32(return_data.size)) + 1120]
            if 1 >= _2394:
                revert with 'NH{q', 50
            _10023 = mem[(8 * ceil32(return_data.size)) + 1152]
            mem[_9352 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9352 + 228] = _9861
            mem[_9352 + 260] = _10023
            mem[_9352 + 292] = this.address
            mem[_9352 + 324] = 128
            _10121 = mem[_9669]
            mem[_9352 + 356] = mem[_9669]
            mem[_9352 + 388 len ceil32(_10121)] = mem[_9669 + 32 len ceil32(_10121)]
            if ceil32(_10121) > _10121:
                mem[_9352 + _10121 + 388] = 0
            require ext_code.size(address(_8947))
            call address(_8947).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9861, _10023, address(this.address), 128, mem[_9352 + 356 len ceil32(_10121) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8633 + _8501 < _8309:
                revert with 'NH{q', 17
            return _8309, _8633 + _8501, _8633 + _8501 - _8309
        _8186 = mem[(7 * ceil32(return_data.size)) + 576]
        _8312 = mem[(8 * ceil32(return_data.size)) + 992]
        if 3 >= _2394:
            revert with 'NH{q', 50
        _8504 = mem[(8 * ceil32(return_data.size)) + 1216]
        if 2 >= _2394:
            revert with 'NH{q', 50
        _8634 = mem[(8 * ceil32(return_data.size)) + 1184]
        if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
            revert with 'NH{q', 17
        _8951 = mem[(7 * ceil32(return_data.size)) + 544]
        _8952 = mem[(7 * ceil32(return_data.size)) + 768]
        if 2 >= _2394:
            revert with 'NH{q', 50
        _9192 = mem[(8 * ceil32(return_data.size)) + 1184]
        if 3 >= _2394:
            revert with 'NH{q', 50
        _9353 = mem[(8 * ceil32(return_data.size)) + 1216]
        _9354 = mem[64]
        mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
        mem[mem[64] + 64] = address(_8186)
        mem[mem[64] + 96] = address(_8952)
        mem[mem[64] + 128] = _8312
        mem[mem[64] + 160] = _9192
        mem[mem[64] + 192] = _9353
        _9672 = mem[64]
        mem[mem[64]] = 192
        mem[64] = mem[64] + 224
        if 0 >= _2394:
            revert with 'NH{q', 50
        _9864 = mem[(8 * ceil32(return_data.size)) + 1120]
        if 1 >= _2394:
            revert with 'NH{q', 50
        _10025 = mem[(8 * ceil32(return_data.size)) + 1152]
        mem[_9354 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_9354 + 228] = _9864
        mem[_9354 + 260] = _10025
        mem[_9354 + 292] = this.address
        mem[_9354 + 324] = 128
        _10122 = mem[_9672]
        mem[_9354 + 356] = mem[_9672]
        mem[_9354 + 388 len ceil32(_10122)] = mem[_9672 + 32 len ceil32(_10122)]
        if ceil32(_10122) > _10122:
            mem[_9354 + _10122 + 388] = 0
        require ext_code.size(address(_8951))
        call address(_8951).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _9864, _10025, address(this.address), 128, mem[_9354 + 356 len ceil32(_10122) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _8634 + _8504 < _8312:
            revert with 'NH{q', 17
        return _8312, _8634 + _8504, _8634 + _8504 - _8312
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg4))
    staticcall address(arg4).factory() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        mem[(2 * ceil32(return_data.size)) + 548] = 10^6
        mem[(2 * ceil32(return_data.size)) + 580] = 10^12
        mem[(2 * ceil32(return_data.size)) + 612] = 10^12
        require ext_code.size(address(arg3))
        staticcall address(arg3).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -101:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
            revert with 'NH{q', 17
        if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 548] = 10^6
        mem[(4 * ceil32(return_data.size)) + 580] = 10^12
        mem[(4 * ceil32(return_data.size)) + 612] = 10^12
        require ext_code.size(address(arg4))
        staticcall address(arg4).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -101:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
            revert with 'NH{q', 17
        if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 544] = address(ext_call.return_data[0])
        if address(arg1) < address(arg2):
            mem[(6 * ceil32(return_data.size)) + 576] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 608] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 640] = 0
            mem[(6 * ceil32(return_data.size)) + 672] = 0
            mem[(6 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            if address(arg1) == address(arg1):
                mem[(6 * ceil32(return_data.size)) + 736] = 0
                mem[(6 * ceil32(return_data.size)) + 768] = 0
                mem[(6 * ceil32(return_data.size)) + 800] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 832] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 864] = 0
                mem[(6 * ceil32(return_data.size)) + 896] = 0
                mem[(6 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(6 * ceil32(return_data.size)) + 960] = 1
                mem[(6 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 996] = 0
                mem[(6 * ceil32(return_data.size)) + 1028] = 0
                mem[(6 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 1092] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 1124] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 1156] = 0
                mem[(6 * ceil32(return_data.size)) + 1188] = 0
                mem[(6 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(6 * ceil32(return_data.size)) + 1252] = 0
                mem[(6 * ceil32(return_data.size)) + 1284] = 0
                mem[(6 * ceil32(return_data.size)) + 1316] = address(arg1)
                mem[(6 * ceil32(return_data.size)) + 1348] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 1380] = 0
                mem[(6 * ceil32(return_data.size)) + 1412] = 0
                mem[(6 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(6 * ceil32(return_data.size)) + 1476] = 1
                require ext_code.size(stor0)
                staticcall stor0.0x21444fed with:
                        gas gas_remaining wei
                       args 0, 0, address(ext_call.return_data[0]), address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _727 = mem[(6 * ceil32(return_data.size)) + 992 len 4], 0
                require mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                require return_data.size - mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                if not bool((7 * ceil32(return_data.size)) + 1088 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + 1088
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                mem[(7 * ceil32(return_data.size)) + 992] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                require mem[(6 * ceil32(return_data.size)) + _727 + 1024] == bool(mem[(6 * ceil32(return_data.size)) + _727 + 1024])
                mem[(7 * ceil32(return_data.size)) + 1024] = mem[(6 * ceil32(return_data.size)) + _727 + 1024]
                _1195 = mem[(6 * ceil32(return_data.size)) + _727 + 1056]
                require mem[(6 * ceil32(return_data.size)) + _727 + 1056] <= test266151307()
                require (6 * ceil32(return_data.size)) + _727 + mem[(6 * ceil32(return_data.size)) + _727 + 1056] + 1023 < (6 * ceil32(return_data.size)) + return_data.size + 992
                _1219 = mem[(6 * ceil32(return_data.size)) + _727 + mem[(6 * ceil32(return_data.size)) + _727 + 1056] + 992]
                if mem[(6 * ceil32(return_data.size)) + _727 + mem[(6 * ceil32(return_data.size)) + _727 + 1056] + 992] > test266151307():
                    revert with 'NH{q', 65
                if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _727 + mem[(6 * ceil32(return_data.size)) + _727 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + _727 + mem[(6 * ceil32(return_data.size)) + _727 + 1056] + 992]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _727 + mem[(6 * ceil32(return_data.size)) + _727 + 1056] + 992]) + 1089
                mem[(7 * ceil32(return_data.size)) + 1088] = _1219
                require _727 + _1195 + (32 * _1219) + 32 <= return_data.size
                idx = 0
                s = (6 * ceil32(return_data.size)) + _727 + _1195 + 1024
                t = (7 * ceil32(return_data.size)) + 1120
                while idx < _1219:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 1056] = (7 * ceil32(return_data.size)) + 1088
                if not mem[(7 * ceil32(return_data.size)) + 1024]:
                    revert with 0, 'S3'
                _3347 = mem[(7 * ceil32(return_data.size)) + 992]
                if 3 >= _1219:
                    revert with 'NH{q', 50
                _3667 = mem[(7 * ceil32(return_data.size)) + 1216]
                if 2 >= _1219:
                    revert with 'NH{q', 50
                _3851 = mem[(7 * ceil32(return_data.size)) + 1184]
                if mem[(7 * ceil32(return_data.size)) + 1184] > -mem[(7 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                if 2 >= _1219:
                    revert with 'NH{q', 50
                _4687 = mem[(7 * ceil32(return_data.size)) + 1184]
                if 3 >= _1219:
                    revert with 'NH{q', 50
                _4871 = mem[(7 * ceil32(return_data.size)) + 1216]
                _4872 = mem[64]
                mem[mem[64] + 32] = uint64(arg1) << 96
                mem[mem[64] + 64] = address(arg2)
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = _3347
                mem[mem[64] + 160] = _4687
                mem[mem[64] + 192] = _4871
                _5803 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _1219:
                    revert with 'NH{q', 50
                _6043 = mem[(7 * ceil32(return_data.size)) + 1120]
                if 1 >= _1219:
                    revert with 'NH{q', 50
                _6219 = mem[(7 * ceil32(return_data.size)) + 1152]
                mem[_4872 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_4872 + 228] = _6043
                mem[_4872 + 260] = _6219
                mem[_4872 + 292] = this.address
                mem[_4872 + 324] = 128
                _6731 = mem[_5803]
                mem[_4872 + 356] = mem[_5803]
                mem[_4872 + 388 len ceil32(_6731)] = mem[_5803 + 32 len ceil32(_6731)]
                if ceil32(_6731) > _6731:
                    mem[_4872 + _6731 + 388] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _6043, _6219, address(this.address), 128, mem[_4872 + 356 len ceil32(_6731) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _3851 + _3667 < _3347:
                    revert with 'NH{q', 17
                return _3347, _3851 + _3667, _3851 + _3667 - _3347
            mem[(6 * ceil32(return_data.size)) + 736] = 1
            mem[(6 * ceil32(return_data.size)) + 768] = 0
            mem[(6 * ceil32(return_data.size)) + 800] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 832] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 864] = 0
            mem[(6 * ceil32(return_data.size)) + 896] = 0
            mem[(6 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 960] = 0
            mem[(6 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 996] = 0
            mem[(6 * ceil32(return_data.size)) + 1028] = 0
            mem[(6 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 1092] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 1124] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 1156] = 0
            mem[(6 * ceil32(return_data.size)) + 1188] = 0
            mem[(6 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 1252] = 1
            mem[(6 * ceil32(return_data.size)) + 1284] = 0
            mem[(6 * ceil32(return_data.size)) + 1316] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 1348] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 1380] = 0
            mem[(6 * ceil32(return_data.size)) + 1412] = 0
            mem[(6 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 1476] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, address(ext_call.return_data[0]), address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _728 = mem[(6 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((7 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + 1088
            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(7 * ceil32(return_data.size)) + 992] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(6 * ceil32(return_data.size)) + _728 + 1024] == bool(mem[(6 * ceil32(return_data.size)) + _728 + 1024])
            mem[(7 * ceil32(return_data.size)) + 1024] = mem[(6 * ceil32(return_data.size)) + _728 + 1024]
            _1196 = mem[(6 * ceil32(return_data.size)) + _728 + 1056]
            require mem[(6 * ceil32(return_data.size)) + _728 + 1056] <= test266151307()
            require (6 * ceil32(return_data.size)) + _728 + mem[(6 * ceil32(return_data.size)) + _728 + 1056] + 1023 < (6 * ceil32(return_data.size)) + return_data.size + 992
            _1220 = mem[(6 * ceil32(return_data.size)) + _728 + mem[(6 * ceil32(return_data.size)) + _728 + 1056] + 992]
            if mem[(6 * ceil32(return_data.size)) + _728 + mem[(6 * ceil32(return_data.size)) + _728 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _728 + mem[(6 * ceil32(return_data.size)) + _728 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + _728 + mem[(6 * ceil32(return_data.size)) + _728 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _728 + mem[(6 * ceil32(return_data.size)) + _728 + 1056] + 992]) + 1089
            mem[(7 * ceil32(return_data.size)) + 1088] = _1220
            require _728 + _1196 + (32 * _1220) + 32 <= return_data.size
            idx = 0
            s = (6 * ceil32(return_data.size)) + _728 + _1196 + 1024
            t = (7 * ceil32(return_data.size)) + 1120
            while idx < _1220:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 1056] = (7 * ceil32(return_data.size)) + 1088
            if not mem[(7 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            _3368 = mem[(7 * ceil32(return_data.size)) + 992]
            if 3 >= _1220:
                revert with 'NH{q', 50
            _3688 = mem[(7 * ceil32(return_data.size)) + 1216]
            if 2 >= _1220:
                revert with 'NH{q', 50
            _3858 = mem[(7 * ceil32(return_data.size)) + 1184]
            if mem[(7 * ceil32(return_data.size)) + 1184] > -mem[(7 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            if 2 >= _1220:
                revert with 'NH{q', 50
            _4708 = mem[(7 * ceil32(return_data.size)) + 1184]
            if 3 >= _1220:
                revert with 'NH{q', 50
            _4885 = mem[(7 * ceil32(return_data.size)) + 1216]
            _4886 = mem[64]
            mem[mem[64] + 32] = uint64(arg2) << 96
            mem[mem[64] + 64] = address(arg1)
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = _3368
            mem[mem[64] + 160] = _4708
            mem[mem[64] + 192] = _4885
            _5824 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _1220:
                revert with 'NH{q', 50
            _6064 = mem[(7 * ceil32(return_data.size)) + 1120]
            if 1 >= _1220:
                revert with 'NH{q', 50
            _6233 = mem[(7 * ceil32(return_data.size)) + 1152]
            mem[_4886 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_4886 + 228] = _6064
            mem[_4886 + 260] = _6233
            mem[_4886 + 292] = this.address
            mem[_4886 + 324] = 128
            _6738 = mem[_5824]
            mem[_4886 + 356] = mem[_5824]
            mem[_4886 + 388 len ceil32(_6738)] = mem[_5824 + 32 len ceil32(_6738)]
            if ceil32(_6738) > _6738:
                mem[_4886 + _6738 + 388] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _6064, _6233, address(this.address), 128, mem[_4886 + 356 len ceil32(_6738) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _3858 + _3688 < _3368:
                revert with 'NH{q', 17
            return _3368, _3858 + _3688, _3858 + _3688 - _3368
        mem[(6 * ceil32(return_data.size)) + 576] = address(arg2)
        mem[(6 * ceil32(return_data.size)) + 608] = address(arg1)
        mem[(6 * ceil32(return_data.size)) + 640] = 0
        mem[(6 * ceil32(return_data.size)) + 672] = 0
        mem[(6 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        if address(arg2) == address(arg1):
            mem[(6 * ceil32(return_data.size)) + 736] = 0
            mem[(6 * ceil32(return_data.size)) + 768] = 0
            mem[(6 * ceil32(return_data.size)) + 800] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 832] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 864] = 0
            mem[(6 * ceil32(return_data.size)) + 896] = 0
            mem[(6 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 960] = 1
            mem[(6 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 996] = 0
            mem[(6 * ceil32(return_data.size)) + 1028] = 0
            mem[(6 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 1092] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 1124] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 1156] = 0
            mem[(6 * ceil32(return_data.size)) + 1188] = 0
            mem[(6 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 1252] = 0
            mem[(6 * ceil32(return_data.size)) + 1284] = 0
            mem[(6 * ceil32(return_data.size)) + 1316] = address(arg2)
            mem[(6 * ceil32(return_data.size)) + 1348] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 1380] = 0
            mem[(6 * ceil32(return_data.size)) + 1412] = 0
            mem[(6 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(6 * ceil32(return_data.size)) + 1476] = 1
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, address(ext_call.return_data[0]), address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _729 = mem[(6 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((7 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + 1088
            require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(7 * ceil32(return_data.size)) + 992] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(6 * ceil32(return_data.size)) + _729 + 1024] == bool(mem[(6 * ceil32(return_data.size)) + _729 + 1024])
            mem[(7 * ceil32(return_data.size)) + 1024] = mem[(6 * ceil32(return_data.size)) + _729 + 1024]
            _1197 = mem[(6 * ceil32(return_data.size)) + _729 + 1056]
            require mem[(6 * ceil32(return_data.size)) + _729 + 1056] <= test266151307()
            require (6 * ceil32(return_data.size)) + _729 + mem[(6 * ceil32(return_data.size)) + _729 + 1056] + 1023 < (6 * ceil32(return_data.size)) + return_data.size + 992
            _1221 = mem[(6 * ceil32(return_data.size)) + _729 + mem[(6 * ceil32(return_data.size)) + _729 + 1056] + 992]
            if mem[(6 * ceil32(return_data.size)) + _729 + mem[(6 * ceil32(return_data.size)) + _729 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _729 + mem[(6 * ceil32(return_data.size)) + _729 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + _729 + mem[(6 * ceil32(return_data.size)) + _729 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _729 + mem[(6 * ceil32(return_data.size)) + _729 + 1056] + 992]) + 1089
            mem[(7 * ceil32(return_data.size)) + 1088] = _1221
            require _729 + _1197 + (32 * _1221) + 32 <= return_data.size
            idx = 0
            s = (6 * ceil32(return_data.size)) + _729 + _1197 + 1024
            t = (7 * ceil32(return_data.size)) + 1120
            while idx < _1221:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 1056] = (7 * ceil32(return_data.size)) + 1088
            if not mem[(7 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            _3371 = mem[(7 * ceil32(return_data.size)) + 992]
            if 3 >= _1221:
                revert with 'NH{q', 50
            _3691 = mem[(7 * ceil32(return_data.size)) + 1216]
            if 2 >= _1221:
                revert with 'NH{q', 50
            _3859 = mem[(7 * ceil32(return_data.size)) + 1184]
            if mem[(7 * ceil32(return_data.size)) + 1184] > -mem[(7 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            if 2 >= _1221:
                revert with 'NH{q', 50
            _4711 = mem[(7 * ceil32(return_data.size)) + 1184]
            if 3 >= _1221:
                revert with 'NH{q', 50
            _4887 = mem[(7 * ceil32(return_data.size)) + 1216]
            _4888 = mem[64]
            mem[mem[64] + 32] = uint64(arg2) << 96
            mem[mem[64] + 64] = address(arg1)
            mem[mem[64] + 96] = 0
            mem[mem[64] + 128] = _3371
            mem[mem[64] + 160] = _4711
            mem[mem[64] + 192] = _4887
            _5827 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _1221:
                revert with 'NH{q', 50
            _6067 = mem[(7 * ceil32(return_data.size)) + 1120]
            if 1 >= _1221:
                revert with 'NH{q', 50
            _6235 = mem[(7 * ceil32(return_data.size)) + 1152]
            mem[_4888 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_4888 + 228] = _6067
            mem[_4888 + 260] = _6235
            mem[_4888 + 292] = this.address
            mem[_4888 + 324] = 128
            _6739 = mem[_5827]
            mem[_4888 + 356] = mem[_5827]
            mem[_4888 + 388 len ceil32(_6739)] = mem[_5827 + 32 len ceil32(_6739)]
            if ceil32(_6739) > _6739:
                mem[_4888 + _6739 + 388] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _6067, _6235, address(this.address), 128, mem[_4888 + 356 len ceil32(_6739) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _3859 + _3691 < _3371:
                revert with 'NH{q', 17
            return _3371, _3859 + _3691, _3859 + _3691 - _3371
        mem[(6 * ceil32(return_data.size)) + 736] = 1
        mem[(6 * ceil32(return_data.size)) + 768] = 0
        mem[(6 * ceil32(return_data.size)) + 800] = address(arg2)
        mem[(6 * ceil32(return_data.size)) + 832] = address(arg1)
        mem[(6 * ceil32(return_data.size)) + 864] = 0
        mem[(6 * ceil32(return_data.size)) + 896] = 0
        mem[(6 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(6 * ceil32(return_data.size)) + 960] = 0
        mem[(6 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 996] = 0
        mem[(6 * ceil32(return_data.size)) + 1028] = 0
        mem[(6 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 1092] = address(arg2)
        mem[(6 * ceil32(return_data.size)) + 1124] = address(arg1)
        mem[(6 * ceil32(return_data.size)) + 1156] = 0
        mem[(6 * ceil32(return_data.size)) + 1188] = 0
        mem[(6 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(6 * ceil32(return_data.size)) + 1252] = 1
        mem[(6 * ceil32(return_data.size)) + 1284] = 0
        mem[(6 * ceil32(return_data.size)) + 1316] = address(arg2)
        mem[(6 * ceil32(return_data.size)) + 1348] = address(arg1)
        mem[(6 * ceil32(return_data.size)) + 1380] = 0
        mem[(6 * ceil32(return_data.size)) + 1412] = 0
        mem[(6 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(6 * ceil32(return_data.size)) + 1476] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x21444fed with:
                gas gas_remaining wei
               args 0, 0, address(ext_call.return_data[0]), address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _730 = mem[(6 * ceil32(return_data.size)) + 992 len 4], 0
        require mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
        require return_data.size - mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
        if not bool((7 * ceil32(return_data.size)) + 1088 <= test266151307()):
            revert with 'NH{q', 65
        mem[64] = (7 * ceil32(return_data.size)) + 1088
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
        mem[(7 * ceil32(return_data.size)) + 992] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
        require mem[(6 * ceil32(return_data.size)) + _730 + 1024] == bool(mem[(6 * ceil32(return_data.size)) + _730 + 1024])
        mem[(7 * ceil32(return_data.size)) + 1024] = mem[(6 * ceil32(return_data.size)) + _730 + 1024]
        _1198 = mem[(6 * ceil32(return_data.size)) + _730 + 1056]
        require mem[(6 * ceil32(return_data.size)) + _730 + 1056] <= test266151307()
        require (6 * ceil32(return_data.size)) + _730 + mem[(6 * ceil32(return_data.size)) + _730 + 1056] + 1023 < (6 * ceil32(return_data.size)) + return_data.size + 992
        _1222 = mem[(6 * ceil32(return_data.size)) + _730 + mem[(6 * ceil32(return_data.size)) + _730 + 1056] + 992]
        if mem[(6 * ceil32(return_data.size)) + _730 + mem[(6 * ceil32(return_data.size)) + _730 + 1056] + 992] > test266151307():
            revert with 'NH{q', 65
        if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _730 + mem[(6 * ceil32(return_data.size)) + _730 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + _730 + mem[(6 * ceil32(return_data.size)) + _730 + 1056] + 992]) + 97 < 96:
            revert with 'NH{q', 65
        mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + _730 + mem[(6 * ceil32(return_data.size)) + _730 + 1056] + 992]) + 1089
        mem[(7 * ceil32(return_data.size)) + 1088] = mem[(6 * ceil32(return_data.size)) + _730 + mem[(6 * ceil32(return_data.size)) + _730 + 1056] + 992]
        require _730 + _1198 + (32 * _1222) + 32 <= return_data.size
        idx = 0
        s = (6 * ceil32(return_data.size)) + _730 + _1198 + 1024
        t = (7 * ceil32(return_data.size)) + 1120
        while idx < _1222:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 1056] = (7 * ceil32(return_data.size)) + 1088
        if not mem[(7 * ceil32(return_data.size)) + 1024]:
            revert with 0, 'S3'
        _3392 = mem[(7 * ceil32(return_data.size)) + 992]
        if 3 >= mem[(7 * ceil32(return_data.size)) + 1088]:
            revert with 'NH{q', 50
        _3712 = mem[(7 * ceil32(return_data.size)) + 1216]
        if 2 >= mem[(7 * ceil32(return_data.size)) + 1088]:
            revert with 'NH{q', 50
        _3866 = mem[(7 * ceil32(return_data.size)) + 1184]
        if mem[(7 * ceil32(return_data.size)) + 1184] > -mem[(7 * ceil32(return_data.size)) + 1216] - 1:
            revert with 'NH{q', 17
        if 2 >= mem[(7 * ceil32(return_data.size)) + 1088]:
            revert with 'NH{q', 50
        _4732 = mem[(7 * ceil32(return_data.size)) + 1184]
        if 3 >= mem[(7 * ceil32(return_data.size)) + 1088]:
            revert with 'NH{q', 50
        _4901 = mem[(7 * ceil32(return_data.size)) + 1216]
        _4902 = mem[64]
        mem[mem[64] + 32] = uint64(arg1) << 96
        mem[mem[64] + 64] = address(arg2)
        mem[mem[64] + 96] = 0
        mem[mem[64] + 128] = _3392
        mem[mem[64] + 160] = _4732
        mem[mem[64] + 192] = _4901
        _5848 = mem[64]
        mem[mem[64]] = 192
        mem[64] = mem[64] + 224
        if 0 >= mem[(7 * ceil32(return_data.size)) + 1088]:
            revert with 'NH{q', 50
        _6088 = mem[(7 * ceil32(return_data.size)) + 1120]
        if 1 >= mem[(7 * ceil32(return_data.size)) + 1088]:
            revert with 'NH{q', 50
        _6249 = mem[(7 * ceil32(return_data.size)) + 1152]
        mem[_4902 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_4902 + 228] = _6088
        mem[_4902 + 260] = _6249
        mem[_4902 + 292] = this.address
        mem[_4902 + 324] = 128
        _6746 = mem[_5848]
        mem[_4902 + 356] = mem[_5848]
        mem[_4902 + 388 len ceil32(_6746)] = mem[_5848 + 32 len ceil32(_6746)]
        if ceil32(_6746) > _6746:
            mem[_4902 + _6746 + 388] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _6088, _6249, address(this.address), 128, mem[_4902 + 356 len ceil32(_6746) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _3866 + _3712 < _3392:
            revert with 'NH{q', 17
        return _3392, _3866 + _3712, _3866 + _3712 - _3392
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 548] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 580] = address(arg2)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 548] = 10^6
        mem[(6 * ceil32(return_data.size)) + 580] = 10^12
        mem[(6 * ceil32(return_data.size)) + 612] = 10^12
        require ext_code.size(address(arg3))
        staticcall address(arg3).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[(6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -101:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
            revert with 'NH{q', 17
        if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 548] = 10^6
        mem[(7 * ceil32(return_data.size)) + 580] = 10^12
        mem[(7 * ceil32(return_data.size)) + 612] = 10^12
        require ext_code.size(address(arg4))
        staticcall address(arg4).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[(7 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -101:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
            revert with 'NH{q', 17
        if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + 544] = address(ext_call.return_data[0])
        if address(arg1) < address(arg2):
            mem[(8 * ceil32(return_data.size)) + 576] = address(arg1)
            mem[(8 * ceil32(return_data.size)) + 608] = address(arg2)
            mem[(8 * ceil32(return_data.size)) + 640] = 0
            mem[(8 * ceil32(return_data.size)) + 672] = 0
            mem[(8 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            if address(arg1) == address(arg1):
                mem[(8 * ceil32(return_data.size)) + 736] = 0
                mem[(8 * ceil32(return_data.size)) + 768] = address(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 800] = address(arg1)
                mem[(8 * ceil32(return_data.size)) + 832] = address(arg2)
                mem[(8 * ceil32(return_data.size)) + 864] = 0
                mem[(8 * ceil32(return_data.size)) + 896] = 0
                mem[(8 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(8 * ceil32(return_data.size)) + 960] = 1
                mem[(8 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 996] = 0
                mem[(8 * ceil32(return_data.size)) + 1028] = 0
                mem[(8 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 1092] = address(arg1)
                mem[(8 * ceil32(return_data.size)) + 1124] = address(arg2)
                mem[(8 * ceil32(return_data.size)) + 1156] = 0
                mem[(8 * ceil32(return_data.size)) + 1188] = 0
                mem[(8 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(8 * ceil32(return_data.size)) + 1252] = 0
                mem[(8 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 1316] = address(arg1)
                mem[(8 * ceil32(return_data.size)) + 1348] = address(arg2)
                mem[(8 * ceil32(return_data.size)) + 1380] = 0
                mem[(8 * ceil32(return_data.size)) + 1412] = 0
                mem[(8 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                mem[(8 * ceil32(return_data.size)) + 1476] = 1
                require ext_code.size(stor0)
                staticcall stor0.0x21444fed with:
                        gas gas_remaining wei
                       args 0, 0, address(ext_call.return_data[0]), address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, address(ext_call.return_data[0]), address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1367 = mem[(8 * ceil32(return_data.size)) + 992 len 4], 0
                require mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
                require return_data.size - mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
                if not bool((10 * ceil32(return_data.size)) + 1088 <= test266151307()):
                    revert with 'NH{q', 65
                mem[64] = (10 * ceil32(return_data.size)) + 1088
                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                mem[(10 * ceil32(return_data.size)) + 992] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
                require mem[(8 * ceil32(return_data.size)) + _1367 + 1024] == bool(mem[(8 * ceil32(return_data.size)) + _1367 + 1024])
                mem[(10 * ceil32(return_data.size)) + 1024] = mem[(8 * ceil32(return_data.size)) + _1367 + 1024]
                _2703 = mem[(8 * ceil32(return_data.size)) + _1367 + 1056]
                require mem[(8 * ceil32(return_data.size)) + _1367 + 1056] <= test266151307()
                require (8 * ceil32(return_data.size)) + _1367 + mem[(8 * ceil32(return_data.size)) + _1367 + 1056] + 1023 < (8 * ceil32(return_data.size)) + return_data.size + 992
                _2727 = mem[(8 * ceil32(return_data.size)) + _1367 + mem[(8 * ceil32(return_data.size)) + _1367 + 1056] + 992]
                if mem[(8 * ceil32(return_data.size)) + _1367 + mem[(8 * ceil32(return_data.size)) + _1367 + 1056] + 992] > test266151307():
                    revert with 'NH{q', 65
                if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + _1367 + mem[(8 * ceil32(return_data.size)) + _1367 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + _1367 + mem[(8 * ceil32(return_data.size)) + _1367 + 1056] + 992]) + 97 < 96:
                    revert with 'NH{q', 65
                mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + _1367 + mem[(8 * ceil32(return_data.size)) + _1367 + 1056] + 992]) + 1089
                mem[(10 * ceil32(return_data.size)) + 1088] = mem[(8 * ceil32(return_data.size)) + _1367 + mem[(8 * ceil32(return_data.size)) + _1367 + 1056] + 992]
                require _1367 + _2703 + (32 * _2727) + 32 <= return_data.size
                idx = 0
                s = (8 * ceil32(return_data.size)) + _1367 + _2703 + 1024
                t = (10 * ceil32(return_data.size)) + 1120
                while idx < _2727:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(10 * ceil32(return_data.size)) + 1056] = (10 * ceil32(return_data.size)) + 1088
                if not mem[(10 * ceil32(return_data.size)) + 1024]:
                    revert with 0, 'S3'
                _8363 = mem[(10 * ceil32(return_data.size)) + 992]
                if 3 >= mem[(10 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _8555 = mem[(10 * ceil32(return_data.size)) + 1216]
                if 2 >= mem[(10 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _8651 = mem[(10 * ceil32(return_data.size)) + 1184]
                if mem[(10 * ceil32(return_data.size)) + 1184] > -mem[(10 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                if 2 >= mem[(10 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _9243 = mem[(10 * ceil32(return_data.size)) + 1184]
                if 3 >= mem[(10 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _9387 = mem[(10 * ceil32(return_data.size)) + 1216]
                _9388 = mem[64]
                mem[mem[64] + 32] = uint64(arg1) << 96
                mem[mem[64] + 64] = address(arg2)
                mem[mem[64] + 96] = address(ext_call.return_data[0])
                mem[mem[64] + 128] = _8363
                mem[mem[64] + 160] = _9243
                mem[mem[64] + 192] = _9387
                _9723 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= mem[(10 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _9915 = mem[(10 * ceil32(return_data.size)) + 1120]
                if 1 >= mem[(10 * ceil32(return_data.size)) + 1088]:
                    revert with 'NH{q', 50
                _10059 = mem[(10 * ceil32(return_data.size)) + 1152]
                mem[_9388 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9388 + 228] = _9915
                mem[_9388 + 260] = _10059
                mem[_9388 + 292] = this.address
                mem[_9388 + 324] = 128
                _10139 = mem[_9723]
                mem[_9388 + 356] = mem[_9723]
                mem[_9388 + 388 len ceil32(_10139)] = mem[_9723 + 32 len ceil32(_10139)]
                if ceil32(_10139) > _10139:
                    mem[_9388 + _10139 + 388] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9915, _10059, address(this.address), 128, mem[_9388 + 356 len ceil32(_10139) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8651 + _8555 < _8363:
                    revert with 'NH{q', 17
                return _8363, _8651 + _8555, _8651 + _8555 - _8363
            mem[(8 * ceil32(return_data.size)) + 736] = 1
            mem[(8 * ceil32(return_data.size)) + 768] = address(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 800] = address(arg1)
            mem[(8 * ceil32(return_data.size)) + 832] = address(arg2)
            mem[(8 * ceil32(return_data.size)) + 864] = 0
            mem[(8 * ceil32(return_data.size)) + 896] = 0
            mem[(8 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(8 * ceil32(return_data.size)) + 960] = 0
            mem[(8 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 996] = 0
            mem[(8 * ceil32(return_data.size)) + 1028] = 0
            mem[(8 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 1092] = address(arg1)
            mem[(8 * ceil32(return_data.size)) + 1124] = address(arg2)
            mem[(8 * ceil32(return_data.size)) + 1156] = 0
            mem[(8 * ceil32(return_data.size)) + 1188] = 0
            mem[(8 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(8 * ceil32(return_data.size)) + 1252] = 1
            mem[(8 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 1316] = address(arg1)
            mem[(8 * ceil32(return_data.size)) + 1348] = address(arg2)
            mem[(8 * ceil32(return_data.size)) + 1380] = 0
            mem[(8 * ceil32(return_data.size)) + 1412] = 0
            mem[(8 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(8 * ceil32(return_data.size)) + 1476] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, address(ext_call.return_data[0]), address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, address(ext_call.return_data[0]), address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1368 = mem[(8 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((10 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (10 * ceil32(return_data.size)) + 1088
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(10 * ceil32(return_data.size)) + 992] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(8 * ceil32(return_data.size)) + _1368 + 1024] == bool(mem[(8 * ceil32(return_data.size)) + _1368 + 1024])
            mem[(10 * ceil32(return_data.size)) + 1024] = mem[(8 * ceil32(return_data.size)) + _1368 + 1024]
            _2704 = mem[(8 * ceil32(return_data.size)) + _1368 + 1056]
            require mem[(8 * ceil32(return_data.size)) + _1368 + 1056] <= test266151307()
            require (8 * ceil32(return_data.size)) + _1368 + mem[(8 * ceil32(return_data.size)) + _1368 + 1056] + 1023 < (8 * ceil32(return_data.size)) + return_data.size + 992
            _2728 = mem[(8 * ceil32(return_data.size)) + _1368 + mem[(8 * ceil32(return_data.size)) + _1368 + 1056] + 992]
            if mem[(8 * ceil32(return_data.size)) + _1368 + mem[(8 * ceil32(return_data.size)) + _1368 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + _1368 + mem[(8 * ceil32(return_data.size)) + _1368 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + _1368 + mem[(8 * ceil32(return_data.size)) + _1368 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + _1368 + mem[(8 * ceil32(return_data.size)) + _1368 + 1056] + 992]) + 1089
            mem[(10 * ceil32(return_data.size)) + 1088] = _2728
            require _1368 + _2704 + (32 * _2728) + 32 <= return_data.size
            idx = 0
            s = (8 * ceil32(return_data.size)) + _1368 + _2704 + 1024
            t = (10 * ceil32(return_data.size)) + 1120
            while idx < _2728:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(10 * ceil32(return_data.size)) + 1056] = (10 * ceil32(return_data.size)) + 1088
            if not mem[(10 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            _8384 = mem[(10 * ceil32(return_data.size)) + 992]
            if 3 >= _2728:
                revert with 'NH{q', 50
            _8576 = mem[(10 * ceil32(return_data.size)) + 1216]
            if 2 >= _2728:
                revert with 'NH{q', 50
            _8658 = mem[(10 * ceil32(return_data.size)) + 1184]
            if mem[(10 * ceil32(return_data.size)) + 1184] > -mem[(10 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            if 2 >= _2728:
                revert with 'NH{q', 50
            _9264 = mem[(10 * ceil32(return_data.size)) + 1184]
            if 3 >= _2728:
                revert with 'NH{q', 50
            _9401 = mem[(10 * ceil32(return_data.size)) + 1216]
            _9402 = mem[64]
            mem[mem[64] + 32] = uint64(arg2) << 96
            mem[mem[64] + 64] = address(arg1)
            mem[mem[64] + 96] = address(ext_call.return_data[0])
            mem[mem[64] + 128] = _8384
            mem[mem[64] + 160] = _9264
            mem[mem[64] + 192] = _9401
            _9744 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _2728:
                revert with 'NH{q', 50
            _9936 = mem[(10 * ceil32(return_data.size)) + 1120]
            if 1 >= _2728:
                revert with 'NH{q', 50
            _10073 = mem[(10 * ceil32(return_data.size)) + 1152]
            mem[_9402 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9402 + 228] = _9936
            mem[_9402 + 260] = _10073
            mem[_9402 + 292] = this.address
            mem[_9402 + 324] = 128
            _10146 = mem[_9744]
            mem[_9402 + 356] = mem[_9744]
            mem[_9402 + 388 len ceil32(_10146)] = mem[_9744 + 32 len ceil32(_10146)]
            if ceil32(_10146) > _10146:
                mem[_9402 + _10146 + 388] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9936, _10073, address(this.address), 128, mem[_9402 + 356 len ceil32(_10146) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8658 + _8576 < _8384:
                revert with 'NH{q', 17
            return _8384, _8658 + _8576, _8658 + _8576 - _8384
        mem[(8 * ceil32(return_data.size)) + 576] = address(arg2)
        mem[(8 * ceil32(return_data.size)) + 608] = address(arg1)
        mem[(8 * ceil32(return_data.size)) + 640] = 0
        mem[(8 * ceil32(return_data.size)) + 672] = 0
        mem[(8 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        if address(arg2) == address(arg1):
            mem[(8 * ceil32(return_data.size)) + 736] = 0
            mem[(8 * ceil32(return_data.size)) + 768] = address(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 800] = address(arg2)
            mem[(8 * ceil32(return_data.size)) + 832] = address(arg1)
            mem[(8 * ceil32(return_data.size)) + 864] = 0
            mem[(8 * ceil32(return_data.size)) + 896] = 0
            mem[(8 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(8 * ceil32(return_data.size)) + 960] = 1
            mem[(8 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 996] = 0
            mem[(8 * ceil32(return_data.size)) + 1028] = 0
            mem[(8 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 1092] = address(arg2)
            mem[(8 * ceil32(return_data.size)) + 1124] = address(arg1)
            mem[(8 * ceil32(return_data.size)) + 1156] = 0
            mem[(8 * ceil32(return_data.size)) + 1188] = 0
            mem[(8 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(8 * ceil32(return_data.size)) + 1252] = 0
            mem[(8 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 1316] = address(arg2)
            mem[(8 * ceil32(return_data.size)) + 1348] = address(arg1)
            mem[(8 * ceil32(return_data.size)) + 1380] = 0
            mem[(8 * ceil32(return_data.size)) + 1412] = 0
            mem[(8 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(8 * ceil32(return_data.size)) + 1476] = 1
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, address(ext_call.return_data[0]), address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, address(ext_call.return_data[0]), address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1369 = mem[(8 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((10 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (10 * ceil32(return_data.size)) + 1088
            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(10 * ceil32(return_data.size)) + 992] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(8 * ceil32(return_data.size)) + _1369 + 1024] == bool(mem[(8 * ceil32(return_data.size)) + _1369 + 1024])
            mem[(10 * ceil32(return_data.size)) + 1024] = mem[(8 * ceil32(return_data.size)) + _1369 + 1024]
            _2705 = mem[(8 * ceil32(return_data.size)) + _1369 + 1056]
            require mem[(8 * ceil32(return_data.size)) + _1369 + 1056] <= test266151307()
            require (8 * ceil32(return_data.size)) + _1369 + mem[(8 * ceil32(return_data.size)) + _1369 + 1056] + 1023 < (8 * ceil32(return_data.size)) + return_data.size + 992
            _2729 = mem[(8 * ceil32(return_data.size)) + _1369 + mem[(8 * ceil32(return_data.size)) + _1369 + 1056] + 992]
            if mem[(8 * ceil32(return_data.size)) + _1369 + mem[(8 * ceil32(return_data.size)) + _1369 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + _1369 + mem[(8 * ceil32(return_data.size)) + _1369 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + _1369 + mem[(8 * ceil32(return_data.size)) + _1369 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + _1369 + mem[(8 * ceil32(return_data.size)) + _1369 + 1056] + 992]) + 1089
            mem[(10 * ceil32(return_data.size)) + 1088] = _2729
            require _1369 + _2705 + (32 * _2729) + 32 <= return_data.size
            idx = 0
            s = (8 * ceil32(return_data.size)) + _1369 + _2705 + 1024
            t = (10 * ceil32(return_data.size)) + 1120
            while idx < _2729:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(10 * ceil32(return_data.size)) + 1056] = (10 * ceil32(return_data.size)) + 1088
            if not mem[(10 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            _8387 = mem[(10 * ceil32(return_data.size)) + 992]
            if 3 >= _2729:
                revert with 'NH{q', 50
            _8579 = mem[(10 * ceil32(return_data.size)) + 1216]
            if 2 >= _2729:
                revert with 'NH{q', 50
            _8659 = mem[(10 * ceil32(return_data.size)) + 1184]
            if mem[(10 * ceil32(return_data.size)) + 1184] > -mem[(10 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            if 2 >= _2729:
                revert with 'NH{q', 50
            _9267 = mem[(10 * ceil32(return_data.size)) + 1184]
            if 3 >= _2729:
                revert with 'NH{q', 50
            _9403 = mem[(10 * ceil32(return_data.size)) + 1216]
            _9404 = mem[64]
            mem[mem[64] + 32] = uint64(arg2) << 96
            mem[mem[64] + 64] = address(arg1)
            mem[mem[64] + 96] = address(ext_call.return_data[0])
            mem[mem[64] + 128] = _8387
            mem[mem[64] + 160] = _9267
            mem[mem[64] + 192] = _9403
            _9747 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _2729:
                revert with 'NH{q', 50
            _9939 = mem[(10 * ceil32(return_data.size)) + 1120]
            if 1 >= _2729:
                revert with 'NH{q', 50
            _10075 = mem[(10 * ceil32(return_data.size)) + 1152]
            mem[_9404 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9404 + 228] = _9939
            mem[_9404 + 260] = _10075
            mem[_9404 + 292] = this.address
            mem[_9404 + 324] = 128
            _10147 = mem[_9747]
            mem[_9404 + 356] = mem[_9747]
            mem[_9404 + 388 len ceil32(_10147)] = mem[_9747 + 32 len ceil32(_10147)]
            if ceil32(_10147) > _10147:
                mem[_9404 + _10147 + 388] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9939, _10075, address(this.address), 128, mem[_9404 + 356 len ceil32(_10147) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8659 + _8579 < _8387:
                revert with 'NH{q', 17
            return _8387, _8659 + _8579, _8659 + _8579 - _8387
        mem[(8 * ceil32(return_data.size)) + 736] = 1
        mem[(8 * ceil32(return_data.size)) + 768] = address(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 800] = address(arg2)
        mem[(8 * ceil32(return_data.size)) + 832] = address(arg1)
        mem[(8 * ceil32(return_data.size)) + 864] = 0
        mem[(8 * ceil32(return_data.size)) + 896] = 0
        mem[(8 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(8 * ceil32(return_data.size)) + 960] = 0
        mem[(8 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 996] = 0
        mem[(8 * ceil32(return_data.size)) + 1028] = 0
        mem[(8 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 1092] = address(arg2)
        mem[(8 * ceil32(return_data.size)) + 1124] = address(arg1)
        mem[(8 * ceil32(return_data.size)) + 1156] = 0
        mem[(8 * ceil32(return_data.size)) + 1188] = 0
        mem[(8 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(8 * ceil32(return_data.size)) + 1252] = 1
        mem[(8 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 1316] = address(arg2)
        mem[(8 * ceil32(return_data.size)) + 1348] = address(arg1)
        mem[(8 * ceil32(return_data.size)) + 1380] = 0
        mem[(8 * ceil32(return_data.size)) + 1412] = 0
        mem[(8 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(8 * ceil32(return_data.size)) + 1476] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x21444fed with:
                gas gas_remaining wei
               args 0, 0, address(ext_call.return_data[0]), address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, address(ext_call.return_data[0]), address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1370 = mem[(8 * ceil32(return_data.size)) + 992 len 4], 0
        require mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
        require return_data.size - mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
        if not bool((10 * ceil32(return_data.size)) + 1088 <= test266151307()):
            revert with 'NH{q', 65
        mem[64] = (10 * ceil32(return_data.size)) + 1088
        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
        mem[(10 * ceil32(return_data.size)) + 992] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
        require mem[(8 * ceil32(return_data.size)) + _1370 + 1024] == bool(mem[(8 * ceil32(return_data.size)) + _1370 + 1024])
        mem[(10 * ceil32(return_data.size)) + 1024] = mem[(8 * ceil32(return_data.size)) + _1370 + 1024]
        _2706 = mem[(8 * ceil32(return_data.size)) + _1370 + 1056]
        require mem[(8 * ceil32(return_data.size)) + _1370 + 1056] <= test266151307()
        require (8 * ceil32(return_data.size)) + _1370 + mem[(8 * ceil32(return_data.size)) + _1370 + 1056] + 1023 < (8 * ceil32(return_data.size)) + return_data.size + 992
        _2730 = mem[(8 * ceil32(return_data.size)) + _1370 + mem[(8 * ceil32(return_data.size)) + _1370 + 1056] + 992]
        if mem[(8 * ceil32(return_data.size)) + _1370 + mem[(8 * ceil32(return_data.size)) + _1370 + 1056] + 992] > test266151307():
            revert with 'NH{q', 65
        if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + _1370 + mem[(8 * ceil32(return_data.size)) + _1370 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + _1370 + mem[(8 * ceil32(return_data.size)) + _1370 + 1056] + 992]) + 97 < 96:
            revert with 'NH{q', 65
        mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + _1370 + mem[(8 * ceil32(return_data.size)) + _1370 + 1056] + 992]) + 1089
        mem[(10 * ceil32(return_data.size)) + 1088] = _2730
        require _1370 + _2706 + (32 * _2730) + 32 <= return_data.size
        idx = 0
        s = (8 * ceil32(return_data.size)) + _1370 + _2706 + 1024
        t = (10 * ceil32(return_data.size)) + 1120
        while idx < _2730:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(10 * ceil32(return_data.size)) + 1056] = (10 * ceil32(return_data.size)) + 1088
        if not mem[(10 * ceil32(return_data.size)) + 1024]:
            revert with 0, 'S3'
        _8408 = mem[(10 * ceil32(return_data.size)) + 992]
        if 3 >= _2730:
            revert with 'NH{q', 50
        _8600 = mem[(10 * ceil32(return_data.size)) + 1216]
        if 2 >= _2730:
            revert with 'NH{q', 50
        _8666 = mem[(10 * ceil32(return_data.size)) + 1184]
        if mem[(10 * ceil32(return_data.size)) + 1184] > -mem[(10 * ceil32(return_data.size)) + 1216] - 1:
            revert with 'NH{q', 17
        if 2 >= _2730:
            revert with 'NH{q', 50
        _9288 = mem[(10 * ceil32(return_data.size)) + 1184]
        if 3 >= _2730:
            revert with 'NH{q', 50
        _9417 = mem[(10 * ceil32(return_data.size)) + 1216]
        _9418 = mem[64]
        mem[mem[64] + 32] = uint64(arg1) << 96
        mem[mem[64] + 64] = address(arg2)
        mem[mem[64] + 96] = address(ext_call.return_data[0])
        mem[mem[64] + 128] = _8408
        mem[mem[64] + 160] = _9288
        mem[mem[64] + 192] = _9417
        _9768 = mem[64]
        mem[mem[64]] = 192
        mem[64] = mem[64] + 224
        if 0 >= _2730:
            revert with 'NH{q', 50
        _9960 = mem[(10 * ceil32(return_data.size)) + 1120]
        if 1 >= _2730:
            revert with 'NH{q', 50
        _10089 = mem[(10 * ceil32(return_data.size)) + 1152]
        mem[_9418 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_9418 + 228] = _9960
        mem[_9418 + 260] = _10089
        mem[_9418 + 292] = this.address
        mem[_9418 + 324] = 128
        _10154 = mem[_9768]
        mem[_9418 + 356] = mem[_9768]
        mem[_9418 + 388 len ceil32(_10154)] = mem[_9768 + 32 len ceil32(_10154)]
        if ceil32(_10154) > _10154:
            mem[_9418 + _10154 + 388] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _9960, _10089, address(this.address), 128, mem[_9418 + 356 len ceil32(_10154) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _8666 + _8600 < _8408:
            revert with 'NH{q', 17
        return _8408, _8666 + _8600, _8666 + _8600 - _8408
    mem[(4 * ceil32(return_data.size)) + 548] = 10^6
    mem[(4 * ceil32(return_data.size)) + 580] = 10^12
    mem[(4 * ceil32(return_data.size)) + 612] = 10^12
    require ext_code.size(address(arg3))
    staticcall address(arg3).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 10^6, 10^12, 10^12
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -101:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
        revert with 'NH{q', 17
    if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
        revert with 'NH{q', 17
    mem[(6 * ceil32(return_data.size)) + 548] = 10^6
    mem[(6 * ceil32(return_data.size)) + 580] = 10^12
    mem[(6 * ceil32(return_data.size)) + 612] = 10^12
    require ext_code.size(address(arg4))
    staticcall address(arg4).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 10^6, 10^12, 10^12
    mem[(6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -101:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
        revert with 'NH{q', 17
    if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
        revert with 'NH{q', 17
    mem[(7 * ceil32(return_data.size)) + 544] = address(ext_call.return_data[0])
    if address(arg1) < address(arg2):
        mem[(7 * ceil32(return_data.size)) + 576] = address(arg1)
        mem[(7 * ceil32(return_data.size)) + 608] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 640] = 0
        mem[(7 * ceil32(return_data.size)) + 672] = 0
        mem[(7 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        if address(arg1) == address(arg1):
            mem[(7 * ceil32(return_data.size)) + 736] = 0
            mem[(7 * ceil32(return_data.size)) + 768] = 0
            mem[(7 * ceil32(return_data.size)) + 800] = address(arg1)
            mem[(7 * ceil32(return_data.size)) + 832] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 864] = 0
            mem[(7 * ceil32(return_data.size)) + 896] = 0
            mem[(7 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(7 * ceil32(return_data.size)) + 960] = 1
            mem[(7 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 996] = 0
            mem[(7 * ceil32(return_data.size)) + 1028] = 0
            mem[(7 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 1092] = address(arg1)
            mem[(7 * ceil32(return_data.size)) + 1124] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 1156] = 0
            mem[(7 * ceil32(return_data.size)) + 1188] = 0
            mem[(7 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(7 * ceil32(return_data.size)) + 1252] = 0
            mem[(7 * ceil32(return_data.size)) + 1284] = 0
            mem[(7 * ceil32(return_data.size)) + 1316] = address(arg1)
            mem[(7 * ceil32(return_data.size)) + 1348] = address(arg2)
            mem[(7 * ceil32(return_data.size)) + 1380] = 0
            mem[(7 * ceil32(return_data.size)) + 1412] = 0
            mem[(7 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
            mem[(7 * ceil32(return_data.size)) + 1476] = 1
            require ext_code.size(stor0)
            staticcall stor0.0x21444fed with:
                    gas gas_remaining wei
                   args 0, 0, address(ext_call.return_data[0]), address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1231 = mem[(7 * ceil32(return_data.size)) + 992 len 4], 0
            require mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
            require return_data.size - mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
            if not bool((8 * ceil32(return_data.size)) + 1088 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + 1088
            require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            mem[(8 * ceil32(return_data.size)) + 992] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
            require mem[(7 * ceil32(return_data.size)) + _1231 + 1024] == bool(mem[(7 * ceil32(return_data.size)) + _1231 + 1024])
            mem[(8 * ceil32(return_data.size)) + 1024] = mem[(7 * ceil32(return_data.size)) + _1231 + 1024]
            _2379 = mem[(7 * ceil32(return_data.size)) + _1231 + 1056]
            require mem[(7 * ceil32(return_data.size)) + _1231 + 1056] <= test266151307()
            require (7 * ceil32(return_data.size)) + _1231 + mem[(7 * ceil32(return_data.size)) + _1231 + 1056] + 1023 < (7 * ceil32(return_data.size)) + return_data.size + 992
            _2395 = mem[(7 * ceil32(return_data.size)) + _1231 + mem[(7 * ceil32(return_data.size)) + _1231 + 1056] + 992]
            if mem[(7 * ceil32(return_data.size)) + _1231 + mem[(7 * ceil32(return_data.size)) + _1231 + 1056] + 992] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1231 + mem[(7 * ceil32(return_data.size)) + _1231 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + _1231 + mem[(7 * ceil32(return_data.size)) + _1231 + 1056] + 992]) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1231 + mem[(7 * ceil32(return_data.size)) + _1231 + 1056] + 992]) + 1089
            mem[(8 * ceil32(return_data.size)) + 1088] = _2395
            require _1231 + _2379 + (32 * _2395) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _1231 + _2379 + 1024
            t = (8 * ceil32(return_data.size)) + 1120
            while idx < _2395:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 1056] = (8 * ceil32(return_data.size)) + 1088
            if not mem[(8 * ceil32(return_data.size)) + 1024]:
                revert with 0, 'S3'
            if not mem[(7 * ceil32(return_data.size)) + 736]:
                if not mem[(7 * ceil32(return_data.size)) + 736]:
                    _8187 = mem[(7 * ceil32(return_data.size)) + 608]
                    _8315 = mem[(8 * ceil32(return_data.size)) + 992]
                    if 3 >= _2395:
                        revert with 'NH{q', 50
                    _8507 = mem[(8 * ceil32(return_data.size)) + 1216]
                    if 2 >= _2395:
                        revert with 'NH{q', 50
                    _8635 = mem[(8 * ceil32(return_data.size)) + 1184]
                    if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                        revert with 'NH{q', 17
                    _8971 = mem[(7 * ceil32(return_data.size)) + 544]
                    _8972 = mem[(7 * ceil32(return_data.size)) + 768]
                    if 2 >= _2395:
                        revert with 'NH{q', 50
                    _9195 = mem[(8 * ceil32(return_data.size)) + 1184]
                    if 3 >= _2395:
                        revert with 'NH{q', 50
                    _9355 = mem[(8 * ceil32(return_data.size)) + 1216]
                    _9356 = mem[64]
                    mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
                    mem[mem[64] + 64] = address(_8187)
                    mem[mem[64] + 96] = address(_8972)
                    mem[mem[64] + 128] = _8315
                    mem[mem[64] + 160] = _9195
                    mem[mem[64] + 192] = _9355
                    _9675 = mem[64]
                    mem[mem[64]] = 192
                    mem[64] = mem[64] + 224
                    if 0 >= _2395:
                        revert with 'NH{q', 50
                    _9867 = mem[(8 * ceil32(return_data.size)) + 1120]
                    if 1 >= _2395:
                        revert with 'NH{q', 50
                    _10027 = mem[(8 * ceil32(return_data.size)) + 1152]
                    mem[_9356 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_9356 + 228] = _9867
                    mem[_9356 + 260] = _10027
                    mem[_9356 + 292] = this.address
                    mem[_9356 + 324] = 128
                    _10123 = mem[_9675]
                    mem[_9356 + 356] = mem[_9675]
                    mem[_9356 + 388 len ceil32(_10123)] = mem[_9675 + 32 len ceil32(_10123)]
                    if ceil32(_10123) > _10123:
                        mem[_9356 + _10123 + 388] = 0
                    require ext_code.size(address(_8971))
                    call address(_8971).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _9867, _10027, address(this.address), 128, mem[_9356 + 356 len ceil32(_10123) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _8635 + _8507 < _8315:
                        revert with 'NH{q', 17
                    return _8315, _8635 + _8507, _8635 + _8507 - _8315
                _8188 = mem[(7 * ceil32(return_data.size)) + 576]
                _8318 = mem[(8 * ceil32(return_data.size)) + 992]
                if 3 >= _2395:
                    revert with 'NH{q', 50
                _8510 = mem[(8 * ceil32(return_data.size)) + 1216]
                if 2 >= _2395:
                    revert with 'NH{q', 50
                _8636 = mem[(8 * ceil32(return_data.size)) + 1184]
                if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _8975 = mem[(7 * ceil32(return_data.size)) + 544]
                _8976 = mem[(7 * ceil32(return_data.size)) + 768]
                if 2 >= _2395:
                    revert with 'NH{q', 50
                _9198 = mem[(8 * ceil32(return_data.size)) + 1184]
                if 3 >= _2395:
                    revert with 'NH{q', 50
                _9357 = mem[(8 * ceil32(return_data.size)) + 1216]
                _9358 = mem[64]
                mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
                mem[mem[64] + 64] = address(_8188)
                mem[mem[64] + 96] = address(_8976)
                mem[mem[64] + 128] = _8318
                mem[mem[64] + 160] = _9198
                mem[mem[64] + 192] = _9357
                _9678 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _2395:
                    revert with 'NH{q', 50
                _9870 = mem[(8 * ceil32(return_data.size)) + 1120]
                if 1 >= _2395:
                    revert with 'NH{q', 50
                _10029 = mem[(8 * ceil32(return_data.size)) + 1152]
                mem[_9358 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9358 + 228] = _9870
                mem[_9358 + 260] = _10029
                mem[_9358 + 292] = this.address
                mem[_9358 + 324] = 128
                _10124 = mem[_9678]
                mem[_9358 + 356] = mem[_9678]
                mem[_9358 + 388 len ceil32(_10124)] = mem[_9678 + 32 len ceil32(_10124)]
                if ceil32(_10124) > _10124:
                    mem[_9358 + _10124 + 388] = 0
                require ext_code.size(address(_8975))
                call address(_8975).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9870, _10029, address(this.address), 128, mem[_9358 + 356 len ceil32(_10124) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8636 + _8510 < _8318:
                    revert with 'NH{q', 17
                return _8318, _8636 + _8510, _8636 + _8510 - _8318
            if not mem[(7 * ceil32(return_data.size)) + 736]:
                _8189 = mem[(7 * ceil32(return_data.size)) + 608]
                _8321 = mem[(8 * ceil32(return_data.size)) + 992]
                if 3 >= _2395:
                    revert with 'NH{q', 50
                _8513 = mem[(8 * ceil32(return_data.size)) + 1216]
                if 2 >= _2395:
                    revert with 'NH{q', 50
                _8637 = mem[(8 * ceil32(return_data.size)) + 1184]
                if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _8979 = mem[(7 * ceil32(return_data.size)) + 544]
                _8980 = mem[(7 * ceil32(return_data.size)) + 768]
                if 2 >= _2395:
                    revert with 'NH{q', 50
                _9201 = mem[(8 * ceil32(return_data.size)) + 1184]
                if 3 >= _2395:
                    revert with 'NH{q', 50
                _9359 = mem[(8 * ceil32(return_data.size)) + 1216]
                _9360 = mem[64]
                mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
                mem[mem[64] + 64] = address(_8189)
                mem[mem[64] + 96] = address(_8980)
                mem[mem[64] + 128] = _8321
                mem[mem[64] + 160] = _9201
                mem[mem[64] + 192] = _9359
                _9681 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _2395:
                    revert with 'NH{q', 50
                _9873 = mem[(8 * ceil32(return_data.size)) + 1120]
                if 1 >= _2395:
                    revert with 'NH{q', 50
                _10031 = mem[(8 * ceil32(return_data.size)) + 1152]
                mem[_9360 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9360 + 228] = _9873
                mem[_9360 + 260] = _10031
                mem[_9360 + 292] = this.address
                mem[_9360 + 324] = 128
                _10125 = mem[_9681]
                mem[_9360 + 356] = mem[_9681]
                mem[_9360 + 388 len ceil32(_10125)] = mem[_9681 + 32 len ceil32(_10125)]
                if ceil32(_10125) > _10125:
                    mem[_9360 + _10125 + 388] = 0
                require ext_code.size(address(_8979))
                call address(_8979).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9873, _10031, address(this.address), 128, mem[_9360 + 356 len ceil32(_10125) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8637 + _8513 < _8321:
                    revert with 'NH{q', 17
                return _8321, _8637 + _8513, _8637 + _8513 - _8321
            _8190 = mem[(7 * ceil32(return_data.size)) + 576]
            _8324 = mem[(8 * ceil32(return_data.size)) + 992]
            if 3 >= _2395:
                revert with 'NH{q', 50
            _8516 = mem[(8 * ceil32(return_data.size)) + 1216]
            if 2 >= _2395:
                revert with 'NH{q', 50
            _8638 = mem[(8 * ceil32(return_data.size)) + 1184]
            if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            _8983 = mem[(7 * ceil32(return_data.size)) + 544]
            _8984 = mem[(7 * ceil32(return_data.size)) + 768]
            if 2 >= _2395:
                revert with 'NH{q', 50
            _9204 = mem[(8 * ceil32(return_data.size)) + 1184]
            if 3 >= _2395:
                revert with 'NH{q', 50
            _9361 = mem[(8 * ceil32(return_data.size)) + 1216]
            _9362 = mem[64]
            mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
            mem[mem[64] + 64] = address(_8190)
            mem[mem[64] + 96] = address(_8984)
            mem[mem[64] + 128] = _8324
            mem[mem[64] + 160] = _9204
            mem[mem[64] + 192] = _9361
            _9684 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _2395:
                revert with 'NH{q', 50
            _9876 = mem[(8 * ceil32(return_data.size)) + 1120]
            if 1 >= _2395:
                revert with 'NH{q', 50
            _10033 = mem[(8 * ceil32(return_data.size)) + 1152]
            mem[_9362 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9362 + 228] = _9876
            mem[_9362 + 260] = _10033
            mem[_9362 + 292] = this.address
            mem[_9362 + 324] = 128
            _10126 = mem[_9684]
            mem[_9362 + 356] = mem[_9684]
            mem[_9362 + 388 len ceil32(_10126)] = mem[_9684 + 32 len ceil32(_10126)]
            if ceil32(_10126) > _10126:
                mem[_9362 + _10126 + 388] = 0
            require ext_code.size(address(_8983))
            call address(_8983).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9876, _10033, address(this.address), 128, mem[_9362 + 356 len ceil32(_10126) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8638 + _8516 < _8324:
                revert with 'NH{q', 17
            return _8324, _8638 + _8516, _8638 + _8516 - _8324
        mem[(7 * ceil32(return_data.size)) + 736] = 1
        mem[(7 * ceil32(return_data.size)) + 768] = 0
        mem[(7 * ceil32(return_data.size)) + 800] = address(arg1)
        mem[(7 * ceil32(return_data.size)) + 832] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 864] = 0
        mem[(7 * ceil32(return_data.size)) + 896] = 0
        mem[(7 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(7 * ceil32(return_data.size)) + 960] = 0
        mem[(7 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 996] = 0
        mem[(7 * ceil32(return_data.size)) + 1028] = 0
        mem[(7 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 1092] = address(arg1)
        mem[(7 * ceil32(return_data.size)) + 1124] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 1156] = 0
        mem[(7 * ceil32(return_data.size)) + 1188] = 0
        mem[(7 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(7 * ceil32(return_data.size)) + 1252] = 1
        mem[(7 * ceil32(return_data.size)) + 1284] = 0
        mem[(7 * ceil32(return_data.size)) + 1316] = address(arg1)
        mem[(7 * ceil32(return_data.size)) + 1348] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 1380] = 0
        mem[(7 * ceil32(return_data.size)) + 1412] = 0
        mem[(7 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(7 * ceil32(return_data.size)) + 1476] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x21444fed with:
                gas gas_remaining wei
               args 0, 0, address(ext_call.return_data[0]), address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, 0, address(arg1), address(arg2), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1232 = mem[(7 * ceil32(return_data.size)) + 992 len 4], 0
        require mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
        require return_data.size - mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
        if not bool((8 * ceil32(return_data.size)) + 1088 <= test266151307()):
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + 1088
        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
        mem[(8 * ceil32(return_data.size)) + 992] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
        require mem[(7 * ceil32(return_data.size)) + _1232 + 1024] == bool(mem[(7 * ceil32(return_data.size)) + _1232 + 1024])
        mem[(8 * ceil32(return_data.size)) + 1024] = mem[(7 * ceil32(return_data.size)) + _1232 + 1024]
        _2380 = mem[(7 * ceil32(return_data.size)) + _1232 + 1056]
        require mem[(7 * ceil32(return_data.size)) + _1232 + 1056] <= test266151307()
        require (7 * ceil32(return_data.size)) + _1232 + mem[(7 * ceil32(return_data.size)) + _1232 + 1056] + 1023 < (7 * ceil32(return_data.size)) + return_data.size + 992
        _2396 = mem[(7 * ceil32(return_data.size)) + _1232 + mem[(7 * ceil32(return_data.size)) + _1232 + 1056] + 992]
        if mem[(7 * ceil32(return_data.size)) + _1232 + mem[(7 * ceil32(return_data.size)) + _1232 + 1056] + 992] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1232 + mem[(7 * ceil32(return_data.size)) + _1232 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + _1232 + mem[(7 * ceil32(return_data.size)) + _1232 + 1056] + 992]) + 97 < 96:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1232 + mem[(7 * ceil32(return_data.size)) + _1232 + 1056] + 992]) + 1089
        mem[(8 * ceil32(return_data.size)) + 1088] = _2396
        require _1232 + _2380 + (32 * _2396) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _1232 + _2380 + 1024
        t = (8 * ceil32(return_data.size)) + 1120
        while idx < _2396:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 1056] = (8 * ceil32(return_data.size)) + 1088
        if not mem[(8 * ceil32(return_data.size)) + 1024]:
            revert with 0, 'S3'
        if not mem[(7 * ceil32(return_data.size)) + 736]:
            if not mem[(7 * ceil32(return_data.size)) + 736]:
                _8191 = mem[(7 * ceil32(return_data.size)) + 608]
                _8327 = mem[(8 * ceil32(return_data.size)) + 992]
                if 3 >= _2396:
                    revert with 'NH{q', 50
                _8519 = mem[(8 * ceil32(return_data.size)) + 1216]
                if 2 >= _2396:
                    revert with 'NH{q', 50
                _8639 = mem[(8 * ceil32(return_data.size)) + 1184]
                if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _8987 = mem[(7 * ceil32(return_data.size)) + 544]
                _8988 = mem[(7 * ceil32(return_data.size)) + 768]
                if 2 >= _2396:
                    revert with 'NH{q', 50
                _9207 = mem[(8 * ceil32(return_data.size)) + 1184]
                if 3 >= _2396:
                    revert with 'NH{q', 50
                _9363 = mem[(8 * ceil32(return_data.size)) + 1216]
                _9364 = mem[64]
                mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
                mem[mem[64] + 64] = address(_8191)
                mem[mem[64] + 96] = address(_8988)
                mem[mem[64] + 128] = _8327
                mem[mem[64] + 160] = _9207
                mem[mem[64] + 192] = _9363
                _9687 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _2396:
                    revert with 'NH{q', 50
                _9879 = mem[(8 * ceil32(return_data.size)) + 1120]
                if 1 >= _2396:
                    revert with 'NH{q', 50
                _10035 = mem[(8 * ceil32(return_data.size)) + 1152]
                mem[_9364 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9364 + 228] = _9879
                mem[_9364 + 260] = _10035
                mem[_9364 + 292] = this.address
                mem[_9364 + 324] = 128
                _10127 = mem[_9687]
                mem[_9364 + 356] = mem[_9687]
                mem[_9364 + 388 len ceil32(_10127)] = mem[_9687 + 32 len ceil32(_10127)]
                if ceil32(_10127) > _10127:
                    mem[_9364 + _10127 + 388] = 0
                require ext_code.size(address(_8987))
                call address(_8987).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9879, _10035, address(this.address), 128, mem[_9364 + 356 len ceil32(_10127) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8639 + _8519 < _8327:
                    revert with 'NH{q', 17
                return _8327, _8639 + _8519, _8639 + _8519 - _8327
            _8192 = mem[(7 * ceil32(return_data.size)) + 576]
            _8330 = mem[(8 * ceil32(return_data.size)) + 992]
            if 3 >= _2396:
                revert with 'NH{q', 50
            _8522 = mem[(8 * ceil32(return_data.size)) + 1216]
            if 2 >= _2396:
                revert with 'NH{q', 50
            _8640 = mem[(8 * ceil32(return_data.size)) + 1184]
            if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            _8991 = mem[(7 * ceil32(return_data.size)) + 544]
            _8992 = mem[(7 * ceil32(return_data.size)) + 768]
            if 2 >= _2396:
                revert with 'NH{q', 50
            _9210 = mem[(8 * ceil32(return_data.size)) + 1184]
            if 3 >= _2396:
                revert with 'NH{q', 50
            _9365 = mem[(8 * ceil32(return_data.size)) + 1216]
            _9366 = mem[64]
            mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
            mem[mem[64] + 64] = address(_8192)
            mem[mem[64] + 96] = address(_8992)
            mem[mem[64] + 128] = _8330
            mem[mem[64] + 160] = _9210
            mem[mem[64] + 192] = _9365
            _9690 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _2396:
                revert with 'NH{q', 50
            _9882 = mem[(8 * ceil32(return_data.size)) + 1120]
            if 1 >= _2396:
                revert with 'NH{q', 50
            _10037 = mem[(8 * ceil32(return_data.size)) + 1152]
            mem[_9366 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9366 + 228] = _9882
            mem[_9366 + 260] = _10037
            mem[_9366 + 292] = this.address
            mem[_9366 + 324] = 128
            _10128 = mem[_9690]
            mem[_9366 + 356] = mem[_9690]
            mem[_9366 + 388 len ceil32(_10128)] = mem[_9690 + 32 len ceil32(_10128)]
            if ceil32(_10128) > _10128:
                mem[_9366 + _10128 + 388] = 0
            require ext_code.size(address(_8991))
            call address(_8991).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9882, _10037, address(this.address), 128, mem[_9366 + 356 len ceil32(_10128) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8640 + _8522 < _8330:
                revert with 'NH{q', 17
            return _8330, _8640 + _8522, _8640 + _8522 - _8330
        if not mem[(7 * ceil32(return_data.size)) + 736]:
            _8193 = mem[(7 * ceil32(return_data.size)) + 608]
            _8333 = mem[(8 * ceil32(return_data.size)) + 992]
            if 3 >= _2396:
                revert with 'NH{q', 50
            _8525 = mem[(8 * ceil32(return_data.size)) + 1216]
            if 2 >= _2396:
                revert with 'NH{q', 50
            _8641 = mem[(8 * ceil32(return_data.size)) + 1184]
            if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            _8995 = mem[(7 * ceil32(return_data.size)) + 544]
            _8996 = mem[(7 * ceil32(return_data.size)) + 768]
            if 2 >= _2396:
                revert with 'NH{q', 50
            _9213 = mem[(8 * ceil32(return_data.size)) + 1184]
            if 3 >= _2396:
                revert with 'NH{q', 50
            _9367 = mem[(8 * ceil32(return_data.size)) + 1216]
            _9368 = mem[64]
            mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
            mem[mem[64] + 64] = address(_8193)
            mem[mem[64] + 96] = address(_8996)
            mem[mem[64] + 128] = _8333
            mem[mem[64] + 160] = _9213
            mem[mem[64] + 192] = _9367
            _9693 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _2396:
                revert with 'NH{q', 50
            _9885 = mem[(8 * ceil32(return_data.size)) + 1120]
            if 1 >= _2396:
                revert with 'NH{q', 50
            _10039 = mem[(8 * ceil32(return_data.size)) + 1152]
            mem[_9368 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9368 + 228] = _9885
            mem[_9368 + 260] = _10039
            mem[_9368 + 292] = this.address
            mem[_9368 + 324] = 128
            _10129 = mem[_9693]
            mem[_9368 + 356] = mem[_9693]
            mem[_9368 + 388 len ceil32(_10129)] = mem[_9693 + 32 len ceil32(_10129)]
            if ceil32(_10129) > _10129:
                mem[_9368 + _10129 + 388] = 0
            require ext_code.size(address(_8995))
            call address(_8995).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9885, _10039, address(this.address), 128, mem[_9368 + 356 len ceil32(_10129) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8641 + _8525 < _8333:
                revert with 'NH{q', 17
            return _8333, _8641 + _8525, _8641 + _8525 - _8333
        _8194 = mem[(7 * ceil32(return_data.size)) + 576]
        _8336 = mem[(8 * ceil32(return_data.size)) + 992]
        if 3 >= _2396:
            revert with 'NH{q', 50
        _8528 = mem[(8 * ceil32(return_data.size)) + 1216]
        if 2 >= _2396:
            revert with 'NH{q', 50
        _8642 = mem[(8 * ceil32(return_data.size)) + 1184]
        if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
            revert with 'NH{q', 17
        _8999 = mem[(7 * ceil32(return_data.size)) + 544]
        _9000 = mem[(7 * ceil32(return_data.size)) + 768]
        if 2 >= _2396:
            revert with 'NH{q', 50
        _9216 = mem[(8 * ceil32(return_data.size)) + 1184]
        if 3 >= _2396:
            revert with 'NH{q', 50
        _9369 = mem[(8 * ceil32(return_data.size)) + 1216]
        _9370 = mem[64]
        mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
        mem[mem[64] + 64] = address(_8194)
        mem[mem[64] + 96] = address(_9000)
        mem[mem[64] + 128] = _8336
        mem[mem[64] + 160] = _9216
        mem[mem[64] + 192] = _9369
        _9696 = mem[64]
        mem[mem[64]] = 192
        mem[64] = mem[64] + 224
        if 0 >= _2396:
            revert with 'NH{q', 50
        _9888 = mem[(8 * ceil32(return_data.size)) + 1120]
        if 1 >= _2396:
            revert with 'NH{q', 50
        _10041 = mem[(8 * ceil32(return_data.size)) + 1152]
        mem[_9370 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_9370 + 228] = _9888
        mem[_9370 + 260] = _10041
        mem[_9370 + 292] = this.address
        mem[_9370 + 324] = 128
        _10130 = mem[_9696]
        mem[_9370 + 356] = mem[_9696]
        mem[_9370 + 388 len ceil32(_10130)] = mem[_9696 + 32 len ceil32(_10130)]
        if ceil32(_10130) > _10130:
            mem[_9370 + _10130 + 388] = 0
        require ext_code.size(address(_8999))
        call address(_8999).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _9888, _10041, address(this.address), 128, mem[_9370 + 356 len ceil32(_10130) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _8642 + _8528 < _8336:
            revert with 'NH{q', 17
        return _8336, _8642 + _8528, _8642 + _8528 - _8336
    mem[(7 * ceil32(return_data.size)) + 576] = address(arg2)
    mem[(7 * ceil32(return_data.size)) + 608] = address(arg1)
    mem[(7 * ceil32(return_data.size)) + 640] = 0
    mem[(7 * ceil32(return_data.size)) + 672] = 0
    mem[(7 * ceil32(return_data.size)) + 704] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
    if address(arg2) == address(arg1):
        mem[(7 * ceil32(return_data.size)) + 736] = 0
        mem[(7 * ceil32(return_data.size)) + 768] = 0
        mem[(7 * ceil32(return_data.size)) + 800] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 832] = address(arg1)
        mem[(7 * ceil32(return_data.size)) + 864] = 0
        mem[(7 * ceil32(return_data.size)) + 896] = 0
        mem[(7 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(7 * ceil32(return_data.size)) + 960] = 1
        mem[(7 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 996] = 0
        mem[(7 * ceil32(return_data.size)) + 1028] = 0
        mem[(7 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 1092] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 1124] = address(arg1)
        mem[(7 * ceil32(return_data.size)) + 1156] = 0
        mem[(7 * ceil32(return_data.size)) + 1188] = 0
        mem[(7 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(7 * ceil32(return_data.size)) + 1252] = 0
        mem[(7 * ceil32(return_data.size)) + 1284] = 0
        mem[(7 * ceil32(return_data.size)) + 1316] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 1348] = address(arg1)
        mem[(7 * ceil32(return_data.size)) + 1380] = 0
        mem[(7 * ceil32(return_data.size)) + 1412] = 0
        mem[(7 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
        mem[(7 * ceil32(return_data.size)) + 1476] = 1
        require ext_code.size(stor0)
        staticcall stor0.0x21444fed with:
                gas gas_remaining wei
               args 0, 0, address(ext_call.return_data[0]), address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1233 = mem[(7 * ceil32(return_data.size)) + 992 len 4], 0
        require mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
        require return_data.size - mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
        if not bool((8 * ceil32(return_data.size)) + 1088 <= test266151307()):
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + 1088
        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
        mem[(8 * ceil32(return_data.size)) + 992] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
        require mem[(7 * ceil32(return_data.size)) + _1233 + 1024] == bool(mem[(7 * ceil32(return_data.size)) + _1233 + 1024])
        mem[(8 * ceil32(return_data.size)) + 1024] = mem[(7 * ceil32(return_data.size)) + _1233 + 1024]
        _2381 = mem[(7 * ceil32(return_data.size)) + _1233 + 1056]
        require mem[(7 * ceil32(return_data.size)) + _1233 + 1056] <= test266151307()
        require (7 * ceil32(return_data.size)) + _1233 + mem[(7 * ceil32(return_data.size)) + _1233 + 1056] + 1023 < (7 * ceil32(return_data.size)) + return_data.size + 992
        _2397 = mem[(7 * ceil32(return_data.size)) + _1233 + mem[(7 * ceil32(return_data.size)) + _1233 + 1056] + 992]
        if mem[(7 * ceil32(return_data.size)) + _1233 + mem[(7 * ceil32(return_data.size)) + _1233 + 1056] + 992] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1233 + mem[(7 * ceil32(return_data.size)) + _1233 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + _1233 + mem[(7 * ceil32(return_data.size)) + _1233 + 1056] + 992]) + 97 < 96:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1233 + mem[(7 * ceil32(return_data.size)) + _1233 + 1056] + 992]) + 1089
        mem[(8 * ceil32(return_data.size)) + 1088] = _2397
        require _1233 + _2381 + (32 * _2397) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _1233 + _2381 + 1024
        t = (8 * ceil32(return_data.size)) + 1120
        while idx < _2397:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 1056] = (8 * ceil32(return_data.size)) + 1088
        if not mem[(8 * ceil32(return_data.size)) + 1024]:
            revert with 0, 'S3'
        if not mem[(7 * ceil32(return_data.size)) + 736]:
            if not mem[(7 * ceil32(return_data.size)) + 736]:
                _8195 = mem[(7 * ceil32(return_data.size)) + 608]
                _8339 = mem[(8 * ceil32(return_data.size)) + 992]
                if 3 >= _2397:
                    revert with 'NH{q', 50
                _8531 = mem[(8 * ceil32(return_data.size)) + 1216]
                if 2 >= _2397:
                    revert with 'NH{q', 50
                _8643 = mem[(8 * ceil32(return_data.size)) + 1184]
                if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                    revert with 'NH{q', 17
                _9003 = mem[(7 * ceil32(return_data.size)) + 544]
                _9004 = mem[(7 * ceil32(return_data.size)) + 768]
                if 2 >= _2397:
                    revert with 'NH{q', 50
                _9219 = mem[(8 * ceil32(return_data.size)) + 1184]
                if 3 >= _2397:
                    revert with 'NH{q', 50
                _9371 = mem[(8 * ceil32(return_data.size)) + 1216]
                _9372 = mem[64]
                mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
                mem[mem[64] + 64] = address(_8195)
                mem[mem[64] + 96] = address(_9004)
                mem[mem[64] + 128] = _8339
                mem[mem[64] + 160] = _9219
                mem[mem[64] + 192] = _9371
                _9699 = mem[64]
                mem[mem[64]] = 192
                mem[64] = mem[64] + 224
                if 0 >= _2397:
                    revert with 'NH{q', 50
                _9891 = mem[(8 * ceil32(return_data.size)) + 1120]
                if 1 >= _2397:
                    revert with 'NH{q', 50
                _10043 = mem[(8 * ceil32(return_data.size)) + 1152]
                mem[_9372 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_9372 + 228] = _9891
                mem[_9372 + 260] = _10043
                mem[_9372 + 292] = this.address
                mem[_9372 + 324] = 128
                _10131 = mem[_9699]
                mem[_9372 + 356] = mem[_9699]
                mem[_9372 + 388 len ceil32(_10131)] = mem[_9699 + 32 len ceil32(_10131)]
                if ceil32(_10131) > _10131:
                    mem[_9372 + _10131 + 388] = 0
                require ext_code.size(address(_9003))
                call address(_9003).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _9891, _10043, address(this.address), 128, mem[_9372 + 356 len ceil32(_10131) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _8643 + _8531 < _8339:
                    revert with 'NH{q', 17
                return _8339, _8643 + _8531, _8643 + _8531 - _8339
            _8196 = mem[(7 * ceil32(return_data.size)) + 576]
            _8342 = mem[(8 * ceil32(return_data.size)) + 992]
            if 3 >= _2397:
                revert with 'NH{q', 50
            _8534 = mem[(8 * ceil32(return_data.size)) + 1216]
            if 2 >= _2397:
                revert with 'NH{q', 50
            _8644 = mem[(8 * ceil32(return_data.size)) + 1184]
            if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            _9007 = mem[(7 * ceil32(return_data.size)) + 544]
            _9008 = mem[(7 * ceil32(return_data.size)) + 768]
            if 2 >= _2397:
                revert with 'NH{q', 50
            _9222 = mem[(8 * ceil32(return_data.size)) + 1184]
            if 3 >= _2397:
                revert with 'NH{q', 50
            _9373 = mem[(8 * ceil32(return_data.size)) + 1216]
            _9374 = mem[64]
            mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
            mem[mem[64] + 64] = address(_8196)
            mem[mem[64] + 96] = address(_9008)
            mem[mem[64] + 128] = _8342
            mem[mem[64] + 160] = _9222
            mem[mem[64] + 192] = _9373
            _9702 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _2397:
                revert with 'NH{q', 50
            _9894 = mem[(8 * ceil32(return_data.size)) + 1120]
            if 1 >= _2397:
                revert with 'NH{q', 50
            _10045 = mem[(8 * ceil32(return_data.size)) + 1152]
            mem[_9374 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9374 + 228] = _9894
            mem[_9374 + 260] = _10045
            mem[_9374 + 292] = this.address
            mem[_9374 + 324] = 128
            _10132 = mem[_9702]
            mem[_9374 + 356] = mem[_9702]
            mem[_9374 + 388 len ceil32(_10132)] = mem[_9702 + 32 len ceil32(_10132)]
            if ceil32(_10132) > _10132:
                mem[_9374 + _10132 + 388] = 0
            require ext_code.size(address(_9007))
            call address(_9007).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9894, _10045, address(this.address), 128, mem[_9374 + 356 len ceil32(_10132) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8644 + _8534 < _8342:
                revert with 'NH{q', 17
            return _8342, _8644 + _8534, _8644 + _8534 - _8342
        if not mem[(7 * ceil32(return_data.size)) + 736]:
            _8197 = mem[(7 * ceil32(return_data.size)) + 608]
            _8345 = mem[(8 * ceil32(return_data.size)) + 992]
            if 3 >= _2397:
                revert with 'NH{q', 50
            _8537 = mem[(8 * ceil32(return_data.size)) + 1216]
            if 2 >= _2397:
                revert with 'NH{q', 50
            _8645 = mem[(8 * ceil32(return_data.size)) + 1184]
            if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            _9011 = mem[(7 * ceil32(return_data.size)) + 544]
            _9012 = mem[(7 * ceil32(return_data.size)) + 768]
            if 2 >= _2397:
                revert with 'NH{q', 50
            _9225 = mem[(8 * ceil32(return_data.size)) + 1184]
            if 3 >= _2397:
                revert with 'NH{q', 50
            _9375 = mem[(8 * ceil32(return_data.size)) + 1216]
            _9376 = mem[64]
            mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
            mem[mem[64] + 64] = address(_8197)
            mem[mem[64] + 96] = address(_9012)
            mem[mem[64] + 128] = _8345
            mem[mem[64] + 160] = _9225
            mem[mem[64] + 192] = _9375
            _9705 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _2397:
                revert with 'NH{q', 50
            _9897 = mem[(8 * ceil32(return_data.size)) + 1120]
            if 1 >= _2397:
                revert with 'NH{q', 50
            _10047 = mem[(8 * ceil32(return_data.size)) + 1152]
            mem[_9376 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9376 + 228] = _9897
            mem[_9376 + 260] = _10047
            mem[_9376 + 292] = this.address
            mem[_9376 + 324] = 128
            _10133 = mem[_9705]
            mem[_9376 + 356] = mem[_9705]
            mem[_9376 + 388 len ceil32(_10133)] = mem[_9705 + 32 len ceil32(_10133)]
            if ceil32(_10133) > _10133:
                mem[_9376 + _10133 + 388] = 0
            require ext_code.size(address(_9011))
            call address(_9011).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9897, _10047, address(this.address), 128, mem[_9376 + 356 len ceil32(_10133) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8645 + _8537 < _8345:
                revert with 'NH{q', 17
            return _8345, _8645 + _8537, _8645 + _8537 - _8345
        _8198 = mem[(7 * ceil32(return_data.size)) + 576]
        _8348 = mem[(8 * ceil32(return_data.size)) + 992]
        if 3 >= _2397:
            revert with 'NH{q', 50
        _8540 = mem[(8 * ceil32(return_data.size)) + 1216]
        if 2 >= _2397:
            revert with 'NH{q', 50
        _8646 = mem[(8 * ceil32(return_data.size)) + 1184]
        if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
            revert with 'NH{q', 17
        _9015 = mem[(7 * ceil32(return_data.size)) + 544]
        _9016 = mem[(7 * ceil32(return_data.size)) + 768]
        if 2 >= _2397:
            revert with 'NH{q', 50
        _9228 = mem[(8 * ceil32(return_data.size)) + 1184]
        if 3 >= _2397:
            revert with 'NH{q', 50
        _9377 = mem[(8 * ceil32(return_data.size)) + 1216]
        _9378 = mem[64]
        mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
        mem[mem[64] + 64] = address(_8198)
        mem[mem[64] + 96] = address(_9016)
        mem[mem[64] + 128] = _8348
        mem[mem[64] + 160] = _9228
        mem[mem[64] + 192] = _9377
        _9708 = mem[64]
        mem[mem[64]] = 192
        mem[64] = mem[64] + 224
        if 0 >= _2397:
            revert with 'NH{q', 50
        _9900 = mem[(8 * ceil32(return_data.size)) + 1120]
        if 1 >= _2397:
            revert with 'NH{q', 50
        _10049 = mem[(8 * ceil32(return_data.size)) + 1152]
        mem[_9378 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_9378 + 228] = _9900
        mem[_9378 + 260] = _10049
        mem[_9378 + 292] = this.address
        mem[_9378 + 324] = 128
        _10134 = mem[_9708]
        mem[_9378 + 356] = mem[_9708]
        mem[_9378 + 388 len ceil32(_10134)] = mem[_9708 + 32 len ceil32(_10134)]
        if ceil32(_10134) > _10134:
            mem[_9378 + _10134 + 388] = 0
        require ext_code.size(address(_9015))
        call address(_9015).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _9900, _10049, address(this.address), 128, mem[_9378 + 356 len ceil32(_10134) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _8646 + _8540 < _8348:
            revert with 'NH{q', 17
        return _8348, _8646 + _8540, _8646 + _8540 - _8348
    mem[(7 * ceil32(return_data.size)) + 736] = 1
    mem[(7 * ceil32(return_data.size)) + 768] = 0
    mem[(7 * ceil32(return_data.size)) + 800] = address(arg2)
    mem[(7 * ceil32(return_data.size)) + 832] = address(arg1)
    mem[(7 * ceil32(return_data.size)) + 864] = 0
    mem[(7 * ceil32(return_data.size)) + 896] = 0
    mem[(7 * ceil32(return_data.size)) + 928] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
    mem[(7 * ceil32(return_data.size)) + 960] = 0
    mem[(7 * ceil32(return_data.size)) + 992] = 0x21444fed00000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 996] = 0
    mem[(7 * ceil32(return_data.size)) + 1028] = 0
    mem[(7 * ceil32(return_data.size)) + 1060] = address(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 1092] = address(arg2)
    mem[(7 * ceil32(return_data.size)) + 1124] = address(arg1)
    mem[(7 * ceil32(return_data.size)) + 1156] = 0
    mem[(7 * ceil32(return_data.size)) + 1188] = 0
    mem[(7 * ceil32(return_data.size)) + 1220] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
    mem[(7 * ceil32(return_data.size)) + 1252] = 1
    mem[(7 * ceil32(return_data.size)) + 1284] = 0
    mem[(7 * ceil32(return_data.size)) + 1316] = address(arg2)
    mem[(7 * ceil32(return_data.size)) + 1348] = address(arg1)
    mem[(7 * ceil32(return_data.size)) + 1380] = 0
    mem[(7 * ceil32(return_data.size)) + 1412] = 0
    mem[(7 * ceil32(return_data.size)) + 1444] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
    mem[(7 * ceil32(return_data.size)) + 1476] = 0
    require ext_code.size(stor0)
    staticcall stor0.0x21444fed with:
            gas gas_remaining wei
           args 0, 0, address(ext_call.return_data[0]), address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 1, 0, address(arg2), address(arg1), 0, 0, -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _1234 = mem[(7 * ceil32(return_data.size)) + 992 len 4], 0
    require mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 <= test266151307()
    require return_data.size - mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 >= 96
    if not bool((8 * ceil32(return_data.size)) + 1088 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (8 * ceil32(return_data.size)) + 1088
    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992] == mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
    mem[(8 * ceil32(return_data.size)) + 992] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], 0 + 992]
    require mem[(7 * ceil32(return_data.size)) + _1234 + 1024] == bool(mem[(7 * ceil32(return_data.size)) + _1234 + 1024])
    mem[(8 * ceil32(return_data.size)) + 1024] = mem[(7 * ceil32(return_data.size)) + _1234 + 1024]
    _2382 = mem[(7 * ceil32(return_data.size)) + _1234 + 1056]
    require mem[(7 * ceil32(return_data.size)) + _1234 + 1056] <= test266151307()
    require (7 * ceil32(return_data.size)) + _1234 + mem[(7 * ceil32(return_data.size)) + _1234 + 1056] + 1023 < (7 * ceil32(return_data.size)) + return_data.size + 992
    _2398 = mem[(7 * ceil32(return_data.size)) + _1234 + mem[(7 * ceil32(return_data.size)) + _1234 + 1056] + 992]
    if mem[(7 * ceil32(return_data.size)) + _1234 + mem[(7 * ceil32(return_data.size)) + _1234 + 1056] + 992] > test266151307():
        revert with 'NH{q', 65
    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1234 + mem[(7 * ceil32(return_data.size)) + _1234 + 1056] + 992]) + 1089 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + _1234 + mem[(7 * ceil32(return_data.size)) + _1234 + 1056] + 992]) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + _1234 + mem[(7 * ceil32(return_data.size)) + _1234 + 1056] + 992]) + 1089
    mem[(8 * ceil32(return_data.size)) + 1088] = _2398
    require _1234 + _2382 + (32 * _2398) + 32 <= return_data.size
    idx = 0
    s = (7 * ceil32(return_data.size)) + _1234 + _2382 + 1024
    t = (8 * ceil32(return_data.size)) + 1120
    while idx < _2398:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 1056] = (8 * ceil32(return_data.size)) + 1088
    if not mem[(8 * ceil32(return_data.size)) + 1024]:
        revert with 0, 'S3'
    if not mem[(7 * ceil32(return_data.size)) + 736]:
        if not mem[(7 * ceil32(return_data.size)) + 736]:
            _8199 = mem[(7 * ceil32(return_data.size)) + 608]
            _8351 = mem[(8 * ceil32(return_data.size)) + 992]
            if 3 >= _2398:
                revert with 'NH{q', 50
            _8543 = mem[(8 * ceil32(return_data.size)) + 1216]
            if 2 >= _2398:
                revert with 'NH{q', 50
            _8647 = mem[(8 * ceil32(return_data.size)) + 1184]
            if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
                revert with 'NH{q', 17
            _9019 = mem[(7 * ceil32(return_data.size)) + 544]
            _9020 = mem[(7 * ceil32(return_data.size)) + 768]
            if 2 >= _2398:
                revert with 'NH{q', 50
            _9231 = mem[(8 * ceil32(return_data.size)) + 1184]
            if 3 >= _2398:
                revert with 'NH{q', 50
            _9379 = mem[(8 * ceil32(return_data.size)) + 1216]
            _9380 = mem[64]
            mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
            mem[mem[64] + 64] = address(_8199)
            mem[mem[64] + 96] = address(_9020)
            mem[mem[64] + 128] = _8351
            mem[mem[64] + 160] = _9231
            mem[mem[64] + 192] = _9379
            _9711 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            if 0 >= _2398:
                revert with 'NH{q', 50
            _9903 = mem[(8 * ceil32(return_data.size)) + 1120]
            if 1 >= _2398:
                revert with 'NH{q', 50
            _10051 = mem[(8 * ceil32(return_data.size)) + 1152]
            mem[_9380 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_9380 + 228] = _9903
            mem[_9380 + 260] = _10051
            mem[_9380 + 292] = this.address
            mem[_9380 + 324] = 128
            _10135 = mem[_9711]
            mem[_9380 + 356] = mem[_9711]
            mem[_9380 + 388 len ceil32(_10135)] = mem[_9711 + 32 len ceil32(_10135)]
            if ceil32(_10135) > _10135:
                mem[_9380 + _10135 + 388] = 0
            require ext_code.size(address(_9019))
            call address(_9019).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _9903, _10051, address(this.address), 128, mem[_9380 + 356 len ceil32(_10135) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _8647 + _8543 < _8351:
                revert with 'NH{q', 17
            return _8351, _8647 + _8543, _8647 + _8543 - _8351
        _8200 = mem[(7 * ceil32(return_data.size)) + 576]
        _8354 = mem[(8 * ceil32(return_data.size)) + 992]
        if 3 >= _2398:
            revert with 'NH{q', 50
        _8546 = mem[(8 * ceil32(return_data.size)) + 1216]
        if 2 >= _2398:
            revert with 'NH{q', 50
        _8648 = mem[(8 * ceil32(return_data.size)) + 1184]
        if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
            revert with 'NH{q', 17
        _9023 = mem[(7 * ceil32(return_data.size)) + 544]
        _9024 = mem[(7 * ceil32(return_data.size)) + 768]
        if 2 >= _2398:
            revert with 'NH{q', 50
        _9234 = mem[(8 * ceil32(return_data.size)) + 1184]
        if 3 >= _2398:
            revert with 'NH{q', 50
        _9381 = mem[(8 * ceil32(return_data.size)) + 1216]
        _9382 = mem[64]
        mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 588 len 20]
        mem[mem[64] + 64] = address(_8200)
        mem[mem[64] + 96] = address(_9024)
        mem[mem[64] + 128] = _8354
        mem[mem[64] + 160] = _9234
        mem[mem[64] + 192] = _9381
        _9714 = mem[64]
        mem[mem[64]] = 192
        mem[64] = mem[64] + 224
        if 0 >= _2398:
            revert with 'NH{q', 50
        _9906 = mem[(8 * ceil32(return_data.size)) + 1120]
        if 1 >= _2398:
            revert with 'NH{q', 50
        _10053 = mem[(8 * ceil32(return_data.size)) + 1152]
        mem[_9382 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_9382 + 228] = _9906
        mem[_9382 + 260] = _10053
        mem[_9382 + 292] = this.address
        mem[_9382 + 324] = 128
        _10136 = mem[_9714]
        mem[_9382 + 356] = mem[_9714]
        mem[_9382 + 388 len ceil32(_10136)] = mem[_9714 + 32 len ceil32(_10136)]
        if ceil32(_10136) > _10136:
            mem[_9382 + _10136 + 388] = 0
        require ext_code.size(address(_9023))
        call address(_9023).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _9906, _10053, address(this.address), 128, mem[_9382 + 356 len ceil32(_10136) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _8648 + _8546 < _8354:
            revert with 'NH{q', 17
        return _8354, _8648 + _8546, _8648 + _8546 - _8354
    if not mem[(7 * ceil32(return_data.size)) + 736]:
        _8201 = mem[(7 * ceil32(return_data.size)) + 608]
        _8357 = mem[(8 * ceil32(return_data.size)) + 992]
        if 3 >= _2398:
            revert with 'NH{q', 50
        _8549 = mem[(8 * ceil32(return_data.size)) + 1216]
        if 2 >= _2398:
            revert with 'NH{q', 50
        _8649 = mem[(8 * ceil32(return_data.size)) + 1184]
        if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
            revert with 'NH{q', 17
        _9027 = mem[(7 * ceil32(return_data.size)) + 544]
        _9028 = mem[(7 * ceil32(return_data.size)) + 768]
        if 2 >= _2398:
            revert with 'NH{q', 50
        _9237 = mem[(8 * ceil32(return_data.size)) + 1184]
        if 3 >= _2398:
            revert with 'NH{q', 50
        _9383 = mem[(8 * ceil32(return_data.size)) + 1216]
        _9384 = mem[64]
        mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
        mem[mem[64] + 64] = address(_8201)
        mem[mem[64] + 96] = address(_9028)
        mem[mem[64] + 128] = _8357
        mem[mem[64] + 160] = _9237
        mem[mem[64] + 192] = _9383
        _9717 = mem[64]
        mem[mem[64]] = 192
        mem[64] = mem[64] + 224
        if 0 >= _2398:
            revert with 'NH{q', 50
        _9909 = mem[(8 * ceil32(return_data.size)) + 1120]
        if 1 >= _2398:
            revert with 'NH{q', 50
        _10055 = mem[(8 * ceil32(return_data.size)) + 1152]
        mem[_9384 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_9384 + 228] = _9909
        mem[_9384 + 260] = _10055
        mem[_9384 + 292] = this.address
        mem[_9384 + 324] = 128
        _10137 = mem[_9717]
        mem[_9384 + 356] = mem[_9717]
        mem[_9384 + 388 len ceil32(_10137)] = mem[_9717 + 32 len ceil32(_10137)]
        if ceil32(_10137) > _10137:
            mem[_9384 + _10137 + 388] = 0
        require ext_code.size(address(_9027))
        call address(_9027).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _9909, _10055, address(this.address), 128, mem[_9384 + 356 len ceil32(_10137) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if _8649 + _8549 < _8357:
            revert with 'NH{q', 17
        return _8357, _8649 + _8549, _8649 + _8549 - _8357
    _8202 = mem[(7 * ceil32(return_data.size)) + 576]
    _8360 = mem[(8 * ceil32(return_data.size)) + 992]
    if 3 >= _2398:
        revert with 'NH{q', 50
    _8552 = mem[(8 * ceil32(return_data.size)) + 1216]
    if 2 >= _2398:
        revert with 'NH{q', 50
    _8650 = mem[(8 * ceil32(return_data.size)) + 1184]
    if mem[(8 * ceil32(return_data.size)) + 1184] > -mem[(8 * ceil32(return_data.size)) + 1216] - 1:
        revert with 'NH{q', 17
    _9031 = mem[(7 * ceil32(return_data.size)) + 544]
    _9032 = mem[(7 * ceil32(return_data.size)) + 768]
    if 2 >= _2398:
        revert with 'NH{q', 50
    _9240 = mem[(8 * ceil32(return_data.size)) + 1184]
    if 3 >= _2398:
        revert with 'NH{q', 50
    _9385 = mem[(8 * ceil32(return_data.size)) + 1216]
    _9386 = mem[64]
    mem[mem[64] + 32] = mem[(7 * ceil32(return_data.size)) + 620 len 20]
    mem[mem[64] + 64] = address(_8202)
    mem[mem[64] + 96] = address(_9032)
    mem[mem[64] + 128] = _8360
    mem[mem[64] + 160] = _9240
    mem[mem[64] + 192] = _9385
    _9720 = mem[64]
    mem[mem[64]] = 192
    mem[64] = mem[64] + 224
    if 0 >= _2398:
        revert with 'NH{q', 50
    _9912 = mem[(8 * ceil32(return_data.size)) + 1120]
    if 1 >= _2398:
        revert with 'NH{q', 50
    _10057 = mem[(8 * ceil32(return_data.size)) + 1152]
    mem[_9386 + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    mem[_9386 + 228] = _9912
    mem[_9386 + 260] = _10057
    mem[_9386 + 292] = this.address
    mem[_9386 + 324] = 128
    _10138 = mem[_9720]
    mem[_9386 + 356] = mem[_9720]
    mem[_9386 + 388 len ceil32(_10138)] = mem[_9720 + 32 len ceil32(_10138)]
    if ceil32(_10138) > _10138:
        mem[_9386 + _10138 + 388] = 0
    require ext_code.size(address(_9031))
    call address(_9031).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args _9912, _10057, address(this.address), 128, mem[_9386 + 356 len ceil32(_10138) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if _8650 + _8552 < _8360:
        revert with 'NH{q', 17
    return _8360, _8650 + _8552, _8650 + _8552 - _8360
}



}
