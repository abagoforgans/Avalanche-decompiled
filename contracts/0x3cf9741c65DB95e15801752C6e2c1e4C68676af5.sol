contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address pairAddress;
address sub_c37ad011Address;
address sub_b328f1ecAddress;
address sub_408288ddAddress;
address sub_398345f0Address;

function Pair() payable {
    return pairAddress
}

function sub_398345f0(?) payable {
    return sub_398345f0Address
}

function sub_408288dd(?) payable {
    return sub_408288ddAddress
}

function owner() payable {
    return owner
}

function sub_b328f1ec(?) payable {
    return sub_b328f1ecAddress
}

function sub_c37ad011(?) payable {
    return sub_c37ad011Address
}

function Router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pairAddress = arg1
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
}

function sub_60b6571c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c37ad011Address = address(arg1)
}

function sub_8146ff97(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b328f1ecAddress = address(arg1)
}

function sub_81a4863a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_398345f0Address = address(arg1)
}

function sub_f250ed3d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_408288ddAddress = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8981876b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8b4ba4c0(?) payable {
    require calldata.size - 4 >= 96
    if arg2 <= 0:
        revert with 0, 'Verify Volt Input Amount'
    if arg1:
        if arg1 != 1:
            if arg1 != 2:
                revert with 0, 'Unknown Index'
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(pairAddress)
            staticcall pairAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if sub_c37ad011Address != ext_call.return_data[12 len 20]:
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                if 10^9 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and arg2 > -1 / 10^9 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                require ext_code.size(sub_c37ad011Address)
                call sub_c37ad011Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_b328f1ecAddress)
                call sub_b328f1ecAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 10^9 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_c37ad011Address)
                call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_b328f1ecAddress)
                call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, 10^9 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args sub_c37ad011Address, sub_b328f1ecAddress, arg2, 10^9 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * arg2 / 10^9, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
            else:
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                if 10^9 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / 10^9 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                require ext_code.size(sub_c37ad011Address)
                call sub_c37ad011Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_b328f1ecAddress)
                call sub_b328f1ecAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 10^9 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_c37ad011Address)
                call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(sub_b328f1ecAddress)
                call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, 10^9 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args sub_c37ad011Address, sub_b328f1ecAddress, arg2, 10^9 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * arg2 / 10^9, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(pairAddress)
            call pairAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_408288ddAddress, ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_408288ddAddress)
            call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[64], arg3, msg.sender
        else:
            if not sub_398345f0Address:
                revert with 0, 'Stable Bond not set'
            mem[100] = msg.sender
            mem[132] = this.address
            mem[164] = arg2
            require ext_code.size(sub_c37ad011Address)
            call sub_c37ad011Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = sub_c37ad011Address
            mem[ceil32(return_data.size) + 160] = sub_b328f1ecAddress
            mem[ceil32(return_data.size) + 196] = routerAddress
            mem[ceil32(return_data.size) + 228] = arg2
            require ext_code.size(sub_c37ad011Address)
            call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, arg2
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = arg2
            mem[(2 * ceil32(return_data.size)) + 228] = 1
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = 0xf000000000000000000000000000000000000000000000000000000000000000
            require ext_code.size(routerAddress)
            call routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _389 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _392 = mem[_389]
            require mem[_389] <= test266151307()
            require _389 + mem[_389] + 31 < _389 + return_data.size
            _395 = mem[_389 + mem[_389]]
            if mem[_389 + mem[_389]] > test266151307():
                revert with 0, 65
            if _389 + ceil32(return_data.size) + ceil32(32 * mem[_389 + mem[_389]]) + 1 > test266151307() or ceil32(32 * mem[_389 + mem[_389]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _389 + ceil32(return_data.size) + ceil32(32 * mem[_389 + mem[_389]]) + 1
            mem[_389 + ceil32(return_data.size)] = _395
            require return_data.size >= _392 + (32 * _395) + 32
            mem[_389 + ceil32(return_data.size) + 32 len 32 * _395] = mem[_389 + _392 + 32 len 32 * _395]
            if 1 >= _395:
                revert with 0, 50
            _656 = mem[_389 + ceil32(return_data.size) + 64]
            mem[mem[64] + 4] = sub_398345f0Address
            mem[mem[64] + 36] = _656
            require ext_code.size(sub_b328f1ecAddress)
            call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_398345f0Address, _656
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _665 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_665] == bool(mem[_665])
            if 1 >= _395:
                revert with 0, 50
            mem[mem[64] + 4] = mem[_389 + ceil32(return_data.size) + 64]
            require ext_code.size(sub_398345f0Address)
            call sub_398345f0Address.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], arg3, msg.sender
    else:
        if not sub_408288ddAddress:
            revert with 0, 'LP Bond not set'
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = arg2
        require ext_code.size(sub_c37ad011Address)
        call sub_c37ad011Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not arg2:
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = sub_c37ad011Address
            mem[ceil32(return_data.size) + 160] = sub_b328f1ecAddress
            mem[ceil32(return_data.size) + 196] = routerAddress
            mem[ceil32(return_data.size) + 228] = 0
            require ext_code.size(sub_c37ad011Address)
            call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, 0
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 0
            mem[(2 * ceil32(return_data.size)) + 228] = 1
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = 0xf000000000000000000000000000000000000000000000000000000000000000
            require ext_code.size(routerAddress)
            call routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _390 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _393 = mem[_390]
            require mem[_390] <= test266151307()
            require _390 + mem[_390] + 31 < _390 + return_data.size
            _396 = mem[_390 + mem[_390]]
            if mem[_390 + mem[_390]] > test266151307():
                revert with 0, 65
            if _390 + ceil32(return_data.size) + ceil32(32 * mem[_390 + mem[_390]]) + 1 > test266151307() or ceil32(32 * mem[_390 + mem[_390]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _390 + ceil32(return_data.size) + ceil32(32 * mem[_390 + mem[_390]]) + 1
            mem[_390 + ceil32(return_data.size)] = _396
            require return_data.size >= _393 + (32 * _396) + 32
            mem[_390 + ceil32(return_data.size) + 32 len 32 * _396] = mem[_390 + _393 + 32 len 32 * _396]
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _663 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _666 = mem[_663]
            require mem[_663] == mem[_663 + 18 len 14]
            _670 = mem[_663 + 32]
            require mem[_663 + 32] == mem[_663 + 50 len 14]
            require mem[_663 + 64] == mem[_663 + 92 len 4]
            require ext_code.size(pairAddress)
            staticcall pairAddress.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _683 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_683] == mem[_683 + 12 len 20]
            if sub_c37ad011Address != mem[_683 + 12 len 20]:
                if not Mask(112, 0, _670):
                    revert with 0, 18
                if Mask(112, 0, _666) / Mask(112, 0, _670) > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                if 1 >= _396:
                    revert with 0, 50
                _691 = mem[_390 + ceil32(return_data.size) + 64]
                if not mem[_390 + ceil32(return_data.size) + 64]:
                    if not 10^9 * Mask(112, 0, _666) / Mask(112, 0, _670):
                        revert with 0, 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 0 / 10^9 * Mask(112, 0, _666) / Mask(112, 0, _670)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 0 / 10^9 * Mask(112, 0, _666) / Mask(112, 0, _670)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _703 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_703] == bool(mem[_703])
                    if 1 >= _396:
                        revert with 0, 50
                    _719 = mem[_390 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _719
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _719
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _739 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_739] == bool(mem[_739])
                    if 1 >= _396:
                        revert with 0, 50
                    _767 = mem[_390 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 68] = 0 / 10^9 * Mask(112, 0, _666) / Mask(112, 0, _670)
                    mem[mem[64] + 100] = _767
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 0 / 10^9 * Mask(112, 0, _666) / Mask(112, 0, _670), _767, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _787 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _797 = mem[_787 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _797
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _797
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _831 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_831] == bool(mem[_831])
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _797, arg3, msg.sender
                else:
                    if mem[_390 + ceil32(return_data.size) + 64] and 10^9 > -1 / mem[_390 + ceil32(return_data.size) + 64]:
                        revert with 0, 17
                    if not mem[_390 + ceil32(return_data.size) + 64]:
                        revert with 0, 18
                    require 10^9 * mem[_390 + ceil32(return_data.size) + 64] / mem[_390 + ceil32(return_data.size) + 64] == 10^9
                    if not 10^9 * Mask(112, 0, _666) / Mask(112, 0, _670):
                        revert with 0, 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 10^9 * _691 / 10^9 * Mask(112, 0, _666) / Mask(112, 0, _670)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 10^9 * _691 / 10^9 * Mask(112, 0, _666) / Mask(112, 0, _670)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _732 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_732] == bool(mem[_732])
                    if 1 >= _396:
                        revert with 0, 50
                    _755 = mem[_390 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _755
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _755
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _780 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_780] == bool(mem[_780])
                    if 1 >= _396:
                        revert with 0, 50
                    _812 = mem[_390 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 68] = 10^9 * _691 / 10^9 * Mask(112, 0, _666) / Mask(112, 0, _670)
                    mem[mem[64] + 100] = _812
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 10^9 * _691 / 10^9 * Mask(112, 0, _666) / Mask(112, 0, _670), _812, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _832 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _842 = mem[_832 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _842
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _842
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _875 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_875] == bool(mem[_875])
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _842, arg3, msg.sender
            else:
                if not Mask(112, 0, _666):
                    revert with 0, 18
                if Mask(112, 0, _670) / Mask(112, 0, _666) > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                if 1 >= _396:
                    revert with 0, 50
                _692 = mem[_390 + ceil32(return_data.size) + 64]
                if not mem[_390 + ceil32(return_data.size) + 64]:
                    if not 10^9 * Mask(112, 0, _670) / Mask(112, 0, _666):
                        revert with 0, 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 0 / 10^9 * Mask(112, 0, _670) / Mask(112, 0, _666)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 0 / 10^9 * Mask(112, 0, _670) / Mask(112, 0, _666)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _704 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_704] == bool(mem[_704])
                    if 1 >= _396:
                        revert with 0, 50
                    _722 = mem[_390 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _722
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _722
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _741 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_741] == bool(mem[_741])
                    if 1 >= _396:
                        revert with 0, 50
                    _770 = mem[_390 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 68] = 0 / 10^9 * Mask(112, 0, _670) / Mask(112, 0, _666)
                    mem[mem[64] + 100] = _770
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 0 / 10^9 * Mask(112, 0, _670) / Mask(112, 0, _666), _770, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _789 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _801 = mem[_789 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _801
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _801
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _833 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_833] == bool(mem[_833])
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _801, arg3, msg.sender
                else:
                    if mem[_390 + ceil32(return_data.size) + 64] and 10^9 > -1 / mem[_390 + ceil32(return_data.size) + 64]:
                        revert with 0, 17
                    if not mem[_390 + ceil32(return_data.size) + 64]:
                        revert with 0, 18
                    require 10^9 * mem[_390 + ceil32(return_data.size) + 64] / mem[_390 + ceil32(return_data.size) + 64] == 10^9
                    if not 10^9 * Mask(112, 0, _670) / Mask(112, 0, _666):
                        revert with 0, 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 10^9 * _692 / 10^9 * Mask(112, 0, _670) / Mask(112, 0, _666)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 10^9 * _692 / 10^9 * Mask(112, 0, _670) / Mask(112, 0, _666)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _734 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_734] == bool(mem[_734])
                    if 1 >= _396:
                        revert with 0, 50
                    _757 = mem[_390 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _757
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _757
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _782 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_782] == bool(mem[_782])
                    if 1 >= _396:
                        revert with 0, 50
                    _815 = mem[_390 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 68] = 10^9 * _692 / 10^9 * Mask(112, 0, _670) / Mask(112, 0, _666)
                    mem[mem[64] + 100] = _815
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 10^9 * _692 / 10^9 * Mask(112, 0, _670) / Mask(112, 0, _666), _815, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _834 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _846 = mem[_834 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _846
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _846
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _876 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_876] == bool(mem[_876])
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _846, arg3, msg.sender
        else:
            if arg2 and 50 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            require 50 * arg2 / arg2 == 50
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = sub_c37ad011Address
            mem[ceil32(return_data.size) + 160] = sub_b328f1ecAddress
            mem[ceil32(return_data.size) + 196] = routerAddress
            mem[ceil32(return_data.size) + 228] = 50 * arg2 / 100
            require ext_code.size(sub_c37ad011Address)
            call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, 50 * arg2 / 100
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 50 * arg2 / 100
            mem[(2 * ceil32(return_data.size)) + 228] = 1
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 388
            t = ceil32(return_data.size) + 128
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = 0xf000000000000000000000000000000000000000000000000000000000000000
            require ext_code.size(routerAddress)
            call routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _391 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _394 = mem[_391]
            require mem[_391] <= test266151307()
            require _391 + mem[_391] + 31 < _391 + return_data.size
            _397 = mem[_391 + mem[_391]]
            if mem[_391 + mem[_391]] > test266151307():
                revert with 0, 65
            if _391 + ceil32(return_data.size) + ceil32(32 * mem[_391 + mem[_391]]) + 1 > test266151307() or ceil32(32 * mem[_391 + mem[_391]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _391 + ceil32(return_data.size) + ceil32(32 * mem[_391 + mem[_391]]) + 1
            mem[_391 + ceil32(return_data.size)] = _397
            require return_data.size >= _394 + (32 * _397) + 32
            mem[_391 + ceil32(return_data.size) + 32 len 32 * _397] = mem[_391 + _394 + 32 len 32 * _397]
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _664 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _667 = mem[_664]
            require mem[_664] == mem[_664 + 18 len 14]
            _671 = mem[_664 + 32]
            require mem[_664 + 32] == mem[_664 + 50 len 14]
            require mem[_664 + 64] == mem[_664 + 92 len 4]
            require ext_code.size(pairAddress)
            staticcall pairAddress.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _684 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_684] == mem[_684 + 12 len 20]
            if sub_c37ad011Address != mem[_684 + 12 len 20]:
                if not Mask(112, 0, _671):
                    revert with 0, 18
                if Mask(112, 0, _667) / Mask(112, 0, _671) > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                if 1 >= _397:
                    revert with 0, 50
                _693 = mem[_391 + ceil32(return_data.size) + 64]
                if not mem[_391 + ceil32(return_data.size) + 64]:
                    if not 10^9 * Mask(112, 0, _667) / Mask(112, 0, _671):
                        revert with 0, 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 0 / 10^9 * Mask(112, 0, _667) / Mask(112, 0, _671)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 0 / 10^9 * Mask(112, 0, _667) / Mask(112, 0, _671)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _705 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_705] == bool(mem[_705])
                    if 1 >= _397:
                        revert with 0, 50
                    _725 = mem[_391 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _725
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _725
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _743 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_743] == bool(mem[_743])
                    if 1 >= _397:
                        revert with 0, 50
                    _773 = mem[_391 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 68] = 0 / 10^9 * Mask(112, 0, _667) / Mask(112, 0, _671)
                    mem[mem[64] + 100] = _773
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 0 / 10^9 * Mask(112, 0, _667) / Mask(112, 0, _671), _773, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _791 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _805 = mem[_791 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _805
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _805
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _835 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_835] == bool(mem[_835])
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _805, arg3, msg.sender
                else:
                    if mem[_391 + ceil32(return_data.size) + 64] and 10^9 > -1 / mem[_391 + ceil32(return_data.size) + 64]:
                        revert with 0, 17
                    if not mem[_391 + ceil32(return_data.size) + 64]:
                        revert with 0, 18
                    require 10^9 * mem[_391 + ceil32(return_data.size) + 64] / mem[_391 + ceil32(return_data.size) + 64] == 10^9
                    if not 10^9 * Mask(112, 0, _667) / Mask(112, 0, _671):
                        revert with 0, 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 10^9 * _693 / 10^9 * Mask(112, 0, _667) / Mask(112, 0, _671)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 10^9 * _693 / 10^9 * Mask(112, 0, _667) / Mask(112, 0, _671)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _736 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_736] == bool(mem[_736])
                    if 1 >= _397:
                        revert with 0, 50
                    _759 = mem[_391 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _759
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _759
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _784 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_784] == bool(mem[_784])
                    if 1 >= _397:
                        revert with 0, 50
                    _818 = mem[_391 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 68] = 10^9 * _693 / 10^9 * Mask(112, 0, _667) / Mask(112, 0, _671)
                    mem[mem[64] + 100] = _818
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 10^9 * _693 / 10^9 * Mask(112, 0, _667) / Mask(112, 0, _671), _818, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _836 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _850 = mem[_836 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _850
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _850
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _877 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_877] == bool(mem[_877])
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _850, arg3, msg.sender
            else:
                if not Mask(112, 0, _667):
                    revert with 0, 18
                if Mask(112, 0, _671) / Mask(112, 0, _667) > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                if 1 >= _397:
                    revert with 0, 50
                _694 = mem[_391 + ceil32(return_data.size) + 64]
                if not mem[_391 + ceil32(return_data.size) + 64]:
                    if not 10^9 * Mask(112, 0, _671) / Mask(112, 0, _667):
                        revert with 0, 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 0 / 10^9 * Mask(112, 0, _671) / Mask(112, 0, _667)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 0 / 10^9 * Mask(112, 0, _671) / Mask(112, 0, _667)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _706 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_706] == bool(mem[_706])
                    if 1 >= _397:
                        revert with 0, 50
                    _728 = mem[_391 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _728
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _728
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _745 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_745] == bool(mem[_745])
                    if 1 >= _397:
                        revert with 0, 50
                    _776 = mem[_391 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 68] = 0 / 10^9 * Mask(112, 0, _671) / Mask(112, 0, _667)
                    mem[mem[64] + 100] = _776
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 0 / 10^9 * Mask(112, 0, _671) / Mask(112, 0, _667), _776, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _793 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _809 = mem[_793 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _809
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _809
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _837 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_837] == bool(mem[_837])
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _809, arg3, msg.sender
                else:
                    if mem[_391 + ceil32(return_data.size) + 64] and 10^9 > -1 / mem[_391 + ceil32(return_data.size) + 64]:
                        revert with 0, 17
                    if not mem[_391 + ceil32(return_data.size) + 64]:
                        revert with 0, 18
                    require 10^9 * mem[_391 + ceil32(return_data.size) + 64] / mem[_391 + ceil32(return_data.size) + 64] == 10^9
                    if not 10^9 * Mask(112, 0, _671) / Mask(112, 0, _667):
                        revert with 0, 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 10^9 * _694 / 10^9 * Mask(112, 0, _671) / Mask(112, 0, _667)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 10^9 * _694 / 10^9 * Mask(112, 0, _671) / Mask(112, 0, _667)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _738 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_738] == bool(mem[_738])
                    if 1 >= _397:
                        revert with 0, 50
                    _761 = mem[_391 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _761
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _761
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _786 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_786] == bool(mem[_786])
                    if 1 >= _397:
                        revert with 0, 50
                    _821 = mem[_391 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 68] = 10^9 * _694 / 10^9 * Mask(112, 0, _671) / Mask(112, 0, _667)
                    mem[mem[64] + 100] = _821
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 10^9 * _694 / 10^9 * Mask(112, 0, _671) / Mask(112, 0, _667), _821, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _838 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _854 = mem[_838 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _854
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _854
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _878 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_878] == bool(mem[_878])
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _854, arg3, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
