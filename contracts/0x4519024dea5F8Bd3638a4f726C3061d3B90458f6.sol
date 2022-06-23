contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function recoverEth() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function recoverTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getAmountOutMin(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 2
    mem[128] = arg2
    mem[160] = arg3
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
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg4) >> 32
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223
    _22 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require _21 + (32 * _22) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len 32 * _22] = mem[_21 + 224 len 32 * _22]
    if 1 >= _22:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_068e7ca1(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
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
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _36 = mem[192 len 4], Mask(224, 32, arg5) >> 32
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg5) >> 32 + 223
    _37 = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    require _36 + (32 * _37) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len 32 * _37] = mem[_36 + 224 len 32 * _37]
    if 1 >= _37:
        revert with 0, 50
    _63 = mem[ceil32(return_data.size) + 256]
    _64 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_64]:
        revert with 0, 50
    mem[_64 + 32] = address(arg4)
    if 1 >= mem[_64]:
        revert with 0, 50
    mem[_64 + 64] = address(arg3)
    mem[_64 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_64 + 100] = _63
    mem[_64 + 132] = 64
    mem[_64 + 164] = mem[_64]
    idx = 0
    s = _64 + 32
    t = _64 + 196
    while idx < mem[_64]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _64 + (32 * mem[_64]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _83 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _84 = mem[_83]
    require mem[_83] <= test266151307()
    require _83 + return_data.size > _83 + mem[_83] + 31
    _85 = mem[_83 + mem[_83]]
    if mem[_83 + mem[_83]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_83 + mem[_83]]) + 1 < 0 or _83 + ceil32(return_data.size) + ceil32(32 * mem[_83 + mem[_83]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _83 + ceil32(return_data.size) + ceil32(32 * mem[_83 + mem[_83]]) + 1
    mem[_83 + ceil32(return_data.size)] = _85
    require _84 + (32 * _85) + 32 <= return_data.size
    mem[_83 + ceil32(return_data.size) + 32 len 32 * _85] = mem[_83 + _84 + 32 len 32 * _85]
    if mem[_64] < 1:
        revert with 0, 17
    if mem[_64] - 1 >= _85:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * mem[_64] - 1) + _83 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_e3f443f7(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if var80001 < 1:
        revert with 0, 17
    if var84002 >= var84001:
        return var84003
    if var86001 < ('cd', 36).length:
        if 1 > !var90002:
            revert with 0, 17
        idx = var92003 + 1
        s = var92007
        t = var92008
        u = var92009
        while idx < ('cd', 36).length:
            _274 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if t >= mem[96]:
                revert with 0, 50
            _276 = mem[(32 * t) + 128]
            _277 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_277]:
                revert with 0, 50
            mem[_277 + 32] = address(s)
            if 1 >= mem[_277]:
                revert with 0, 50
            mem[_277 + 64] = address(_274)
            mem[_277 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_277 + 100] = u
            mem[_277 + 132] = 64
            mem[_277 + 164] = mem[_277]
            idx = 0
            s = _277 + 32
            u = _277 + 196
            while idx < mem[_277]:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            require ext_code.size(address(_276))
            staticcall address(_276).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _277 + (32 * mem[_277]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _300 = mem[_299]
            require mem[_299] <= test266151307()
            require _299 + return_data.size > _299 + mem[_299] + 31
            _301 = mem[_299 + mem[_299]]
            if mem[_299 + mem[_299]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_299 + mem[_299]]) + 1 < 0 or _299 + ceil32(return_data.size) + ceil32(32 * mem[_299 + mem[_299]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _299 + ceil32(return_data.size) + ceil32(32 * mem[_299 + mem[_299]]) + 1
            mem[_299 + ceil32(return_data.size)] = _301
            require _300 + (32 * _301) + 32 <= return_data.size
            s = _299 + _300 + 32
            u = _299 + ceil32(return_data.size) + 32
            idx = 0
            while idx < _301:
                mem[u] = mem[s]
                s = s + 32
                u = u + 32
                idx = idx + 1
                continue 
            if mem[_277] < 1:
                revert with 0, 17
            if mem[_277] - 1 >= _301:
                revert with 0, 50
            if t == -1:
                revert with 0, 17
            if mem[96] < 1:
                revert with 0, 17
            if t + 1 >= mem[96] - 1:
                mem[mem[64]] = mem[(32 * mem[_277] - 1) + _299 + ceil32(return_data.size) + 32]
                return memory
                  from mem[64]
                   len 32
            if t + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            if 1 > !(t + 1):
                revert with 0, 17
            idx = t + 2
            s = mem[(32 * t + 1) + ceil32(32 * ('cd', 4).length) + 129]
            t = t + 1
            u = mem[(32 * mem[_277] - 1) + _299 + ceil32(return_data.size) + 32]
            continue 
    revert with 0, 50
}

function sub_26a215ec(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    mem[96] = 2
    mem[128] = address(arg4)
    mem[160] = address(arg5)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg7
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
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg7, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _51 = mem[192 len 4], Mask(224, 32, arg7) >> 32
    require mem[192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg7) >> 32 + 223
    _52 = mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    require _51 + (32 * _52) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len 32 * _52] = mem[_51 + 224 len 32 * _52]
    if 1 >= _52:
        revert with 0, 50
    _93 = mem[ceil32(return_data.size) + 256]
    _94 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_94]:
        revert with 0, 50
    mem[_94 + 32] = address(arg5)
    if 1 >= mem[_94]:
        revert with 0, 50
    mem[_94 + 64] = address(arg6)
    mem[_94 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_94 + 100] = _93
    mem[_94 + 132] = 64
    mem[_94 + 164] = mem[_94]
    idx = 0
    s = _94 + 32
    t = _94 + 196
    while idx < mem[_94]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _94 + (32 * mem[_94]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _129 = mem[_128]
    require mem[_128] <= test266151307()
    require _128 + return_data.size > _128 + mem[_128] + 31
    _130 = mem[_128 + mem[_128]]
    if mem[_128 + mem[_128]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_128 + mem[_128]]) + 1 < 0 or _128 + ceil32(return_data.size) + ceil32(32 * mem[_128 + mem[_128]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _128 + ceil32(return_data.size) + ceil32(32 * mem[_128 + mem[_128]]) + 1
    mem[_128 + ceil32(return_data.size)] = _130
    require _129 + (32 * _130) + 32 <= return_data.size
    mem[_128 + ceil32(return_data.size) + 32 len 32 * _130] = mem[_128 + _129 + 32 len 32 * _130]
    if mem[_94] < 1:
        revert with 0, 17
    if mem[_94] - 1 >= _130:
        revert with 0, 50
    _156 = mem[(32 * mem[_94] - 1) + _128 + ceil32(return_data.size) + 32]
    _157 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_157]:
        revert with 0, 50
    mem[_157 + 32] = address(arg6)
    if 1 >= mem[_157]:
        revert with 0, 50
    mem[_157 + 64] = address(arg4)
    mem[_157 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_157 + 100] = _156
    mem[_157 + 132] = 64
    mem[_157 + 164] = mem[_157]
    idx = 0
    s = _157 + 32
    t = _157 + 196
    while idx < mem[_157]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg3))
    staticcall address(arg3).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _157 + (32 * mem[_157]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _176 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _177 = mem[_176]
    require mem[_176] <= test266151307()
    require _176 + return_data.size > _176 + mem[_176] + 31
    _178 = mem[_176 + mem[_176]]
    if mem[_176 + mem[_176]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_176 + mem[_176]]) + 1 < 0 or _176 + ceil32(return_data.size) + ceil32(32 * mem[_176 + mem[_176]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _176 + ceil32(return_data.size) + ceil32(32 * mem[_176 + mem[_176]]) + 1
    mem[_176 + ceil32(return_data.size)] = _178
    require _177 + (32 * _178) + 32 <= return_data.size
    mem[_176 + ceil32(return_data.size) + 32 len 32 * _178] = mem[_176 + _177 + 32 len 32 * _178]
    if mem[_157] < 1:
        revert with 0, 17
    if mem[_157] - 1 >= _178:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * mem[_157] - 1) + _176 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_a9aecebe(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var91001 < 1:
        revert with 0, 17
    if var95002 >= var95001:
        if var95003 < cd[100]:
            revert with 0, 17
        if var95003 - cd[100] <= cd[68]:
            revert with 0, 'Trade Reverted, No Profit Made'
    if var97001 < ('cd', 36).length:
        if 1 > !var101002:
            revert with 0, 17
        idx = var103003 + 1
        s = var103007
        t = var103008
        u = var103009
        while idx < ('cd', 36).length:
            _335 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if t >= mem[96]:
                revert with 0, 50
            _337 = mem[(32 * t) + 128]
            mem[mem[64] + 4] = mem[(32 * t) + 140 len 20]
            mem[mem[64] + 36] = u
            require ext_code.size(address(s))
            call address(s).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], u
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _340 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_340] == bool(mem[_340])
            _342 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_342]:
                revert with 0, 50
            mem[_342 + 32] = address(s)
            if 1 >= mem[_342]:
                revert with 0, 50
            mem[_342 + 64] = address(_335)
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[_342 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_342 + 100] = u
            mem[_342 + 132] = 1
            mem[_342 + 164] = 160
            mem[_342 + 260] = mem[_342]
            idx = 0
            s = _342 + 32
            u = _342 + 292
            while idx < mem[_342]:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_342 + 196] = this.address
            mem[_342 + 228] = block.timestamp + 300
            require ext_code.size(address(_337))
            call address(_337).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _342 + (32 * mem[_342]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _365 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _366 = mem[_365]
            require mem[_365] <= test266151307()
            require _365 + return_data.size > _365 + mem[_365] + 31
            _367 = mem[_365 + mem[_365]]
            if mem[_365 + mem[_365]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_365 + mem[_365]]) + 1 < 0 or _365 + ceil32(return_data.size) + ceil32(32 * mem[_365 + mem[_365]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _365 + ceil32(return_data.size) + ceil32(32 * mem[_365 + mem[_365]]) + 1
            mem[_365 + ceil32(return_data.size)] = _367
            require _366 + (32 * _367) + 32 <= return_data.size
            s = _365 + _366 + 32
            u = _365 + ceil32(return_data.size) + 32
            idx = 0
            while idx < _367:
                mem[u] = mem[s]
                s = s + 32
                u = u + 32
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_335))
            staticcall address(_335).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _382 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t == -1:
                revert with 0, 17
            if mem[96] < 1:
                revert with 0, 17
            if t + 1 >= mem[96] - 1:
                if mem[_382] < cd[100]:
                    revert with 0, 17
                if mem[_382] - cd[100] <= cd[68]:
                    revert with 0, 'Trade Reverted, No Profit Made'
            if t + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            if 1 > !(t + 1):
                revert with 0, 17
            idx = t + 2
            s = mem[(32 * t + 1) + ceil32(32 * ('cd', 4).length) + 129]
            t = t + 1
            u = mem[_382]
            continue 
    revert with 0, 50
}

function sub_ec8238d2(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var99001 < 1:
        revert with 0, 17
    if var103002 >= var103001:
        if var103003 < cd[100]:
            revert with 0, 17
        if var103003 - cd[100] <= cd[68]:
            revert with 0, 'Trade Reverted, No Profit Made'
    if var105001 < ('cd', 36).length:
        if 1 > !var109002:
            revert with 0, 17
        idx = var111003 + 1
        s = var111007
        t = var111008
        u = var111009
        while idx < ('cd', 36).length:
            _379 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if t >= mem[96]:
                revert with 0, 50
            _381 = mem[(32 * t) + 128]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_379))
            staticcall address(_379).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _385 = mem[_384]
            mem[mem[64] + 4] = address(_381)
            mem[mem[64] + 36] = u
            require ext_code.size(address(s))
            call address(s).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_381), u
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _388 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_388] == bool(mem[_388])
            _390 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_390]:
                revert with 0, 50
            mem[_390 + 32] = address(s)
            if 1 >= mem[_390]:
                revert with 0, 50
            mem[_390 + 64] = address(_379)
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[_390 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_390 + 100] = u
            mem[_390 + 132] = 1
            mem[_390 + 164] = 160
            mem[_390 + 260] = mem[_390]
            idx = 0
            s = _390 + 32
            u = _390 + 292
            while idx < mem[_390]:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[_390 + 196] = this.address
            mem[_390 + 228] = block.timestamp + 300
            require ext_code.size(address(_381))
            call address(_381).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _390 + (32 * mem[_390]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _413 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _414 = mem[_413]
            require mem[_413] <= test266151307()
            require _413 + return_data.size > _413 + mem[_413] + 31
            _415 = mem[_413 + mem[_413]]
            if mem[_413 + mem[_413]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_413 + mem[_413]]) + 1 < 0 or _413 + ceil32(return_data.size) + ceil32(32 * mem[_413 + mem[_413]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _413 + ceil32(return_data.size) + ceil32(32 * mem[_413 + mem[_413]]) + 1
            mem[_413 + ceil32(return_data.size)] = _415
            require _414 + (32 * _415) + 32 <= return_data.size
            s = _413 + _414 + 32
            u = _413 + ceil32(return_data.size) + 32
            idx = 0
            while idx < _415:
                mem[u] = mem[s]
                s = s + 32
                u = u + 32
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_379))
            staticcall address(_379).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _430 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_430] < _385:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            if mem[96] < 1:
                revert with 0, 17
            if t + 1 >= mem[96] - 1:
                if mem[_430] - _385 < cd[100]:
                    revert with 0, 17
                if mem[_430] - _385 - cd[100] <= cd[68]:
                    revert with 0, 'Trade Reverted, No Profit Made'
            if t + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            if 1 > !(t + 1):
                revert with 0, 17
            idx = t + 2
            s = mem[(32 * t + 1) + ceil32(32 * ('cd', 4).length) + 129]
            t = t + 1
            u = mem[_430] - _385
            continue 
    revert with 0, 50
}

function sub_1aa51318(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 132] = arg5
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg5
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = address(arg3)
    mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
    if 300 > !block.timestamp:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = arg5
    mem[(4 * ceil32(return_data.size)) + 228] = 1
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = this.address
    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 300
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg5, 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _56 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
    _57 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    require _56 + (32 * _57) + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _57] = mem[(4 * ceil32(return_data.size)) + _56 + 224 len 32 * _57]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _89 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _90 = mem[_89]
    if mem[_89] < ext_call.return_data[0]:
        revert with 0, 17
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _90 - ext_call.return_data[0]
    require ext_code.size(address(arg4))
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _90 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _93 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_93] == bool(mem[_93])
    _95 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_95]:
        revert with 0, 50
    mem[_95 + 32] = address(arg4)
    if 1 >= mem[_95]:
        revert with 0, 50
    mem[_95 + 64] = address(arg3)
    if 300 > !block.timestamp:
        revert with 0, 17
    mem[_95 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_95 + 100] = _90 - ext_call.return_data[0]
    mem[_95 + 132] = 1
    mem[_95 + 164] = 160
    mem[_95 + 260] = mem[_95]
    idx = 0
    s = _95 + 32
    t = _95 + 292
    while idx < mem[_95]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_95 + 196] = this.address
    mem[_95 + 228] = block.timestamp + 300
    require ext_code.size(address(arg2))
    call address(arg2).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _95 + (32 * mem[_95]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _116 = mem[_115]
    require mem[_115] <= test266151307()
    require _115 + return_data.size > _115 + mem[_115] + 31
    _117 = mem[_115 + mem[_115]]
    if mem[_115 + mem[_115]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_115 + mem[_115]]) + 1 < 0 or _115 + ceil32(return_data.size) + ceil32(32 * mem[_115 + mem[_115]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _115 + ceil32(return_data.size) + ceil32(32 * mem[_115 + mem[_115]]) + 1
    mem[_115 + ceil32(return_data.size)] = _117
    require _116 + (32 * _117) + 32 <= return_data.size
    mem[_115 + ceil32(return_data.size) + 32 len 32 * _117] = mem[_115 + _116 + 32 len 32 * _117]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_129] <= ext_call.return_data[0]:
        revert with 0, 'Trade Reverted, No Profit Made'
}

function sub_20ab3529(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 < ('cd', 4).length:
        if ('cd', 4).length < 1:
            revert with 0, 17
        if ('cd', 4).length - 1 < ('cd', 4).length:
            mem[(32 * ('cd', 4).length - 1) + 128] = mem[140 len 20]
            if 0 < ('cd', 36).length:
                if ('cd', 36).length < 1:
                    revert with 0, 17
                if ('cd', 36).length - 1 < ('cd', 36).length:
                    mem[(32 * ('cd', 36).length - 1) + ceil32(32 * ('cd', 4).length) + 129] = mem[ceil32(32 * ('cd', 4).length) + 141 len 20]
                    if var101001 < 1:
                        revert with 0, 17
                    if var105002 >= var105001:
                        if var105003 < cd[100]:
                            revert with 0, 17
                        if var105003 - cd[100] <= cd[68]:
                            revert with 0, 'Trade Reverted, No Profit Made'
                    if var107001 < ('cd', 36).length:
                        if 1 > !var111002:
                            revert with 0, 17
                        idx = var113003 + 1
                        s = var113007
                        t = var113008
                        u = var113009
                        while idx < ('cd', 36).length:
                            _359 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if t >= mem[96]:
                                revert with 0, 50
                            _361 = mem[(32 * t) + 128]
                            mem[mem[64] + 4] = mem[(32 * t) + 140 len 20]
                            mem[mem[64] + 36] = u
                            require ext_code.size(address(s))
                            call address(s).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], u
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _364 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_364] == bool(mem[_364])
                            _366 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_366]:
                                revert with 0, 50
                            mem[_366 + 32] = address(s)
                            if 1 >= mem[_366]:
                                revert with 0, 50
                            mem[_366 + 64] = address(_359)
                            if 300 > !block.timestamp:
                                revert with 0, 17
                            mem[_366 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_366 + 100] = u
                            mem[_366 + 132] = 1
                            mem[_366 + 164] = 160
                            mem[_366 + 260] = mem[_366]
                            idx = 0
                            s = _366 + 32
                            u = _366 + 292
                            while idx < mem[_366]:
                                mem[u] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                u = u + 32
                                continue 
                            mem[_366 + 196] = this.address
                            mem[_366 + 228] = block.timestamp + 300
                            require ext_code.size(address(_361))
                            call address(_361).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _366 + (32 * mem[_366]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _389 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _390 = mem[_389]
                            require mem[_389] <= test266151307()
                            require _389 + return_data.size > _389 + mem[_389] + 31
                            _391 = mem[_389 + mem[_389]]
                            if mem[_389 + mem[_389]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_389 + mem[_389]]) + 1 < 0 or _389 + ceil32(return_data.size) + ceil32(32 * mem[_389 + mem[_389]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _389 + ceil32(return_data.size) + ceil32(32 * mem[_389 + mem[_389]]) + 1
                            mem[_389 + ceil32(return_data.size)] = _391
                            require _390 + (32 * _391) + 32 <= return_data.size
                            s = _389 + _390 + 32
                            u = _389 + ceil32(return_data.size) + 32
                            idx = 0
                            while idx < _391:
                                mem[u] = mem[s]
                                s = s + 32
                                u = u + 32
                                idx = idx + 1
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_359))
                            staticcall address(_359).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _406 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t == -1:
                                revert with 0, 17
                            if mem[96] < 1:
                                revert with 0, 17
                            if t + 1 >= mem[96] - 1:
                                if mem[_406] < cd[100]:
                                    revert with 0, 17
                                if mem[_406] - cd[100] <= cd[68]:
                                    revert with 0, 'Trade Reverted, No Profit Made'
                            if t + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + ceil32(32 * ('cd', 4).length) + 129]
                            t = t + 1
                            u = mem[_406]
                            continue 
    revert with 0, 50
}

function sub_fbb8b32c(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(arg6))
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 132] = arg7
    require ext_code.size(address(arg4))
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg7
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 96] = 2
    mem[(6 * ceil32(return_data.size)) + 128] = address(arg4)
    mem[(6 * ceil32(return_data.size)) + 160] = address(arg5)
    if 300 > !block.timestamp:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = arg7
    mem[(6 * ceil32(return_data.size)) + 228] = 1
    mem[(6 * ceil32(return_data.size)) + 260] = 160
    mem[(6 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = (6 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 292] = this.address
    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 300
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg7, 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _80 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32
    require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
    require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223
    _81 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0 or (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
    mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    require _80 + (32 * _81) + 32 <= return_data.size
    mem[(7 * ceil32(return_data.size)) + 224 len 32 * _81] = mem[(6 * ceil32(return_data.size)) + _80 + 224 len 32 * _81]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _133 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _134 = mem[_133]
    if mem[_133] < ext_call.return_data[0]:
        revert with 0, 17
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _134 - ext_call.return_data[0]
    require ext_code.size(address(arg5))
    call address(arg5).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _134 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _137 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_137] == bool(mem[_137])
    _139 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_139]:
        revert with 0, 50
    mem[_139 + 32] = address(arg5)
    if 1 >= mem[_139]:
        revert with 0, 50
    mem[_139 + 64] = address(arg6)
    if 300 > !block.timestamp:
        revert with 0, 17
    mem[_139 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_139 + 100] = _134 - ext_call.return_data[0]
    mem[_139 + 132] = 1
    mem[_139 + 164] = 160
    mem[_139 + 260] = mem[_139]
    idx = 0
    s = _139 + 32
    t = _139 + 292
    while idx < mem[_139]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_139 + 196] = this.address
    mem[_139 + 228] = block.timestamp + 300
    require ext_code.size(address(arg2))
    call address(arg2).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _139 + (32 * mem[_139]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _179 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _180 = mem[_179]
    require mem[_179] <= test266151307()
    require _179 + return_data.size > _179 + mem[_179] + 31
    _181 = mem[_179 + mem[_179]]
    if mem[_179 + mem[_179]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_179 + mem[_179]]) + 1 < 0 or _179 + ceil32(return_data.size) + ceil32(32 * mem[_179 + mem[_179]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _179 + ceil32(return_data.size) + ceil32(32 * mem[_179 + mem[_179]]) + 1
    mem[_179 + ceil32(return_data.size)] = _181
    require _180 + (32 * _181) + 32 <= return_data.size
    mem[_179 + ceil32(return_data.size) + 32 len 32 * _181] = mem[_179 + _180 + 32 len 32 * _181]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg6))
    staticcall address(arg6).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _213 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _214 = mem[_213]
    if mem[_213] < ext_call.return_data[0]:
        revert with 0, 17
    mem[mem[64] + 4] = address(arg3)
    mem[mem[64] + 36] = _214 - ext_call.return_data[0]
    require ext_code.size(address(arg6))
    call address(arg6).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), _214 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _217 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_217] == bool(mem[_217])
    _219 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_219]:
        revert with 0, 50
    mem[_219 + 32] = address(arg6)
    if 1 >= mem[_219]:
        revert with 0, 50
    mem[_219 + 64] = address(arg4)
    if 300 > !block.timestamp:
        revert with 0, 17
    mem[_219 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_219 + 100] = _214 - ext_call.return_data[0]
    mem[_219 + 132] = 1
    mem[_219 + 164] = 160
    mem[_219 + 260] = mem[_219]
    idx = 0
    s = _219 + 32
    t = _219 + 292
    while idx < mem[_219]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_219 + 196] = this.address
    mem[_219 + 228] = block.timestamp + 300
    require ext_code.size(address(arg3))
    call address(arg3).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _219 + (32 * mem[_219]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _239 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _240 = mem[_239]
    require mem[_239] <= test266151307()
    require _239 + return_data.size > _239 + mem[_239] + 31
    _241 = mem[_239 + mem[_239]]
    if mem[_239 + mem[_239]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_239 + mem[_239]]) + 1 < 0 or _239 + ceil32(return_data.size) + ceil32(32 * mem[_239 + mem[_239]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _239 + ceil32(return_data.size) + ceil32(32 * mem[_239 + mem[_239]]) + 1
    mem[_239 + ceil32(return_data.size)] = _241
    require _240 + (32 * _241) + 32 <= return_data.size
    mem[_239 + ceil32(return_data.size) + 32 len 32 * _241] = mem[_239 + _240 + 32 len 32 * _241]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _253 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_253] <= ext_call.return_data[0]:
        revert with 0, 'Trade Reverted, No Profit Made'
}



}
