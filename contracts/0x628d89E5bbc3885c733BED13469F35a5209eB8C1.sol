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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
            if ext_call.return_data[12 len 20] != sub_c37ad011Address:
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and 10^9 > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 10^9 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and arg2 > -1 / 10^9 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
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
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and 10^9 > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 10^9 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / 10^9 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
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
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(pairAddress)
            call pairAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = arg2
            mem[(2 * ceil32(return_data.size)) + 228] = 1
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
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = 0xf000000000000000000000000000000000000000000000000000000000000000
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _148 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _151 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
            require _148 + (32 * _151) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _148 + 224
            t = (4 * ceil32(return_data.size)) + 224
            while idx < _151:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _151:
                revert with 'NH{q', 50
            _326 = mem[(4 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 4] = sub_398345f0Address
            mem[mem[64] + 36] = _326
            require ext_code.size(sub_b328f1ecAddress)
            call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_398345f0Address, _326
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _339 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_339] == bool(mem[_339])
            if 1 >= _151:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(4 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(sub_398345f0Address)
            call sub_398345f0Address.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], arg3, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _355 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_355] == mem[_355]
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
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 0
            mem[(2 * ceil32(return_data.size)) + 228] = 1
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
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = 0xf000000000000000000000000000000000000000000000000000000000000000
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _149 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _152 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require _149 + (32 * _152) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _149 + 224
            t = (4 * ceil32(return_data.size)) + 224
            while idx < _152:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _332 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _334 = mem[_332]
            require mem[_332] == mem[_332 + 18 len 14]
            _337 = mem[_332 + 32]
            require mem[_332 + 32] == mem[_332 + 50 len 14]
            require mem[_332 + 64] == mem[_332 + 92 len 4]
            require ext_code.size(pairAddress)
            staticcall pairAddress.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _350 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_350] == mem[_350 + 12 len 20]
            if mem[_350 + 12 len 20] != sub_c37ad011Address:
                if not Mask(112, 0, _337):
                    revert with 'NH{q', 18
                if Mask(112, 0, _334) / Mask(112, 0, _337) and 10^9 > -1 / Mask(112, 0, _334) / Mask(112, 0, _337):
                    revert with 'NH{q', 17
                if 1 >= _152:
                    revert with 'NH{q', 50
                _361 = mem[(4 * ceil32(return_data.size)) + 256]
                if not mem[(4 * ceil32(return_data.size)) + 256]:
                    if not 10^9 * Mask(112, 0, _334) / Mask(112, 0, _337):
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 0 / 10^9 * Mask(112, 0, _334) / Mask(112, 0, _337)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 0 / 10^9 * Mask(112, 0, _334) / Mask(112, 0, _337)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _373 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_373] == bool(mem[_373])
                    if 1 >= _152:
                        revert with 'NH{q', 50
                    _389 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _389
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _389
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_413] == bool(mem[_413])
                    if 1 >= _152:
                        revert with 'NH{q', 50
                    _437 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 68] = 0 / 10^9 * Mask(112, 0, _334) / Mask(112, 0, _337)
                    mem[mem[64] + 100] = _437
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 0 / 10^9 * Mask(112, 0, _334) / Mask(112, 0, _337), _437, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_473] == mem[_473]
                    require mem[_473 + 32] == mem[_473 + 32]
                    _493 = mem[_473 + 64]
                    require mem[_473 + 64] == mem[_473 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _493
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _493
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_517] == bool(mem[_517])
                    mem[mem[64] + 4] = _493
                    mem[mem[64] + 36] = arg3
                    mem[mem[64] + 68] = msg.sender
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _493, arg3, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _553 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_553] == mem[_553]
                else:
                    if mem[(4 * ceil32(return_data.size)) + 256] and 10^9 > -1 / mem[(4 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 17
                    if not mem[(4 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 18
                    require 10^9 * mem[(4 * ceil32(return_data.size)) + 256] / mem[(4 * ceil32(return_data.size)) + 256] == 10^9
                    if not 10^9 * Mask(112, 0, _334) / Mask(112, 0, _337):
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 10^9 * _361 / 10^9 * Mask(112, 0, _334) / Mask(112, 0, _337)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 10^9 * _361 / 10^9 * Mask(112, 0, _334) / Mask(112, 0, _337)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _401 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_401] == bool(mem[_401])
                    if 1 >= _152:
                        revert with 'NH{q', 50
                    _421 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _421
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _421
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _449 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_449] == bool(mem[_449])
                    if 1 >= _152:
                        revert with 'NH{q', 50
                    _461 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 68] = 10^9 * _361 / 10^9 * Mask(112, 0, _334) / Mask(112, 0, _337)
                    mem[mem[64] + 100] = _461
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 10^9 * _361 / 10^9 * Mask(112, 0, _334) / Mask(112, 0, _337), _461, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _489 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_489] == mem[_489]
                    require mem[_489 + 32] == mem[_489 + 32]
                    _509 = mem[_489 + 64]
                    require mem[_489 + 64] == mem[_489 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _509
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _509
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _537 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_537] == bool(mem[_537])
                    mem[mem[64] + 4] = _509
                    mem[mem[64] + 36] = arg3
                    mem[mem[64] + 68] = msg.sender
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _509, arg3, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _565 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_565] == mem[_565]
            else:
                if not Mask(112, 0, _334):
                    revert with 'NH{q', 18
                if Mask(112, 0, _337) / Mask(112, 0, _334) and 10^9 > -1 / Mask(112, 0, _337) / Mask(112, 0, _334):
                    revert with 'NH{q', 17
                if 1 >= _152:
                    revert with 'NH{q', 50
                _362 = mem[(4 * ceil32(return_data.size)) + 256]
                if not mem[(4 * ceil32(return_data.size)) + 256]:
                    if not 10^9 * Mask(112, 0, _337) / Mask(112, 0, _334):
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 0 / 10^9 * Mask(112, 0, _337) / Mask(112, 0, _334)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 0 / 10^9 * Mask(112, 0, _337) / Mask(112, 0, _334)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _374 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_374] == bool(mem[_374])
                    if 1 >= _152:
                        revert with 'NH{q', 50
                    _391 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _391
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _391
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _415 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_415] == bool(mem[_415])
                    if 1 >= _152:
                        revert with 'NH{q', 50
                    _439 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 68] = 0 / 10^9 * Mask(112, 0, _337) / Mask(112, 0, _334)
                    mem[mem[64] + 100] = _439
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 0 / 10^9 * Mask(112, 0, _337) / Mask(112, 0, _334), _439, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _474 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_474] == mem[_474]
                    require mem[_474 + 32] == mem[_474 + 32]
                    _494 = mem[_474 + 64]
                    require mem[_474 + 64] == mem[_474 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _494
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _494
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_518] == bool(mem[_518])
                    mem[mem[64] + 4] = _494
                    mem[mem[64] + 36] = arg3
                    mem[mem[64] + 68] = msg.sender
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _494, arg3, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _554 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_554] == mem[_554]
                else:
                    if mem[(4 * ceil32(return_data.size)) + 256] and 10^9 > -1 / mem[(4 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 17
                    if not mem[(4 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 18
                    require 10^9 * mem[(4 * ceil32(return_data.size)) + 256] / mem[(4 * ceil32(return_data.size)) + 256] == 10^9
                    if not 10^9 * Mask(112, 0, _337) / Mask(112, 0, _334):
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 10^9 * _362 / 10^9 * Mask(112, 0, _337) / Mask(112, 0, _334)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 10^9 * _362 / 10^9 * Mask(112, 0, _337) / Mask(112, 0, _334)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _402 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_402] == bool(mem[_402])
                    if 1 >= _152:
                        revert with 'NH{q', 50
                    _423 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _423
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _423
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _450 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_450] == bool(mem[_450])
                    if 1 >= _152:
                        revert with 'NH{q', 50
                    _463 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 68] = 10^9 * _362 / 10^9 * Mask(112, 0, _337) / Mask(112, 0, _334)
                    mem[mem[64] + 100] = _463
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 10^9 * _362 / 10^9 * Mask(112, 0, _337) / Mask(112, 0, _334), _463, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _490 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_490] == mem[_490]
                    require mem[_490 + 32] == mem[_490 + 32]
                    _510 = mem[_490 + 64]
                    require mem[_490 + 64] == mem[_490 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _510
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _510
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _538 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_538] == bool(mem[_538])
                    mem[mem[64] + 4] = _510
                    mem[mem[64] + 36] = arg3
                    mem[mem[64] + 68] = msg.sender
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _510, arg3, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _566 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_566] == mem[_566]
        else:
            if arg2 and 50 > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
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
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 50 * arg2 / 100
            mem[(2 * ceil32(return_data.size)) + 228] = 1
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
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = 0xf000000000000000000000000000000000000000000000000000000000000000
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 50 * arg2 / 100, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _150 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 50 * arg2 / 100) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 50 * arg2 / 100) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 50 * arg2 / 100) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _153 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 50 * arg2 / 100) >> 32 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 50 * arg2 / 100) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 50 * arg2 / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 50 * arg2 / 100) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 50 * arg2 / 100) >> 32 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 50 * arg2 / 100) >> 32 + 192]
            require _150 + (32 * _153) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _150 + 224
            t = (4 * ceil32(return_data.size)) + 224
            while idx < _153:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(pairAddress)
            staticcall pairAddress.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _333 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _335 = mem[_333]
            require mem[_333] == mem[_333 + 18 len 14]
            _338 = mem[_333 + 32]
            require mem[_333 + 32] == mem[_333 + 50 len 14]
            require mem[_333 + 64] == mem[_333 + 92 len 4]
            require ext_code.size(pairAddress)
            staticcall pairAddress.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _351 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_351] == mem[_351 + 12 len 20]
            if mem[_351 + 12 len 20] != sub_c37ad011Address:
                if not Mask(112, 0, _338):
                    revert with 'NH{q', 18
                if Mask(112, 0, _335) / Mask(112, 0, _338) and 10^9 > -1 / Mask(112, 0, _335) / Mask(112, 0, _338):
                    revert with 'NH{q', 17
                if 1 >= _153:
                    revert with 'NH{q', 50
                _363 = mem[(4 * ceil32(return_data.size)) + 256]
                if not mem[(4 * ceil32(return_data.size)) + 256]:
                    if not 10^9 * Mask(112, 0, _335) / Mask(112, 0, _338):
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 0 / 10^9 * Mask(112, 0, _335) / Mask(112, 0, _338)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 0 / 10^9 * Mask(112, 0, _335) / Mask(112, 0, _338)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_375] == bool(mem[_375])
                    if 1 >= _153:
                        revert with 'NH{q', 50
                    _393 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _393
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _393
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _417 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_417] == bool(mem[_417])
                    if 1 >= _153:
                        revert with 'NH{q', 50
                    _441 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 68] = 0 / 10^9 * Mask(112, 0, _335) / Mask(112, 0, _338)
                    mem[mem[64] + 100] = _441
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 0 / 10^9 * Mask(112, 0, _335) / Mask(112, 0, _338), _441, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _475 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_475] == mem[_475]
                    require mem[_475 + 32] == mem[_475 + 32]
                    _495 = mem[_475 + 64]
                    require mem[_475 + 64] == mem[_475 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _495
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _495
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _519 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_519] == bool(mem[_519])
                    mem[mem[64] + 4] = _495
                    mem[mem[64] + 36] = arg3
                    mem[mem[64] + 68] = msg.sender
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _495, arg3, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _555 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_555] == mem[_555]
                else:
                    if mem[(4 * ceil32(return_data.size)) + 256] and 10^9 > -1 / mem[(4 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 17
                    if not mem[(4 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 18
                    require 10^9 * mem[(4 * ceil32(return_data.size)) + 256] / mem[(4 * ceil32(return_data.size)) + 256] == 10^9
                    if not 10^9 * Mask(112, 0, _335) / Mask(112, 0, _338):
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 10^9 * _363 / 10^9 * Mask(112, 0, _335) / Mask(112, 0, _338)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 10^9 * _363 / 10^9 * Mask(112, 0, _335) / Mask(112, 0, _338)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _403 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_403] == bool(mem[_403])
                    if 1 >= _153:
                        revert with 'NH{q', 50
                    _425 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _425
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _425
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_451] == bool(mem[_451])
                    if 1 >= _153:
                        revert with 'NH{q', 50
                    _465 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 68] = 10^9 * _363 / 10^9 * Mask(112, 0, _335) / Mask(112, 0, _338)
                    mem[mem[64] + 100] = _465
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 10^9 * _363 / 10^9 * Mask(112, 0, _335) / Mask(112, 0, _338), _465, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _491 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_491] == mem[_491]
                    require mem[_491 + 32] == mem[_491 + 32]
                    _511 = mem[_491 + 64]
                    require mem[_491 + 64] == mem[_491 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _511
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _511
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _539 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_539] == bool(mem[_539])
                    mem[mem[64] + 4] = _511
                    mem[mem[64] + 36] = arg3
                    mem[mem[64] + 68] = msg.sender
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _511, arg3, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _567 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_567] == mem[_567]
            else:
                if not Mask(112, 0, _335):
                    revert with 'NH{q', 18
                if Mask(112, 0, _338) / Mask(112, 0, _335) and 10^9 > -1 / Mask(112, 0, _338) / Mask(112, 0, _335):
                    revert with 'NH{q', 17
                if 1 >= _153:
                    revert with 'NH{q', 50
                _364 = mem[(4 * ceil32(return_data.size)) + 256]
                if not mem[(4 * ceil32(return_data.size)) + 256]:
                    if not 10^9 * Mask(112, 0, _338) / Mask(112, 0, _335):
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 0 / 10^9 * Mask(112, 0, _338) / Mask(112, 0, _335)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 0 / 10^9 * Mask(112, 0, _338) / Mask(112, 0, _335)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _376 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_376] == bool(mem[_376])
                    if 1 >= _153:
                        revert with 'NH{q', 50
                    _395 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _395
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _395
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _419 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_419] == bool(mem[_419])
                    if 1 >= _153:
                        revert with 'NH{q', 50
                    _443 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 68] = 0 / 10^9 * Mask(112, 0, _338) / Mask(112, 0, _335)
                    mem[mem[64] + 100] = _443
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 0 / 10^9 * Mask(112, 0, _338) / Mask(112, 0, _335), _443, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _476 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_476] == mem[_476]
                    require mem[_476 + 32] == mem[_476 + 32]
                    _496 = mem[_476 + 64]
                    require mem[_476 + 64] == mem[_476 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _496
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _496
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _520 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_520] == bool(mem[_520])
                    mem[mem[64] + 4] = _496
                    mem[mem[64] + 36] = arg3
                    mem[mem[64] + 68] = msg.sender
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _496, arg3, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _556 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_556] == mem[_556]
                else:
                    if mem[(4 * ceil32(return_data.size)) + 256] and 10^9 > -1 / mem[(4 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 17
                    if not mem[(4 * ceil32(return_data.size)) + 256]:
                        revert with 'NH{q', 18
                    require 10^9 * mem[(4 * ceil32(return_data.size)) + 256] / mem[(4 * ceil32(return_data.size)) + 256] == 10^9
                    if not 10^9 * Mask(112, 0, _338) / Mask(112, 0, _335):
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = 10^9 * _364 / 10^9 * Mask(112, 0, _338) / Mask(112, 0, _335)
                    require ext_code.size(sub_c37ad011Address)
                    call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, 10^9 * _364 / 10^9 * Mask(112, 0, _338) / Mask(112, 0, _335)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _404 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_404] == bool(mem[_404])
                    if 1 >= _153:
                        revert with 'NH{q', 50
                    _427 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 4] = routerAddress
                    mem[mem[64] + 36] = _427
                    require ext_code.size(sub_b328f1ecAddress)
                    call sub_b328f1ecAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args routerAddress, _427
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _452 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_452] == bool(mem[_452])
                    if 1 >= _153:
                        revert with 'NH{q', 50
                    _467 = mem[(4 * ceil32(return_data.size)) + 256]
                    mem[mem[64] + 68] = 10^9 * _364 / 10^9 * Mask(112, 0, _338) / Mask(112, 0, _335)
                    mem[mem[64] + 100] = _467
                    mem[mem[64] + 132] = 1
                    mem[mem[64] + 164] = 1
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = 0xf000000000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_c37ad011Address, sub_b328f1ecAddress, 10^9 * _364 / 10^9 * Mask(112, 0, _338) / Mask(112, 0, _335), _467, 1, 1, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _492 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_492] == mem[_492]
                    require mem[_492 + 32] == mem[_492 + 32]
                    _512 = mem[_492 + 64]
                    require mem[_492 + 64] == mem[_492 + 64]
                    mem[mem[64] + 4] = sub_408288ddAddress
                    mem[mem[64] + 36] = _512
                    require ext_code.size(pairAddress)
                    call pairAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_408288ddAddress, _512
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_540] == bool(mem[_540])
                    mem[mem[64] + 4] = _512
                    mem[mem[64] + 36] = arg3
                    mem[mem[64] + 68] = msg.sender
                    require ext_code.size(sub_408288ddAddress)
                    call sub_408288ddAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _512, arg3, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _568 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_568] == mem[_568]
}



}
