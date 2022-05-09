contract main {




// =====================  Runtime code  =====================


address stor0;
address routerAddress;

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
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_961e1c49(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == address(arg1):
        staticcall address(arg2).token1() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), routerAddress
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 96] = 2
            mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
            mem[(4 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 196] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
            mem[(6 * ceil32(return_data.size)) + 228] = 0
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
            mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
            call routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _107 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _111 = mem[_107]
            require mem[_107] <= test266151307()
            require _107 + mem[_107] + 31 < _107 + return_data.size
            _115 = mem[_107 + mem[_107]]
            if mem[_107 + mem[_107]] > test266151307():
                revert with 'NH{q', 65
            if _107 + ceil32(return_data.size) + floor32(mem[_107 + mem[_107]]) + 1 > test266151307() or floor32(mem[_107 + mem[_107]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _107 + ceil32(return_data.size) + floor32(mem[_107 + mem[_107]]) + 1
            mem[_107 + ceil32(return_data.size)] = _115
            require _111 + (32 * _115) + 32 <= return_data.size
            idx = _107 + _111 + 32
            s = _107 + ceil32(return_data.size) + 32
            while idx < _107 + _111 + (32 * _115) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = routerAddress
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), routerAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_303] == mem[_303]
            if mem[_303]:
                mem[mem[64] + 4] = this.address
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _323 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _327 = mem[_323]
                require mem[_323] == mem[_323]
                mem[mem[64] + 4] = this.address
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _351 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _359 = mem[_351]
                require mem[_351] == mem[_351]
                mem[mem[64] + 68] = _327
                mem[mem[64] + 100] = _359
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = address(arg3)
                mem[mem[64] + 228] = block.timestamp
                call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args address(arg1), address(ext_call.return_data[0]), _327, _359, 0, 0, address(arg3), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _403 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_403] == mem[_403]
                require mem[_403 + 32] == mem[_403 + 32]
                _415 = mem[_403 + 64]
                require mem[_403 + 64] == mem[_403 + 64]
                mem[mem[64] + 4] = this.address
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _435 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _443 = mem[_435]
                require mem[_435] == mem[_435]
                if mem[_435] <= 0:
                    mem[mem[64] + 4] = this.address
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _467 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _475 = mem[_467]
                    require mem[_467] == mem[_467]
                    if mem[_467] > 0:
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _475
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _475
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_535] == bool(mem[_535])
                else:
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _443
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _443
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _483 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_483] == bool(mem[_483])
                    mem[mem[64] + 4] = this.address
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _536 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _544 = mem[_536]
                    require mem[_536] == mem[_536]
                    if mem[_536] > 0:
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _544
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _544
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _611 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_611] == bool(mem[_611])
                return _415
            mem[mem[64] + 4] = routerAddress
            mem[mem[64] + 36] = -1
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_336] == bool(mem[_336])
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _375 = mem[_371]
            require mem[_371] == mem[_371]
            mem[mem[64] + 4] = this.address
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _387 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _391 = mem[_387]
            require mem[_387] == mem[_387]
            mem[mem[64] + 68] = _375
            mem[mem[64] + 100] = _391
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = address(arg3)
            mem[mem[64] + 228] = block.timestamp
            call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(ext_call.return_data[0]), _375, _391, 0, 0, address(arg3), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _427 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_427] == mem[_427]
            require mem[_427 + 32] == mem[_427 + 32]
            _459 = mem[_427 + 64]
            require mem[_427 + 64] == mem[_427 + 64]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _495 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _507 = mem[_495]
            require mem[_495] == mem[_495]
            if mem[_495] <= 0:
                mem[mem[64] + 4] = this.address
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _555 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _559 = mem[_555]
                require mem[_555] == mem[_555]
                if mem[_555] > 0:
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _559
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _559
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _631 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_631] == bool(mem[_631])
            else:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _507
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _507
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _567 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_567] == bool(mem[_567])
                mem[mem[64] + 4] = this.address
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _632 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _640 = mem[_632]
                require mem[_632] == mem[_632]
                if mem[_632] > 0:
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _640
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _640
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _679 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_679] == bool(mem[_679])
            return _459
        mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
        mem[(4 * ceil32(return_data.size)) + 132] = -1
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = address(arg1)
        mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 196] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
        mem[(7 * ceil32(return_data.size)) + 228] = 0
        mem[(7 * ceil32(return_data.size)) + 260] = 160
        mem[(7 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 292] = this.address
        mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _112 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
        _116 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193
        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
        require _112 + (32 * _116) + 32 <= return_data.size
        idx = (7 * ceil32(return_data.size)) + _112 + 224
        s = (8 * ceil32(return_data.size)) + 224
        while idx < (7 * ceil32(return_data.size)) + _112 + (32 * _116) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = routerAddress
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _304 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_304] == mem[_304]
        if mem[_304]:
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _328 = mem[_324]
            require mem[_324] == mem[_324]
            mem[mem[64] + 4] = this.address
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _352 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _360 = mem[_352]
            require mem[_352] == mem[_352]
            mem[mem[64] + 68] = _328
            mem[mem[64] + 100] = _360
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = address(arg3)
            mem[mem[64] + 228] = block.timestamp
            call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(ext_call.return_data[0]), _328, _360, 0, 0, address(arg3), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _404 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_404] == mem[_404]
            require mem[_404 + 32] == mem[_404 + 32]
            _416 = mem[_404 + 64]
            require mem[_404 + 64] == mem[_404 + 64]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _437 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _444 = mem[_437]
            require mem[_437] == mem[_437]
            if mem[_437] <= 0:
                mem[mem[64] + 4] = this.address
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _468 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _477 = mem[_468]
                require mem[_468] == mem[_468]
                if mem[_468] > 0:
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _477
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _477
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _537 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_537] == bool(mem[_537])
            else:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _444
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _444
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _484 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_484] == bool(mem[_484])
                mem[mem[64] + 4] = this.address
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _538 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _546 = mem[_538]
                require mem[_538] == mem[_538]
                if mem[_538] > 0:
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _546
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _546
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _613 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_613] == bool(mem[_613])
            return _416
        mem[mem[64] + 4] = routerAddress
        mem[mem[64] + 36] = -1
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _338 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_338] == bool(mem[_338])
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _372 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _376 = mem[_372]
        require mem[_372] == mem[_372]
        mem[mem[64] + 4] = this.address
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _388 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _392 = mem[_388]
        require mem[_388] == mem[_388]
        mem[mem[64] + 68] = _376
        mem[mem[64] + 100] = _392
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = address(arg3)
        mem[mem[64] + 228] = block.timestamp
        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(ext_call.return_data[0]), _376, _392, 0, 0, address(arg3), block.timestamp
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _428 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_428] == mem[_428]
        require mem[_428 + 32] == mem[_428 + 32]
        _460 = mem[_428 + 64]
        require mem[_428 + 64] == mem[_428 + 64]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _496 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _508 = mem[_496]
        require mem[_496] == mem[_496]
        if mem[_496] <= 0:
            mem[mem[64] + 4] = this.address
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _556 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _561 = mem[_556]
            require mem[_556] == mem[_556]
            if mem[_556] > 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _561
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _561
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _633 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_633] == bool(mem[_633])
        else:
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _508
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _508
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _568 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_568] == bool(mem[_568])
            mem[mem[64] + 4] = this.address
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _634 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _642 = mem[_634]
            require mem[_634] == mem[_634]
            if mem[_634] > 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _642
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _642
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _680 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_680] == bool(mem[_680])
        return _460
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    mem[(2 * ceil32(return_data.size)) + 132] = routerAddress
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
        mem[(4 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
        mem[(6 * ceil32(return_data.size)) + 228] = 0
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
        mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
        call routerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _113 = mem[_109]
        require mem[_109] <= test266151307()
        require _109 + mem[_109] + 31 < _109 + return_data.size
        _117 = mem[_109 + mem[_109]]
        if mem[_109 + mem[_109]] > test266151307():
            revert with 'NH{q', 65
        if _109 + ceil32(return_data.size) + floor32(mem[_109 + mem[_109]]) + 1 > test266151307() or floor32(mem[_109 + mem[_109]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _109 + ceil32(return_data.size) + floor32(mem[_109 + mem[_109]]) + 1
        mem[_109 + ceil32(return_data.size)] = _117
        require _113 + (32 * _117) + 32 <= return_data.size
        idx = _109 + _113 + 32
        s = _109 + ceil32(return_data.size) + 32
        while idx < _109 + _113 + (32 * _117) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = routerAddress
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _305 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_305] == mem[_305]
        if mem[_305]:
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _329 = mem[_325]
            require mem[_325] == mem[_325]
            mem[mem[64] + 4] = this.address
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _353 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _361 = mem[_353]
            require mem[_353] == mem[_353]
            mem[mem[64] + 68] = _329
            mem[mem[64] + 100] = _361
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = address(arg3)
            mem[mem[64] + 228] = block.timestamp
            call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args address(arg1), address(ext_call.return_data[0]), _329, _361, 0, 0, address(arg3), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _405 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_405] == mem[_405]
            require mem[_405 + 32] == mem[_405 + 32]
            _417 = mem[_405 + 64]
            require mem[_405 + 64] == mem[_405 + 64]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _439 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _445 = mem[_439]
            require mem[_439] == mem[_439]
            if mem[_439] <= 0:
                mem[mem[64] + 4] = this.address
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _469 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _479 = mem[_469]
                require mem[_469] == mem[_469]
                if mem[_469] > 0:
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _479
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _479
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _539 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_539] == bool(mem[_539])
            else:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _445
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _445
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _485 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_485] == bool(mem[_485])
                mem[mem[64] + 4] = this.address
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _540 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _548 = mem[_540]
                require mem[_540] == mem[_540]
                if mem[_540] > 0:
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _548
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _548
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _615 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_615] == bool(mem[_615])
            return _417
        mem[mem[64] + 4] = routerAddress
        mem[mem[64] + 36] = -1
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _340 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_340] == bool(mem[_340])
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _373 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _377 = mem[_373]
        require mem[_373] == mem[_373]
        mem[mem[64] + 4] = this.address
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _389 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _393 = mem[_389]
        require mem[_389] == mem[_389]
        mem[mem[64] + 68] = _377
        mem[mem[64] + 100] = _393
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = address(arg3)
        mem[mem[64] + 228] = block.timestamp
        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(ext_call.return_data[0]), _377, _393, 0, 0, address(arg3), block.timestamp
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _429 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_429] == mem[_429]
        require mem[_429 + 32] == mem[_429 + 32]
        _461 = mem[_429 + 64]
        require mem[_429 + 64] == mem[_429 + 64]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _497 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _509 = mem[_497]
        require mem[_497] == mem[_497]
        if mem[_497] <= 0:
            mem[mem[64] + 4] = this.address
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _557 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _563 = mem[_557]
            require mem[_557] == mem[_557]
            if mem[_557] > 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _563
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _563
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _635 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_635] == bool(mem[_635])
        else:
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _509
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _509
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _569 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_569] == bool(mem[_569])
            mem[mem[64] + 4] = this.address
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _636 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _644 = mem[_636]
            require mem[_636] == mem[_636]
            if mem[_636] > 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _644
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _644
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _681 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_681] == bool(mem[_681])
        return _461
    mem[(4 * ceil32(return_data.size)) + 100] = routerAddress
    mem[(4 * ceil32(return_data.size)) + 132] = -1
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 96] = 2
    mem[(6 * ceil32(return_data.size)) + 128] = address(arg1)
    mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 196] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
    mem[(7 * ceil32(return_data.size)) + 228] = 0
    mem[(7 * ceil32(return_data.size)) + 260] = 160
    mem[(7 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = (7 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(7 * ceil32(return_data.size)) + 292] = this.address
    mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _114 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
    _118 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193
    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
    require _114 + (32 * _118) + 32 <= return_data.size
    idx = (7 * ceil32(return_data.size)) + _114 + 224
    s = (8 * ceil32(return_data.size)) + 224
    while idx < (7 * ceil32(return_data.size)) + _114 + (32 * _118) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = routerAddress
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _306 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_306] == mem[_306]
    if mem[_306]:
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _330 = mem[_326]
        require mem[_326] == mem[_326]
        mem[mem[64] + 4] = this.address
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _354 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _362 = mem[_354]
        require mem[_354] == mem[_354]
        mem[mem[64] + 68] = _330
        mem[mem[64] + 100] = _362
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = address(arg3)
        mem[mem[64] + 228] = block.timestamp
        call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(ext_call.return_data[0]), _330, _362, 0, 0, address(arg3), block.timestamp
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _406 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_406] == mem[_406]
        require mem[_406 + 32] == mem[_406 + 32]
        _418 = mem[_406 + 64]
        require mem[_406 + 64] == mem[_406 + 64]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _441 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _446 = mem[_441]
        require mem[_441] == mem[_441]
        if mem[_441] <= 0:
            mem[mem[64] + 4] = this.address
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _470 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _481 = mem[_470]
            require mem[_470] == mem[_470]
            if mem[_470] > 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _481
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _481
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _541 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_541] == bool(mem[_541])
        else:
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _446
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _446
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _486 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_486] == bool(mem[_486])
            mem[mem[64] + 4] = this.address
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _542 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _550 = mem[_542]
            require mem[_542] == mem[_542]
            if mem[_542] > 0:
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = _550
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor0, _550
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _617 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_617] == bool(mem[_617])
        return _418
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = -1
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _342 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_342] == bool(mem[_342])
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _374 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _378 = mem[_374]
    require mem[_374] == mem[_374]
    mem[mem[64] + 4] = this.address
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _390 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _394 = mem[_390]
    require mem[_390] == mem[_390]
    mem[mem[64] + 68] = _378
    mem[mem[64] + 100] = _394
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = address(arg3)
    mem[mem[64] + 228] = block.timestamp
    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args address(arg1), address(ext_call.return_data[0]), _378, _394, 0, 0, address(arg3), block.timestamp
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _430 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_430] == mem[_430]
    require mem[_430 + 32] == mem[_430 + 32]
    _462 = mem[_430 + 64]
    require mem[_430 + 64] == mem[_430 + 64]
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _498 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _510 = mem[_498]
    require mem[_498] == mem[_498]
    if mem[_498] <= 0:
        mem[mem[64] + 4] = this.address
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _558 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _565 = mem[_558]
        require mem[_558] == mem[_558]
        if mem[_558] > 0:
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _565
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _565
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _637 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_637] == bool(mem[_637])
    else:
        mem[mem[64] + 4] = stor0
        mem[mem[64] + 36] = _510
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, _510
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _570 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_570] == bool(mem[_570])
        mem[mem[64] + 4] = this.address
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _638 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _646 = mem[_638]
        require mem[_638] == mem[_638]
        if mem[_638] > 0:
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _646
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _646
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _682 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_682] == bool(mem[_682])
    return _462
}



}
