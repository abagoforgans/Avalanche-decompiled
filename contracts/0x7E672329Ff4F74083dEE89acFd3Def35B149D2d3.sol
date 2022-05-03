contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address stakerAddress;
address timeAddress;
address memoAddress;
address mimAddress;

function time() payable {
    return timeAddress
}

function memo() payable {
    return memoAddress
}

function staker() payable {
    return stakerAddress
}

function owner() payable {
    return owner
}

function mim() payable {
    return mimAddress
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

function warmupPeriod() payable {
    require ext_code.size(stakerAddress)
    staticcall stakerAddress.0xdeac361a with:
            gas gas_remaining wei
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

function sub_9548a96e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function nextEpoch() payable {
    require ext_code.size(stakerAddress)
    staticcall stakerAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    return ext_call.return_data[124 len 4]
}

function epoch() payable {
    require ext_code.size(stakerAddress)
    staticcall stakerAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64] << 224, uint32(ext_call.return_data[96])
}

function sub_4c828b01(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = mimAddress
    mem[160] = timeAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
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
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _22 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _21 + (32 * _22) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _22] = mem[_21 + 224 len 32 * _22]
    if _22 < 1:
        revert with 0, 17
    if _22 - 1 >= _22:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * _22 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_a433194f(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = timeAddress
    mem[160] = mimAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
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
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _22 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _21 + (32 * _22) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _22] = mem[_21 + 224 len 32 * _22]
    if _22 < 1:
        revert with 0, 17
    if _22 - 1 >= _22:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * _22 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_e08abeda(?) payable {
    require calldata.size - 4 >= 96
    mem[100] = msg.sender
    require ext_code.size(memoAddress)
    staticcall memoAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'not enough memo'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg1
    require ext_code.size(memoAddress)
    call memoAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = stakerAddress
    mem[(2 * ceil32(return_data.size)) + 132] = arg1
    require ext_code.size(memoAddress)
    call memoAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stakerAddress, arg1
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stakerAddress)
    call stakerAddress.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = timeAddress
    mem[(4 * ceil32(return_data.size)) + 160] = mimAddress
    mem[(4 * ceil32(return_data.size)) + 196] = routerAddress
    mem[(4 * ceil32(return_data.size)) + 228] = arg1
    require ext_code.size(timeAddress)
    call timeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg1
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = arg1
    mem[(6 * ceil32(return_data.size)) + 228] = arg2
    mem[(6 * ceil32(return_data.size)) + 260] = 160
    mem[(6 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (6 * ceil32(return_data.size)) + 388
    while idx < mem[(4 * ceil32(return_data.size)) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 292] = this.address
    mem[(6 * ceil32(return_data.size)) + 324] = arg3
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _44 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _45 = mem[_44]
    require mem[_44] <= test266151307()
    require _44 + mem[_44] + 31 < _44 + return_data.size
    _46 = mem[_44 + mem[_44]]
    if mem[_44 + mem[_44]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_44 + mem[_44]]) + 1 < 0 or _44 + ceil32(return_data.size) + ceil32(32 * mem[_44 + mem[_44]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _44 + ceil32(return_data.size) + ceil32(32 * mem[_44 + mem[_44]]) + 1
    mem[_44 + ceil32(return_data.size)] = _46
    require return_data.size >= _45 + (32 * _46) + 32
    mem[_44 + ceil32(return_data.size) + 32 len 32 * _46] = mem[_44 + _45 + 32 len 32 * _46]
    if _46 < 1:
        revert with 0, 17
    if _46 - 1 >= _46:
        revert with 0, 50
    _59 = mem[(32 * _46 - 1) + _44 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _59
    require ext_code.size(mimAddress)
    call mimAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _59
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _62 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_62] == bool(mem[_62])
}

function sub_bc908f10(?) payable {
    require calldata.size - 4 >= 128
    require arg4 == bool(arg4)
    if arg4:
        mem[100] = msg.sender
        require ext_code.size(mimAddress)
        staticcall mimAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            revert with 0, 'not enough mim'
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = this.address
        mem[ceil32(return_data.size) + 164] = arg1
        require ext_code.size(mimAddress)
        call mimAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = mimAddress
        mem[(2 * ceil32(return_data.size)) + 160] = timeAddress
        mem[(2 * ceil32(return_data.size)) + 196] = routerAddress
        mem[(2 * ceil32(return_data.size)) + 228] = arg1
        require ext_code.size(mimAddress)
        call mimAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg1
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg1
        mem[(4 * ceil32(return_data.size)) + 228] = arg2
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = arg3
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _103 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _105 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _105
        require return_data.size >= _103 + (32 * _105) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _105] = mem[(4 * ceil32(return_data.size)) + _103 + 224 len 32 * _105]
        if _105 < 1:
            revert with 0, 17
        if _105 - 1 >= _105:
            revert with 0, 50
        _151 = mem[(32 * _105 - 1) + (6 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 4] = stakerAddress
        mem[mem[64] + 36] = _151
        require ext_code.size(timeAddress)
        call timeAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stakerAddress, _151
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _157 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_157] == bool(mem[_157])
        mem[mem[64] + 4] = _151
        mem[mem[64] + 36] = this.address
        require ext_code.size(stakerAddress)
        call stakerAddress.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args _151, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _165 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_165] == bool(mem[_165])
        if not mem[_165]:
            revert with 0, 'staking failed'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _151
        require ext_code.size(memoAddress)
        call memoAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _151
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_177] == bool(mem[_177])
    else:
        require ext_code.size(stakerAddress)
        staticcall stakerAddress.0xdeac361a with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'warmup period is set to none zero'
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(mimAddress)
        staticcall mimAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            revert with 0, 'not enough mim'
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        mem[(2 * ceil32(return_data.size)) + 164] = arg1
        require ext_code.size(mimAddress)
        call mimAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = mimAddress
        mem[(4 * ceil32(return_data.size)) + 160] = timeAddress
        mem[(4 * ceil32(return_data.size)) + 196] = routerAddress
        mem[(4 * ceil32(return_data.size)) + 228] = arg1
        require ext_code.size(mimAddress)
        call mimAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg1
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = arg1
        mem[(6 * ceil32(return_data.size)) + 228] = arg2
        mem[(6 * ceil32(return_data.size)) + 260] = 160
        mem[(6 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 388
        while idx < mem[(4 * ceil32(return_data.size)) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 292] = this.address
        mem[(6 * ceil32(return_data.size)) + 324] = arg3
        require ext_code.size(routerAddress)
        call routerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _102 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _104 = mem[_102]
        require mem[_102] <= test266151307()
        require _102 + mem[_102] + 31 < _102 + return_data.size
        _106 = mem[_102 + mem[_102]]
        if mem[_102 + mem[_102]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_102 + mem[_102]]) + 1 < 0 or _102 + ceil32(return_data.size) + ceil32(32 * mem[_102 + mem[_102]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _102 + ceil32(return_data.size) + ceil32(32 * mem[_102 + mem[_102]]) + 1
        mem[_102 + ceil32(return_data.size)] = _106
        require return_data.size >= _104 + (32 * _106) + 32
        mem[_102 + ceil32(return_data.size) + 32 len 32 * _106] = mem[_102 + _104 + 32 len 32 * _106]
        if _106 < 1:
            revert with 0, 17
        if _106 - 1 >= _106:
            revert with 0, 50
        _152 = mem[(32 * _106 - 1) + _102 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = stakerAddress
        mem[mem[64] + 36] = _152
        require ext_code.size(timeAddress)
        call timeAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stakerAddress, _152
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _158 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_158] == bool(mem[_158])
        mem[mem[64] + 4] = _152
        mem[mem[64] + 36] = this.address
        require ext_code.size(stakerAddress)
        call stakerAddress.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args _152, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_166] == bool(mem[_166])
        if not mem[_166]:
            revert with 0, 'staking failed'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _152
        require ext_code.size(memoAddress)
        call memoAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _152
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _178 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_178] == bool(mem[_178])
}



}
