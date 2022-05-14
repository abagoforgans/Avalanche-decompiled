contract main {




// =====================  Runtime code  =====================


address traderJoeRouterAddress;
address sub_70d4c397Address;
address stor2;

function sub_70d4c397(?) {
    return sub_70d4c397Address
}

function TraderJoeRouter() {
    return traderJoeRouterAddress
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
        _71 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
        _73 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
        mem[(4 * ceil32(return_data.size)) + 288] = _73
        require _71 + (32 * _73) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _71 + 320
        s = (4 * ceil32(return_data.size)) + 320
        while idx < (2 * ceil32(return_data.size)) + _71 + (32 * _73) + 320:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _73:
            revert with 'NH{q', 50
        _167 = mem[(4 * ceil32(return_data.size)) + 352]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = _167
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
            args arg3, _167, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _265 = mem[_263]
        require mem[_263] <= test266151307()
        require _263 + mem[_263] + 31 < _263 + return_data.size
        _267 = mem[_263 + mem[_263]]
        if mem[_263 + mem[_263]] > test266151307():
            revert with 'NH{q', 65
        if _263 + ceil32(return_data.size) + floor32(mem[_263 + mem[_263]]) + 1 > test266151307() or floor32(mem[_263 + mem[_263]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _263 + ceil32(return_data.size) + floor32(mem[_263 + mem[_263]]) + 1
        mem[_263 + ceil32(return_data.size)] = _267
        require _265 + (32 * _267) + 32 <= return_data.size
        idx = _263 + _265 + 32
        s = _263 + ceil32(return_data.size) + 32
        while idx < _263 + _265 + (32 * _267) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _267:
            revert with 'NH{q', 50
        _351 = mem[_263 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = traderJoeRouterAddress
        mem[mem[64] + 36] = _351
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args traderJoeRouterAddress, _351
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _357 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_357] == bool(mem[_357])
        if 0 >= mem[192]:
            revert with 'NH{q', 50
        mem[224] = address(arg2)
        if 1 >= mem[192]:
            revert with 'NH{q', 50
        mem[256] = address(arg1)
        if 1 >= _267:
            revert with 'NH{q', 50
        _367 = mem[_263 + ceil32(return_data.size) + 64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _367
        mem[mem[64] + 36] = 64
        _371 = mem[192]
        mem[mem[64] + 68] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 100
        while idx < _371:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _367, 64, mem[mem[64] + 68 len (32 * _371) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _433 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _435 = mem[_433]
        require mem[_433] <= test266151307()
        require _433 + mem[_433] + 31 < _433 + return_data.size
        _437 = mem[_433 + mem[_433]]
        if mem[_433 + mem[_433]] > test266151307():
            revert with 'NH{q', 65
        if _433 + ceil32(return_data.size) + floor32(mem[_433 + mem[_433]]) + 1 > test266151307() or floor32(mem[_433 + mem[_433]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _433 + ceil32(return_data.size) + floor32(mem[_433 + mem[_433]]) + 1
        mem[_433 + ceil32(return_data.size)] = _437
        require _435 + (32 * _437) + 32 <= return_data.size
        idx = _433 + _435 + 32
        s = _433 + ceil32(return_data.size) + 32
        while idx < _433 + _435 + (32 * _437) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= mem[_263 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        _489 = mem[_263 + ceil32(return_data.size) + 64]
        if 1 >= _437:
            revert with 'NH{q', 50
        _493 = mem[_433 + ceil32(return_data.size) + 64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _489
        mem[mem[64] + 36] = _493
        mem[mem[64] + 68] = 160
        _497 = mem[192]
        mem[mem[64] + 164] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 196
        while idx < mem[192]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        call traderJoeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _489, _493, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _497) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _533 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _535 = mem[_533]
        require mem[_533] <= test266151307()
        require _533 + mem[_533] + 31 < _533 + return_data.size
        _537 = mem[_533 + mem[_533]]
        if mem[_533 + mem[_533]] > test266151307():
            revert with 'NH{q', 65
        if _533 + ceil32(return_data.size) + floor32(mem[_533 + mem[_533]]) + 1 > test266151307() or floor32(mem[_533 + mem[_533]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _533 + ceil32(return_data.size) + floor32(mem[_533 + mem[_533]]) + 1
        mem[_533 + ceil32(return_data.size)] = _537
        require _535 + (32 * _537) + 32 <= return_data.size
        idx = _533 + _535 + 32
        s = _533 + ceil32(return_data.size) + 32
        while idx < _533 + _535 + (32 * _537) + 32:
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
        _565 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _567 = mem[_565]
        require mem[_565] == mem[_565]
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = _567
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args stor2, _567
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _573 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_573] == bool(mem[_573])
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
        _72 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
        _74 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
        mem[(4 * ceil32(return_data.size)) + 288] = _74
        require _72 + (32 * _74) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _72 + 320
        s = (4 * ceil32(return_data.size)) + 320
        while idx < (2 * ceil32(return_data.size)) + _72 + (32 * _74) + 320:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _74:
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
        call traderJoeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, _169, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _264 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _266 = mem[_264]
        require mem[_264] <= test266151307()
        require _264 + mem[_264] + 31 < _264 + return_data.size
        _268 = mem[_264 + mem[_264]]
        if mem[_264 + mem[_264]] > test266151307():
            revert with 'NH{q', 65
        if _264 + ceil32(return_data.size) + floor32(mem[_264 + mem[_264]]) + 1 > test266151307() or floor32(mem[_264 + mem[_264]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _264 + ceil32(return_data.size) + floor32(mem[_264 + mem[_264]]) + 1
        mem[_264 + ceil32(return_data.size)] = _268
        require _266 + (32 * _268) + 32 <= return_data.size
        idx = _264 + _266 + 32
        s = _264 + ceil32(return_data.size) + 32
        while idx < _264 + _266 + (32 * _268) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _268:
            revert with 'NH{q', 50
        _353 = mem[_264 + ceil32(return_data.size) + 64]
        mem[mem[64] + 4] = sub_70d4c397Address
        mem[mem[64] + 36] = _353
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_70d4c397Address, _353
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _358 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_358] == bool(mem[_358])
        if 0 >= mem[192]:
            revert with 'NH{q', 50
        mem[224] = address(arg2)
        if 1 >= mem[192]:
            revert with 'NH{q', 50
        mem[256] = address(arg1)
        if 1 >= _268:
            revert with 'NH{q', 50
        _369 = mem[_264 + ceil32(return_data.size) + 64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _369
        mem[mem[64] + 36] = 64
        _372 = mem[192]
        mem[mem[64] + 68] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 100
        while idx < _372:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall sub_70d4c397Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _369, 64, mem[mem[64] + 68 len (32 * _372) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _434 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _436 = mem[_434]
        require mem[_434] <= test266151307()
        require _434 + mem[_434] + 31 < _434 + return_data.size
        _438 = mem[_434 + mem[_434]]
        if mem[_434 + mem[_434]] > test266151307():
            revert with 'NH{q', 65
        if _434 + ceil32(return_data.size) + floor32(mem[_434 + mem[_434]]) + 1 > test266151307() or floor32(mem[_434 + mem[_434]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _434 + ceil32(return_data.size) + floor32(mem[_434 + mem[_434]]) + 1
        mem[_434 + ceil32(return_data.size)] = _438
        require _436 + (32 * _438) + 32 <= return_data.size
        idx = _434 + _436 + 32
        s = _434 + ceil32(return_data.size) + 32
        while idx < _434 + _436 + (32 * _438) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= mem[_264 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        _491 = mem[_264 + ceil32(return_data.size) + 64]
        if 1 >= _438:
            revert with 'NH{q', 50
        _495 = mem[_434 + ceil32(return_data.size) + 64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _491
        mem[mem[64] + 36] = _495
        mem[mem[64] + 68] = 160
        _498 = mem[192]
        mem[mem[64] + 164] = mem[192]
        idx = 0
        s = 224
        t = mem[64] + 196
        while idx < mem[192]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        call sub_70d4c397Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _491, _495, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _498) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _534 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _536 = mem[_534]
        require mem[_534] <= test266151307()
        require _534 + mem[_534] + 31 < _534 + return_data.size
        _538 = mem[_534 + mem[_534]]
        if mem[_534 + mem[_534]] > test266151307():
            revert with 'NH{q', 65
        if _534 + ceil32(return_data.size) + floor32(mem[_534 + mem[_534]]) + 1 > test266151307() or floor32(mem[_534 + mem[_534]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _534 + ceil32(return_data.size) + floor32(mem[_534 + mem[_534]]) + 1
        mem[_534 + ceil32(return_data.size)] = _538
        require _536 + (32 * _538) + 32 <= return_data.size
        idx = _534 + _536 + 32
        s = _534 + ceil32(return_data.size) + 32
        while idx < _534 + _536 + (32 * _538) + 32:
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
        _566 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _568 = mem[_566]
        require mem[_566] == mem[_566]
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = _568
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args stor2, _568
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _574 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_574] == bool(mem[_574])
}



}
