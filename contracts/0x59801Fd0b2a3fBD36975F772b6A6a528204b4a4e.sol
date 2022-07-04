contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;

function owner() payable {
    return owner
}

function router() payable {
    return routerAddress
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

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
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

function sub_ff3d6a42(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[96] = 2
    mem[128] = address(arg1)
    call routerAddress.WETH() with:
         gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall routerAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require _24 + (32 * _25) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _24 + 224
    s = (2 * ceil32(return_data.size)) + 224
    while idx < ceil32(return_data.size) + _24 + (32 * _25) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 0 >= _25:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_e637e247(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[100] = routerAddress
    mem[132] = arg3
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Approve router for exchange v2 failed'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(arg1)
    call routerAddress.WETH() with:
         gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
    if block.timestamp > -16:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x7a42416a00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg2
    mem[(2 * ceil32(return_data.size)) + 228] = arg3
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = address(arg4)
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 15
    call routerAddress.swapTokensForExactAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, 160, address(arg4), block.timestamp + 15, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _36 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _37 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = _37
    require _36 + (32 * _37) + 32 <= return_data.size
    idx = (2 * ceil32(return_data.size)) + _36 + 224
    s = (4 * ceil32(return_data.size)) + 224
    while idx < (2 * ceil32(return_data.size)) + _36 + (32 * _37) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 0 >= _37:
        revert with 'NH{q', 50
    _52 = mem[(4 * ceil32(return_data.size)) + 224]
    if mem[(4 * ceil32(return_data.size)) + 224] >= arg3:
        mem[mem[64]] = mem[(4 * ceil32(return_data.size)) + 224]
        return memory
          from mem[64]
           len 32
    if arg3 < mem[(4 * ceil32(return_data.size)) + 224]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = address(arg5)
    mem[mem[64] + 36] = arg3 - _52
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg5), arg3 - _52
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _57 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_57] == bool(mem[_57])
    require mem[_57]
    return _52
}



}
