contract main {




// =====================  Runtime code  =====================


address stor0;
address timeAddress;
address routerAddress;

function time() payable {
    return timeAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function withdrawEther(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    if ext_call.return_data[12 len 20] == timeAddress:
        staticcall arg1.token1() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = timeAddress
        mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(timeAddress)
        staticcall timeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
        mem[(4 * ceil32(return_data.size)) + 228] = 0
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
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _83 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _85 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
        require _83 + (32 * _85) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _83 + 224
        t = (6 * ceil32(return_data.size)) + 224
        while idx < _85:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = routerAddress
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_181] == mem[_181]
        if mem[_181]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(timeAddress)
            staticcall timeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _191 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _193 = mem[_191]
            require mem[_191] == mem[_191]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _207 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _209 = mem[_207]
            require mem[_207] == mem[_207]
            mem[mem[64] + 68] = _193
            mem[mem[64] + 100] = _209
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = arg2
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args timeAddress, address(ext_call.return_data[0]), _193, _209, 0, 0, address(arg2), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _231 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_231] == mem[_231]
            require mem[_231 + 32] == mem[_231 + 32]
            _237 = mem[_231 + 64]
            require mem[_231 + 64] == mem[_231 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(timeAddress)
            staticcall timeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _249 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _251 = mem[_249]
            require mem[_249] == mem[_249]
            if mem[_249] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _265 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _269 = mem[_265]
                require mem[_265] == mem[_265]
                if mem[_265] > 0:
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _269
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _269
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_297] == bool(mem[_297])
            else:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _251
                require ext_code.size(timeAddress)
                call timeAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _251
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _271 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_271] == bool(mem[_271])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _298 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _306 = mem[_298]
                require mem[_298] == mem[_298]
                if mem[_298] > 0:
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _306
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _306
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _337 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_337] == bool(mem[_337])
            return _237
        mem[mem[64] + 4] = routerAddress
        mem[mem[64] + 36] = -1
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_197] == bool(mem[_197])
        mem[mem[64] + 4] = this.address
        require ext_code.size(timeAddress)
        staticcall timeAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _213 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _216 = mem[_213]
        require mem[_213] == mem[_213]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _225 = mem[_223]
        require mem[_223] == mem[_223]
        mem[mem[64] + 68] = _216
        mem[mem[64] + 100] = _225
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = arg2
        mem[mem[64] + 228] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args timeAddress, address(ext_call.return_data[0]), _216, _225, 0, 0, address(arg2), block.timestamp
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_243] == mem[_243]
        require mem[_243 + 32] == mem[_243 + 32]
        _255 = mem[_243 + 64]
        require mem[_243 + 64] == mem[_243 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(timeAddress)
        staticcall timeAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _275 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _279 = mem[_275]
        require mem[_275] == mem[_275]
        if mem[_275] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _311 = mem[_303]
            require mem[_303] == mem[_303]
            if mem[_303] > 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _311
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _311
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _343 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_343] == bool(mem[_343])
        else:
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _279
            require ext_code.size(timeAddress)
            call timeAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _279
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _313 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_313] == bool(mem[_313])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _344 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _350 = mem[_344]
            require mem[_344] == mem[_344]
            if mem[_344] > 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _350
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _350
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _369 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_369] == bool(mem[_369])
        return _255
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = timeAddress
    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(timeAddress)
    staticcall timeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
    mem[(4 * ceil32(return_data.size)) + 228] = 0
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
    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _84 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _86 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
    require _84 + (32 * _86) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _84 + 224
    t = (6 * ceil32(return_data.size)) + 224
    while idx < _86:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = routerAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _182 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_182] == mem[_182]
    if mem[_182]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(timeAddress)
        staticcall timeAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _194 = mem[_192]
        require mem[_192] == mem[_192]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _208 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _210 = mem[_208]
        require mem[_208] == mem[_208]
        mem[mem[64] + 68] = _194
        mem[mem[64] + 100] = _210
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = arg2
        mem[mem[64] + 228] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args timeAddress, address(ext_call.return_data[0]), _194, _210, 0, 0, address(arg2), block.timestamp
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _232 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_232] == mem[_232]
        require mem[_232 + 32] == mem[_232 + 32]
        _238 = mem[_232 + 64]
        require mem[_232 + 64] == mem[_232 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(timeAddress)
        staticcall timeAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _250 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _253 = mem[_250]
        require mem[_250] == mem[_250]
        if mem[_250] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _266 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _270 = mem[_266]
            require mem[_266] == mem[_266]
            if mem[_266] > 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _270
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _270
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _300 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_300] == bool(mem[_300])
        else:
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _253
            require ext_code.size(timeAddress)
            call timeAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _253
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_273] == bool(mem[_273])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _301 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _308 = mem[_301]
            require mem[_301] == mem[_301]
            if mem[_301] > 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _308
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _308
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _340 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_340] == bool(mem[_340])
        return _238
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = -1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _198 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_198] == bool(mem[_198])
    mem[mem[64] + 4] = this.address
    require ext_code.size(timeAddress)
    staticcall timeAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _214 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _218 = mem[_214]
    require mem[_214] == mem[_214]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _224 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _226 = mem[_224]
    require mem[_224] == mem[_224]
    mem[mem[64] + 68] = _218
    mem[mem[64] + 100] = _226
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = arg2
    mem[mem[64] + 228] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args timeAddress, address(ext_call.return_data[0]), _218, _226, 0, 0, address(arg2), block.timestamp
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _244 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_244] == mem[_244]
    require mem[_244 + 32] == mem[_244 + 32]
    _256 = mem[_244 + 64]
    require mem[_244 + 64] == mem[_244 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(timeAddress)
    staticcall timeAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _276 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _280 = mem[_276]
    require mem[_276] == mem[_276]
    if mem[_276] <= 0:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _304 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _312 = mem[_304]
        require mem[_304] == mem[_304]
        if mem[_304] > 0:
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _312
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _312
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _345 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_345] == bool(mem[_345])
    else:
        mem[mem[64] + 4] = stor0
        mem[mem[64] + 36] = _280
        require ext_code.size(timeAddress)
        call timeAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, _280
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _314 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_314] == bool(mem[_314])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _346 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _352 = mem[_346]
        require mem[_346] == mem[_346]
        if mem[_346] > 0:
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _352
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _352
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _370 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_370] == bool(mem[_370])
    return _256
}



}
