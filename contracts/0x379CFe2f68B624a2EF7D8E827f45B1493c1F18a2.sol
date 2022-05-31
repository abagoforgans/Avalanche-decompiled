contract main {




// =====================  Runtime code  =====================


address adminAddress;
address traderJoeRouterAddress;
address sub_70d4c397Address;
address stor3;

function sub_70d4c397(?) {
    return sub_70d4c397Address
}

function TraderJoeRouter() {
    return traderJoeRouterAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_5249dfac(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if adminAddress != msg.sender:
        revert with 0, 'Only Admin has Access'
    mem[96] = 2
    mem[192] = 2
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[292] = msg.sender
    mem[324] = this.address
    mem[356] = arg3
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg4:
        mem[ceil32(return_data.size) + 292] = sub_70d4c397Address
        mem[ceil32(return_data.size) + 324] = arg3
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_70d4c397Address, arg3
        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[128] = address(arg1)
        mem[160] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = arg3
        mem[(2 * ceil32(return_data.size)) + 324] = 64
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall sub_70d4c397Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _73 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
        _75 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
        mem[(4 * ceil32(return_data.size)) + 288] = _75
        require _73 + (32 * _75) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _73 + 320
        s = (4 * ceil32(return_data.size)) + 320
        while idx < (2 * ceil32(return_data.size)) + _73 + (32 * _75) + 320:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _75:
            revert with 'NH{q', 50
        _169 = mem[(4 * ceil32(return_data.size)) + 352]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = _169
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        call sub_70d4c397Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _169, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _265 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _267 = mem[_265]
        require mem[_265] <= test266151307()
        require _265 + mem[_265] + 31 < _265 + return_data.size
        _269 = mem[_265 + mem[_265]]
        if mem[_265 + mem[_265]] > test266151307():
            revert with 'NH{q', 65
        if _265 + ceil32(return_data.size) + floor32(mem[_265 + mem[_265]]) + 1 > test266151307() or floor32(mem[_265 + mem[_265]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _265 + ceil32(return_data.size) + floor32(mem[_265 + mem[_265]]) + 1
        mem[_265 + ceil32(return_data.size)] = _269
        require _267 + (32 * _269) + 32 <= return_data.size
        idx = _265 + _267 + 32
        s = _265 + ceil32(return_data.size) + 32
        while idx < _265 + _267 + (32 * _269) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _269:
            revert with 'NH{q', 50
        _353 = mem[_265 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = traderJoeRouterAddress
        mem[mem[64] + 36] = _353
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args traderJoeRouterAddress, _353
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _359 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_359] == bool(mem[_359])
        if 0 >= mem[192]:
            revert with 'NH{q', 50
        mem[224] = address(arg2)
        if 1 >= mem[192]:
            revert with 'NH{q', 50
        mem[256] = address(arg1)
        if 1 >= _269:
            revert with 'NH{q', 50
        _369 = mem[_265 + ceil32(return_data.size) + 64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _369
        mem[mem[64] + 36] = 64
        _373 = mem[192]
        mem[mem[64] + 68] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 100
        while idx < _373:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _369, 64, mem[mem[64] + 68 len (32 * _373) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _435 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _437 = mem[_435]
        require mem[_435] <= test266151307()
        require _435 + mem[_435] + 31 < _435 + return_data.size
        _439 = mem[_435 + mem[_435]]
        if mem[_435 + mem[_435]] > test266151307():
            revert with 'NH{q', 65
        if _435 + ceil32(return_data.size) + floor32(mem[_435 + mem[_435]]) + 1 > test266151307() or floor32(mem[_435 + mem[_435]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _435 + ceil32(return_data.size) + floor32(mem[_435 + mem[_435]]) + 1
        mem[_435 + ceil32(return_data.size)] = _439
        require _437 + (32 * _439) + 32 <= return_data.size
        idx = _435 + _437 + 32
        s = _435 + ceil32(return_data.size) + 32
        while idx < _435 + _437 + (32 * _439) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= mem[_265 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        _491 = mem[_265 + ceil32(return_data.size) + 64]
        if 1 >= _439:
            revert with 'NH{q', 50
        _495 = mem[_435 + ceil32(return_data.size) + 64]
        _496 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _491
        mem[mem[64] + 36] = _495
        mem[mem[64] + 68] = 160
        _499 = mem[192]
        mem[mem[64] + 164] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 196
        while idx < _499:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_496 + 100] = this.address
        mem[_496 + 132] = block.timestamp
        call traderJoeRouterAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _496 + (32 * _499) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _535 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _537 = mem[_535]
        require mem[_535] <= test266151307()
        require _535 + mem[_535] + 31 < _535 + return_data.size
        _539 = mem[_535 + mem[_535]]
        if mem[_535 + mem[_535]] > test266151307():
            revert with 'NH{q', 65
        if _535 + ceil32(return_data.size) + floor32(mem[_535 + mem[_535]]) + 1 > test266151307() or floor32(mem[_535 + mem[_535]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _535 + ceil32(return_data.size) + floor32(mem[_535 + mem[_535]]) + 1
        mem[_535 + ceil32(return_data.size)] = _539
        require _537 + (32 * _539) + 32 <= return_data.size
        idx = _535 + _537 + 32
        s = _535 + ceil32(return_data.size) + 32
        while idx < _535 + _537 + (32 * _539) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _567 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _569 = mem[_567]
        require mem[_567] == mem[_567]
        mem[mem[64] + 4] = stor3
        mem[mem[64] + 36] = _569
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args stor3, _569
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _575 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_575] == bool(mem[_575])
    else:
        mem[ceil32(return_data.size) + 292] = traderJoeRouterAddress
        mem[ceil32(return_data.size) + 324] = arg3
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args traderJoeRouterAddress, arg3
        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[128] = address(arg1)
        mem[160] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = arg3
        mem[(2 * ceil32(return_data.size)) + 324] = 64
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _74 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
        _76 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
        mem[(4 * ceil32(return_data.size)) + 288] = _76
        require _74 + (32 * _76) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _74 + 320
        s = (4 * ceil32(return_data.size)) + 320
        while idx < (2 * ceil32(return_data.size)) + _74 + (32 * _76) + 320:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _76:
            revert with 'NH{q', 50
        _171 = mem[(4 * ceil32(return_data.size)) + 352]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = _171
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        call traderJoeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _171, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _266 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _268 = mem[_266]
        require mem[_266] <= test266151307()
        require _266 + mem[_266] + 31 < _266 + return_data.size
        _270 = mem[_266 + mem[_266]]
        if mem[_266 + mem[_266]] > test266151307():
            revert with 'NH{q', 65
        if _266 + ceil32(return_data.size) + floor32(mem[_266 + mem[_266]]) + 1 > test266151307() or floor32(mem[_266 + mem[_266]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _266 + ceil32(return_data.size) + floor32(mem[_266 + mem[_266]]) + 1
        mem[_266 + ceil32(return_data.size)] = _270
        require _268 + (32 * _270) + 32 <= return_data.size
        idx = _266 + _268 + 32
        s = _266 + ceil32(return_data.size) + 32
        while idx < _266 + _268 + (32 * _270) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _270:
            revert with 'NH{q', 50
        _355 = mem[_266 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = sub_70d4c397Address
        mem[mem[64] + 36] = _355
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_70d4c397Address, _355
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_360] == bool(mem[_360])
        if 0 >= mem[192]:
            revert with 'NH{q', 50
        mem[224] = address(arg2)
        if 1 >= mem[192]:
            revert with 'NH{q', 50
        mem[256] = address(arg1)
        if 1 >= _270:
            revert with 'NH{q', 50
        _371 = mem[_266 + ceil32(return_data.size) + 64]
        _372 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _371
        mem[mem[64] + 36] = 64
        _374 = mem[192]
        mem[mem[64] + 68] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 100
        while idx < _374:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall sub_70d4c397Address.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _372 + (32 * _374) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _436 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _438 = mem[_436]
        require mem[_436] <= test266151307()
        require _436 + mem[_436] + 31 < _436 + return_data.size
        _440 = mem[_436 + mem[_436]]
        if mem[_436 + mem[_436]] > test266151307():
            revert with 'NH{q', 65
        if _436 + ceil32(return_data.size) + floor32(mem[_436 + mem[_436]]) + 1 > test266151307() or floor32(mem[_436 + mem[_436]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _436 + ceil32(return_data.size) + floor32(mem[_436 + mem[_436]]) + 1
        mem[_436 + ceil32(return_data.size)] = _440
        require _438 + (32 * _440) + 32 <= return_data.size
        idx = _436 + _438 + 32
        s = _436 + ceil32(return_data.size) + 32
        while idx < _436 + _438 + (32 * _440) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= mem[_266 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        _493 = mem[_266 + ceil32(return_data.size) + 64]
        if 1 >= _440:
            revert with 'NH{q', 50
        _497 = mem[_436 + ceil32(return_data.size) + 64]
        _498 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _493
        mem[mem[64] + 36] = _497
        mem[mem[64] + 68] = 160
        _500 = mem[192]
        mem[mem[64] + 164] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 196
        while idx < _500:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_498 + 100] = this.address
        mem[_498 + 132] = block.timestamp
        call sub_70d4c397Address.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _498 + (32 * _500) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _536 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _538 = mem[_536]
        require mem[_536] <= test266151307()
        require _536 + mem[_536] + 31 < _536 + return_data.size
        _540 = mem[_536 + mem[_536]]
        if mem[_536 + mem[_536]] > test266151307():
            revert with 'NH{q', 65
        if _536 + ceil32(return_data.size) + floor32(mem[_536 + mem[_536]]) + 1 > test266151307() or floor32(mem[_536 + mem[_536]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _536 + ceil32(return_data.size) + floor32(mem[_536 + mem[_536]]) + 1
        mem[_536 + ceil32(return_data.size)] = _540
        require _538 + (32 * _540) + 32 <= return_data.size
        idx = _536 + _538 + 32
        s = _536 + ceil32(return_data.size) + 32
        while idx < _536 + _538 + (32 * _540) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _568 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _570 = mem[_568]
        require mem[_568] == mem[_568]
        mem[mem[64] + 4] = stor3
        mem[mem[64] + 36] = _570
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args stor3, _570
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _576 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_576] == bool(mem[_576])
}



}
