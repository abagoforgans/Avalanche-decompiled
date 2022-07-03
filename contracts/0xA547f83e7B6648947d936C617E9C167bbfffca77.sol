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

function sub_068e7ca1(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
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
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 223 < return_data.size + 192
    _37 = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    require _36 + (32 * _37) + 32 <= return_data.size
    idx = 0
    s = _36 + 224
    t = ceil32(return_data.size) + 224
    while idx < _37:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _37:
        revert with 'NH{q', 50
    _63 = mem[ceil32(return_data.size) + 256]
    _64 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_64]:
        revert with 'NH{q', 50
    mem[_64 + 32] = address(arg4)
    if 1 >= mem[_64]:
        revert with 'NH{q', 50
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
    require _83 + mem[_83] + 31 < _83 + return_data.size
    _85 = mem[_83 + mem[_83]]
    if mem[_83 + mem[_83]] > test266151307():
        revert with 'NH{q', 65
    if _83 + ceil32(return_data.size) + floor32(mem[_83 + mem[_83]]) + 1 > test266151307() or floor32(mem[_83 + mem[_83]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _83 + ceil32(return_data.size) + floor32(mem[_83 + mem[_83]]) + 1
    mem[_83 + ceil32(return_data.size)] = _85
    require _84 + (32 * _85) + 32 <= return_data.size
    idx = 0
    s = _83 + _84 + 32
    t = _83 + ceil32(return_data.size) + 32
    while idx < _85:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[_64] < 1:
        revert with 'NH{q', 17
    if mem[_64] - 1 >= _85:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * mem[_64] - 1) + _83 + ceil32(return_data.size) + 32]
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

function sub_1aa51318(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
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
    if block.timestamp > -301:
        revert with 'NH{q', 17
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
    _33 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _34 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _34
    require _33 + (32 * _34) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _33 + 224
    t = (6 * ceil32(return_data.size)) + 224
    while idx < _34:
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
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _67 - ext_call.return_data[0]
    require ext_code.size(address(arg4))
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _67 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _70 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_70] == bool(mem[_70])
    _72 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_72]:
        revert with 'NH{q', 50
    mem[_72 + 32] = address(arg4)
    if 1 >= mem[_72]:
        revert with 'NH{q', 50
    mem[_72 + 64] = address(arg3)
    if block.timestamp > -301:
        revert with 'NH{q', 17
    mem[_72 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_72 + 100] = _67 - ext_call.return_data[0]
    mem[_72 + 132] = 1
    mem[_72 + 164] = 160
    mem[_72 + 260] = mem[_72]
    idx = 0
    s = _72 + 32
    t = _72 + 292
    while idx < mem[_72]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_72 + 196] = this.address
    mem[_72 + 228] = block.timestamp + 300
    require ext_code.size(address(arg2))
    call address(arg2).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _72 + (32 * mem[_72]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _93 = mem[_92]
    require mem[_92] <= test266151307()
    require _92 + mem[_92] + 31 < _92 + return_data.size
    _94 = mem[_92 + mem[_92]]
    if mem[_92 + mem[_92]] > test266151307():
        revert with 'NH{q', 65
    if _92 + ceil32(return_data.size) + floor32(mem[_92 + mem[_92]]) + 1 > test266151307() or floor32(mem[_92 + mem[_92]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _92 + ceil32(return_data.size) + floor32(mem[_92 + mem[_92]]) + 1
    mem[_92 + ceil32(return_data.size)] = _94
    require _93 + (32 * _94) + 32 <= return_data.size
    idx = 0
    s = _92 + _93 + 32
    t = _92 + ceil32(return_data.size) + 32
    while idx < _94:
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
    _106 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_106] == mem[_106]
    if mem[_106] <= ext_call.return_data[0]:
        revert with 0, 'Trade Reverted, No Profit Made'
}



}
