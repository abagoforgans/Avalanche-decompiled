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
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require arg4 == arg4
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
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223 < return_data.size + 192
    _22 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
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
    if 1 >= _22:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_26a215ec(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == arg7
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
    _40 = mem[192 len 4], Mask(224, 32, arg7) >> 32
    require mem[192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg7) >> 32 + 223 < return_data.size + 192
    _41 = mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg7) >> 32 + 192]
    require _40 + (32 * _41) + 32 <= return_data.size
    idx = 0
    s = _40 + 224
    t = ceil32(return_data.size) + 224
    while idx < _41:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _41:
        revert with 'NH{q', 50
    _82 = mem[ceil32(return_data.size) + 256]
    _83 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_83]:
        revert with 'NH{q', 50
    mem[_83 + 32] = address(arg5)
    if 1 >= mem[_83]:
        revert with 'NH{q', 50
    mem[_83 + 64] = address(arg6)
    mem[_83 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_83 + 100] = _82
    mem[_83 + 132] = 64
    mem[_83 + 164] = mem[_83]
    idx = 0
    s = _83 + 32
    t = _83 + 196
    while idx < mem[_83]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _83 + (32 * mem[_83]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _117 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _118 = mem[_117]
    require mem[_117] <= test266151307()
    require _117 + mem[_117] + 31 < _117 + return_data.size
    _119 = mem[_117 + mem[_117]]
    if mem[_117 + mem[_117]] > test266151307():
        revert with 'NH{q', 65
    if _117 + ceil32(return_data.size) + floor32(mem[_117 + mem[_117]]) + 1 > test266151307() or floor32(mem[_117 + mem[_117]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _117 + ceil32(return_data.size) + floor32(mem[_117 + mem[_117]]) + 1
    mem[_117 + ceil32(return_data.size)] = _119
    require _118 + (32 * _119) + 32 <= return_data.size
    idx = 0
    s = _117 + _118 + 32
    t = _117 + ceil32(return_data.size) + 32
    while idx < _119:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[_83] < 1:
        revert with 'NH{q', 17
    if mem[_83] - 1 >= _119:
        revert with 'NH{q', 50
    _145 = mem[(32 * mem[_83] - 1) + _117 + ceil32(return_data.size) + 32]
    _146 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_146]:
        revert with 'NH{q', 50
    mem[_146 + 32] = address(arg6)
    if 1 >= mem[_146]:
        revert with 'NH{q', 50
    mem[_146 + 64] = address(arg4)
    mem[_146 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_146 + 100] = _145
    mem[_146 + 132] = 64
    mem[_146 + 164] = mem[_146]
    idx = 0
    s = _146 + 32
    t = _146 + 196
    while idx < mem[_146]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg3))
    staticcall address(arg3).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _146 + (32 * mem[_146]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _165 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _166 = mem[_165]
    require mem[_165] <= test266151307()
    require _165 + mem[_165] + 31 < _165 + return_data.size
    _167 = mem[_165 + mem[_165]]
    if mem[_165 + mem[_165]] > test266151307():
        revert with 'NH{q', 65
    if _165 + ceil32(return_data.size) + floor32(mem[_165 + mem[_165]]) + 1 > test266151307() or floor32(mem[_165 + mem[_165]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _165 + ceil32(return_data.size) + floor32(mem[_165 + mem[_165]]) + 1
    mem[_165 + ceil32(return_data.size)] = _167
    require _166 + (32 * _167) + 32 <= return_data.size
    idx = 0
    s = _165 + _166 + 32
    t = _165 + ceil32(return_data.size) + 32
    while idx < _167:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[_146] < 1:
        revert with 'NH{q', 17
    if mem[_146] - 1 >= _167:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * mem[_146] - 1) + _165 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_e5130391(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    mem[96] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg6
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
           args arg6, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _44 = mem[192 len 4], Mask(224, 32, arg6) >> 32
    require mem[192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg6) >> 32 + 223 < return_data.size + 192
    _45 = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
    require _44 + (32 * _45) + 32 <= return_data.size
    idx = 0
    s = _44 + 224
    t = ceil32(return_data.size) + 224
    while idx < _45:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _45:
        revert with 'NH{q', 50
    _96 = mem[ceil32(return_data.size) + 256]
    _97 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_97]:
        revert with 'NH{q', 50
    mem[_97 + 32] = address(arg4)
    if 1 >= mem[_97]:
        revert with 'NH{q', 50
    mem[_97 + 64] = address(arg5)
    mem[_97 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_97 + 100] = _96
    mem[_97 + 132] = 64
    mem[_97 + 164] = mem[_97]
    idx = 0
    s = _97 + 32
    t = _97 + 196
    while idx < mem[_97]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _97 + (32 * mem[_97]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _146 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _147 = mem[_146]
    require mem[_146] <= test266151307()
    require _146 + mem[_146] + 31 < _146 + return_data.size
    _148 = mem[_146 + mem[_146]]
    if mem[_146 + mem[_146]] > test266151307():
        revert with 'NH{q', 65
    if _146 + ceil32(return_data.size) + floor32(mem[_146 + mem[_146]]) + 1 > test266151307() or floor32(mem[_146 + mem[_146]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _146 + ceil32(return_data.size) + floor32(mem[_146 + mem[_146]]) + 1
    mem[_146 + ceil32(return_data.size)] = _148
    require _147 + (32 * _148) + 32 <= return_data.size
    idx = 0
    s = _146 + _147 + 32
    t = _146 + ceil32(return_data.size) + 32
    while idx < _148:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[_97] < 1:
        revert with 'NH{q', 17
    if mem[_97] - 1 >= _148:
        revert with 'NH{q', 50
    _189 = mem[(32 * mem[_97] - 1) + _146 + ceil32(return_data.size) + 32]
    _190 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_190]:
        revert with 'NH{q', 50
    mem[_190 + 32] = address(arg5)
    if 1 >= mem[_190]:
        revert with 'NH{q', 50
    mem[_190 + 64] = address(arg4)
    mem[_190 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_190 + 100] = _189
    mem[_190 + 132] = 64
    mem[_190 + 164] = mem[_190]
    idx = 0
    s = _190 + 32
    t = _190 + 196
    while idx < mem[_190]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _190 + (32 * mem[_190]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _224 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _225 = mem[_224]
    require mem[_224] <= test266151307()
    require _224 + mem[_224] + 31 < _224 + return_data.size
    _226 = mem[_224 + mem[_224]]
    if mem[_224 + mem[_224]] > test266151307():
        revert with 'NH{q', 65
    if _224 + ceil32(return_data.size) + floor32(mem[_224 + mem[_224]]) + 1 > test266151307() or floor32(mem[_224 + mem[_224]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _224 + ceil32(return_data.size) + floor32(mem[_224 + mem[_224]]) + 1
    mem[_224 + ceil32(return_data.size)] = _226
    require _225 + (32 * _226) + 32 <= return_data.size
    idx = 0
    s = _224 + _225 + 32
    t = _224 + ceil32(return_data.size) + 32
    while idx < _226:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[_190] < 1:
        revert with 'NH{q', 17
    if mem[_190] - 1 >= _226:
        revert with 'NH{q', 50
    _252 = mem[(32 * mem[_190] - 1) + _224 + ceil32(return_data.size) + 32]
    _253 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_253]:
        revert with 'NH{q', 50
    mem[_253 + 32] = address(arg4)
    if 1 >= mem[_253]:
        revert with 'NH{q', 50
    mem[_253 + 64] = address(arg3)
    mem[_253 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_253 + 100] = _252
    mem[_253 + 132] = 64
    mem[_253 + 164] = mem[_253]
    idx = 0
    s = _253 + 32
    t = _253 + 196
    while idx < mem[_253]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _253 + (32 * mem[_253]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _272 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _273 = mem[_272]
    require mem[_272] <= test266151307()
    require _272 + mem[_272] + 31 < _272 + return_data.size
    _274 = mem[_272 + mem[_272]]
    if mem[_272 + mem[_272]] > test266151307():
        revert with 'NH{q', 65
    if _272 + ceil32(return_data.size) + floor32(mem[_272 + mem[_272]]) + 1 > test266151307() or floor32(mem[_272 + mem[_272]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _272 + ceil32(return_data.size) + floor32(mem[_272 + mem[_272]]) + 1
    mem[_272 + ceil32(return_data.size)] = _274
    require _273 + (32 * _274) + 32 <= return_data.size
    idx = 0
    s = _272 + _273 + 32
    t = _272 + ceil32(return_data.size) + 32
    while idx < _274:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[_253] < 1:
        revert with 'NH{q', 17
    if mem[_253] - 1 >= _274:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * mem[_253] - 1) + _272 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function sub_0bb3cc95(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 132] = arg6
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg6
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = address(arg3)
    mem[(4 * ceil32(return_data.size)) + 160] = address(arg4)
    if block.timestamp > -301:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = arg6
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
        args arg6, 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _31 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _32 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _32
    require _31 + (32 * _32) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _31 + 224
    t = (6 * ceil32(return_data.size)) + 224
    while idx < _32:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _66 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _67 = mem[_66]
    require mem[_66] == mem[_66]
    if mem[_66] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _70 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _71 = mem[_70]
    require mem[_70] == mem[_70]
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _67 - ext_call.return_data[0]
    require ext_code.size(address(arg4))
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _67 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_74] == bool(mem[_74])
    _76 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_76]:
        revert with 'NH{q', 50
    mem[_76 + 32] = address(arg4)
    if 1 >= mem[_76]:
        revert with 'NH{q', 50
    mem[_76 + 64] = address(arg5)
    if block.timestamp > -301:
        revert with 'NH{q', 17
    mem[_76 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_76 + 100] = _67 - ext_call.return_data[0]
    mem[_76 + 132] = 1
    mem[_76 + 164] = 160
    mem[_76 + 260] = mem[_76]
    idx = 0
    s = _76 + 32
    t = _76 + 292
    while idx < mem[_76]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_76 + 196] = this.address
    mem[_76 + 228] = block.timestamp + 300
    require ext_code.size(address(arg2))
    call address(arg2).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _76 + (32 * mem[_76]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _98 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _99 = mem[_98]
    require mem[_98] <= test266151307()
    require _98 + mem[_98] + 31 < _98 + return_data.size
    _100 = mem[_98 + mem[_98]]
    if mem[_98 + mem[_98]] > test266151307():
        revert with 'NH{q', 65
    if _98 + ceil32(return_data.size) + floor32(mem[_98 + mem[_98]]) + 1 > test266151307() or floor32(mem[_98 + mem[_98]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _98 + ceil32(return_data.size) + floor32(mem[_98 + mem[_98]]) + 1
    mem[_98 + ceil32(return_data.size)] = _100
    require _99 + (32 * _100) + 32 <= return_data.size
    idx = 0
    s = _98 + _99 + 32
    t = _98 + ceil32(return_data.size) + 32
    while idx < _100:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _133 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _134 = mem[_133]
    require mem[_133] == mem[_133]
    if mem[_133] < _71:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = address(arg1)
    mem[mem[64] + 36] = _134 - _71
    require ext_code.size(address(arg5))
    call address(arg5).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), _134 - _71
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
        revert with 'NH{q', 50
    mem[_139 + 32] = address(arg5)
    if 1 >= mem[_139]:
        revert with 'NH{q', 50
    mem[_139 + 64] = address(arg4)
    if block.timestamp > -301:
        revert with 'NH{q', 17
    mem[_139 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_139 + 100] = _134 - _71
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
    require ext_code.size(address(arg1))
    call address(arg1).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _139 + (32 * mem[_139]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _166 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _167 = mem[_166]
    require mem[_166] <= test266151307()
    require _166 + mem[_166] + 31 < _166 + return_data.size
    _168 = mem[_166 + mem[_166]]
    if mem[_166 + mem[_166]] > test266151307():
        revert with 'NH{q', 65
    if _166 + ceil32(return_data.size) + floor32(mem[_166 + mem[_166]]) + 1 > test266151307() or floor32(mem[_166 + mem[_166]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _166 + ceil32(return_data.size) + floor32(mem[_166 + mem[_166]]) + 1
    mem[_166 + ceil32(return_data.size)] = _168
    require _167 + (32 * _168) + 32 <= return_data.size
    idx = 0
    s = _166 + _167 + 32
    t = _166 + ceil32(return_data.size) + 32
    while idx < _168:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _200 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _201 = mem[_200]
    require mem[_200] == mem[_200]
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _201
    require ext_code.size(address(arg4))
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _201
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _204 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_204] == bool(mem[_204])
    _206 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_206]:
        revert with 'NH{q', 50
    mem[_206 + 32] = address(arg4)
    if 1 >= mem[_206]:
        revert with 'NH{q', 50
    mem[_206 + 64] = address(arg3)
    if block.timestamp > -301:
        revert with 'NH{q', 17
    mem[_206 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_206 + 100] = _201
    mem[_206 + 132] = 1
    mem[_206 + 164] = 160
    mem[_206 + 260] = mem[_206]
    idx = 0
    s = _206 + 32
    t = _206 + 292
    while idx < mem[_206]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_206 + 196] = this.address
    mem[_206 + 228] = block.timestamp + 300
    require ext_code.size(address(arg2))
    call address(arg2).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _206 + (32 * mem[_206]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _226 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _227 = mem[_226]
    require mem[_226] <= test266151307()
    require _226 + mem[_226] + 31 < _226 + return_data.size
    _228 = mem[_226 + mem[_226]]
    if mem[_226 + mem[_226]] > test266151307():
        revert with 'NH{q', 65
    if _226 + ceil32(return_data.size) + floor32(mem[_226 + mem[_226]]) + 1 > test266151307() or floor32(mem[_226 + mem[_226]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _226 + ceil32(return_data.size) + floor32(mem[_226 + mem[_226]]) + 1
    mem[_226 + ceil32(return_data.size)] = _228
    require _227 + (32 * _228) + 32 <= return_data.size
    idx = 0
    s = _226 + _227 + 32
    t = _226 + ceil32(return_data.size) + 32
    while idx < _228:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _240 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_240] == mem[_240]
    if mem[_240] <= ext_call.return_data[0]:
        revert with 0, 'Trade Reverted, No Profit Made'
}



}
