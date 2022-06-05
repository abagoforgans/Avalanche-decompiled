contract main {




// =====================  Runtime code  =====================


address owner;
address joeRouterAddress;
address sub_5460ebd5Address;

function sub_5460ebd5(?) {
    return sub_5460ebd5Address
}

function joeRouter() {
    return joeRouterAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_b67b0b9f(?) {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    require ext_code.size(address(arg7))
    call address(arg7).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg8), arg2, 128, 192, address(arg1), address(arg3), address(arg4), address(arg5), address(arg6), address(arg8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128] = arg3
    mem[160] = arg4
    emit 0x24d0dbdc: address(arg2), arg3, arg4
    mem[100] = msg.sender
    require ext_code.size(sub_5460ebd5Address)
    staticcall sub_5460ebd5Address.isMarketListed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'untrusted message sender'
    require arg5.length >= 192
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    require cd[(arg5 + 196)] == address(cd[(arg5 + 196)])
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(cd[(arg5 + 196)]))
    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Contract has no balance of tokenFrom'
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(cd[(arg5 + 196)]))
    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = joeRouterAddress
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(cd[(arg5 + 196)]))
    call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args joeRouterAddress, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(cd[(arg5 + 196)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = address(cd[(arg5 + 196)])
        mem[(6 * ceil32(return_data.size)) + 160] = address(cd[(arg5 + 100)])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 228] = 1
        mem[(6 * ceil32(return_data.size)) + 260] = 160
        mem[(6 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 292] = this.address
        mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(joeRouterAddress)
        call joeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _133 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
        _136 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 > test266151307() or (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
        mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require _133 + (32 * _136) + 32 <= return_data.size
        idx = 0
        s = (6 * ceil32(return_data.size)) + _133 + 224
        t = (7 * ceil32(return_data.size)) + 224
        while idx < _136:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 100)]))
        staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _241 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_241] == mem[_241]
        if mem[_241] <= 0:
            revert with 0, 'Didn't receive token'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 100)]))
        staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _262 = mem[_259]
        require mem[_259] == mem[_259]
        mem[mem[64] + 32] = address(cd[(arg5 + 100)])
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = _262
        emit Swapped(address(cd[(arg5 + 196)]), address(cd[(arg5 + 100)]), ext_call.return_data[0], _262);
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 100)]))
        staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _277 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _280 = mem[_277]
        require mem[_277] == mem[_277]
        mem[mem[64] + 4] = address(cd[(arg5 + 68)])
        mem[mem[64] + 36] = _280
        require ext_code.size(address(cd[(arg5 + 100)]))
        call address(cd[(arg5 + 100)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 68)]), _280
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _289 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_289] == bool(mem[_289])
        mem[mem[64] + 4] = address(cd[(arg5 + 36)])
        mem[mem[64] + 36] = _280
        mem[mem[64] + 68] = address(cd[(arg5 + 132)])
        require ext_code.size(address(cd[(arg5 + 68)]))
        call address(cd[(arg5 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 36)]), _280, address(cd[(arg5 + 132)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_301] == mem[_301]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 100)]))
        staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _313 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _316 = mem[_313]
        require mem[_313] == mem[_313]
        mem[mem[64] + 32] = address(cd[(arg5 + 68)])
        mem[mem[64] + 64] = _316
        emit Liquidated(address(cd[(arg5 + 36)]), address(cd[(arg5 + 68)]), _316);
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 132)]))
        staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _331 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _334 = mem[_331]
        require mem[_331] == mem[_331]
        mem[mem[64] + 4] = mem[_331]
        require ext_code.size(address(cd[(arg5 + 132)]))
        call address(cd[(arg5 + 132)]).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args _334
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _343 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_343] == mem[_343]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _355 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_355] == mem[_355]
        if mem[_355] <= 0:
            revert with 0, 'Contract has no balance of tokenFrom'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _373 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _376 = mem[_373]
        require mem[_373] == mem[_373]
        mem[mem[64] + 4] = joeRouterAddress
        mem[mem[64] + 36] = _376
        require ext_code.size(address(cd[(arg5 + 164)]))
        call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args joeRouterAddress, _376
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_385] == bool(mem[_385])
        if address(cd[(arg5 + 164)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            _391 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_391]:
                revert with 'NH{q', 50
            mem[_391 + 32] = address(cd[(arg5 + 164)])
            if 1 >= mem[_391]:
                revert with 'NH{q', 50
            mem[_391 + 64] = address(cd[(arg5 + 196)])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[_391 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_391 + 100] = _376
            mem[_391 + 132] = 1
            mem[_391 + 164] = 160
            mem[_391 + 260] = mem[_391]
            idx = 0
            s = _391 + 32
            t = _391 + 292
            while idx < mem[_391]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_391 + 196] = this.address
            mem[_391 + 228] = block.timestamp + 60
            require ext_code.size(joeRouterAddress)
            call joeRouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _391 + (32 * mem[_391]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _619 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _628 = mem[_619]
            require mem[_619] <= test266151307()
            require _619 + mem[_619] + 31 < _619 + return_data.size
            _637 = mem[_619 + mem[_619]]
            if mem[_619 + mem[_619]] > test266151307():
                revert with 'NH{q', 65
            if _619 + ceil32(return_data.size) + (32 * mem[_619 + mem[_619]]) + 32 > test266151307() or (32 * mem[_619 + mem[_619]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _619 + ceil32(return_data.size) + (32 * mem[_619 + mem[_619]]) + 32
            mem[_619 + ceil32(return_data.size)] = _637
            require _628 + (32 * _637) + 32 <= return_data.size
            idx = 0
            s = _619 + _628 + 32
            t = _619 + ceil32(return_data.size) + 32
            while idx < _637:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 196)]))
            staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _925 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_925] == mem[_925]
            if mem[_925] <= 0:
                revert with 0, 'Didn't receive token'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 196)]))
            staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _979 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _988 = mem[_979]
            require mem[_979] == mem[_979]
            mem[mem[64] + 64] = _376
            mem[mem[64] + 96] = _988
            emit Swapped(address(cd[(arg5 + 164)]), address(cd[(arg5 + 196)]), _376, _988);
            if arg3 > -arg4 - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg3 + arg4
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg3 + arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1033 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1033] == bool(mem[_1033])
            if arg3 > -arg4 - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 196)]))
            staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1069 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1078 = mem[_1069]
            require mem[_1069] == mem[_1069]
            if mem[_1069] < arg3 + arg4:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _1078 - arg3 - arg4
            require ext_code.size(address(cd[(arg5 + 196)]))
            call address(cd[(arg5 + 196)]).0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _1078 - arg3 - arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1105] == bool(mem[_1105])
        else:
            if address(cd[(arg5 + 196)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                _394 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_394]:
                    revert with 'NH{q', 50
                mem[_394 + 32] = address(cd[(arg5 + 164)])
                if 1 >= mem[_394]:
                    revert with 'NH{q', 50
                mem[_394 + 64] = address(cd[(arg5 + 196)])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[_394 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_394 + 100] = _376
                mem[_394 + 132] = 1
                mem[_394 + 164] = 160
                mem[_394 + 260] = mem[_394]
                idx = 0
                s = _394 + 32
                t = _394 + 292
                while idx < mem[_394]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_394 + 196] = this.address
                mem[_394 + 228] = block.timestamp + 60
                require ext_code.size(joeRouterAddress)
                call joeRouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _394 + (32 * mem[_394]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _620 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _629 = mem[_620]
                require mem[_620] <= test266151307()
                require _620 + mem[_620] + 31 < _620 + return_data.size
                _638 = mem[_620 + mem[_620]]
                if mem[_620 + mem[_620]] > test266151307():
                    revert with 'NH{q', 65
                if _620 + ceil32(return_data.size) + (32 * mem[_620 + mem[_620]]) + 32 > test266151307() or (32 * mem[_620 + mem[_620]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _620 + ceil32(return_data.size) + (32 * mem[_620 + mem[_620]]) + 32
                mem[_620 + ceil32(return_data.size)] = _638
                require _629 + (32 * _638) + 32 <= return_data.size
                idx = 0
                s = _620 + _629 + 32
                t = _620 + ceil32(return_data.size) + 32
                while idx < _638:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 196)]))
                staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _926 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_926] == mem[_926]
                if mem[_926] <= 0:
                    revert with 0, 'Didn't receive token'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 196)]))
                staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _980 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _989 = mem[_980]
                require mem[_980] == mem[_980]
                mem[mem[64] + 64] = _376
                mem[mem[64] + 96] = _989
                emit Swapped(address(cd[(arg5 + 164)]), address(cd[(arg5 + 196)]), _376, _989);
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg3 + arg4
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1034 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1034] == bool(mem[_1034])
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 196)]))
                staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1070 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1079 = mem[_1070]
                require mem[_1070] == mem[_1070]
                if mem[_1070] < arg3 + arg4:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _1079 - arg3 - arg4
                require ext_code.size(address(cd[(arg5 + 196)]))
                call address(cd[(arg5 + 196)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, _1079 - arg3 - arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1106 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1106] == bool(mem[_1106])
            else:
                _395 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_395]:
                    revert with 'NH{q', 50
                mem[_395 + 32] = address(cd[(arg5 + 164)])
                if 1 >= mem[_395]:
                    revert with 'NH{q', 50
                mem[_395 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if 2 >= mem[_395]:
                    revert with 'NH{q', 50
                mem[_395 + 96] = address(cd[(arg5 + 196)])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[_395 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_395 + 132] = _376
                mem[_395 + 164] = 1
                mem[_395 + 196] = 160
                mem[_395 + 292] = mem[_395]
                idx = 0
                s = _395 + 32
                t = _395 + 324
                while idx < mem[_395]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_395 + 228] = this.address
                mem[_395 + 260] = block.timestamp + 60
                require ext_code.size(joeRouterAddress)
                call joeRouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _395 + (32 * mem[_395]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _621 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _630 = mem[_621]
                require mem[_621] <= test266151307()
                require _621 + mem[_621] + 31 < _621 + return_data.size
                _639 = mem[_621 + mem[_621]]
                if mem[_621 + mem[_621]] > test266151307():
                    revert with 'NH{q', 65
                if _621 + ceil32(return_data.size) + (32 * mem[_621 + mem[_621]]) + 32 > test266151307() or (32 * mem[_621 + mem[_621]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _621 + ceil32(return_data.size) + (32 * mem[_621 + mem[_621]]) + 32
                mem[_621 + ceil32(return_data.size)] = _639
                require _630 + (32 * _639) + 32 <= return_data.size
                idx = 0
                s = _621 + _630 + 32
                t = _621 + ceil32(return_data.size) + 32
                while idx < _639:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 196)]))
                staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _927 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_927] == mem[_927]
                if mem[_927] <= 0:
                    revert with 0, 'Didn't receive token'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 196)]))
                staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _981 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _990 = mem[_981]
                require mem[_981] == mem[_981]
                mem[mem[64] + 64] = _376
                mem[mem[64] + 96] = _990
                emit Swapped(address(cd[(arg5 + 164)]), address(cd[(arg5 + 196)]), _376, _990);
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg3 + arg4
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1035 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1035] == bool(mem[_1035])
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 196)]))
                staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1071 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1080 = mem[_1071]
                require mem[_1071] == mem[_1071]
                if mem[_1071] < arg3 + arg4:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _1080 - arg3 - arg4
                require ext_code.size(address(cd[(arg5 + 196)]))
                call address(cd[(arg5 + 196)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, _1080 - arg3 - arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1107 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1107] == bool(mem[_1107])
    else:
        if address(cd[(arg5 + 100)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[(6 * ceil32(return_data.size)) + 96] = 2
            mem[(6 * ceil32(return_data.size)) + 128] = address(cd[(arg5 + 196)])
            mem[(6 * ceil32(return_data.size)) + 160] = address(cd[(arg5 + 100)])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 228] = 1
            mem[(6 * ceil32(return_data.size)) + 260] = 160
            mem[(6 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 128
            t = (6 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 292] = this.address
            mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(joeRouterAddress)
            call joeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _134 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
            _137 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 'NH{q', 65
            if (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 > test266151307() or (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
            mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            require _134 + (32 * _137) + 32 <= return_data.size
            idx = 0
            s = (6 * ceil32(return_data.size)) + _134 + 224
            t = (7 * ceil32(return_data.size)) + 224
            while idx < _137:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_242] == mem[_242]
            if mem[_242] <= 0:
                revert with 0, 'Didn't receive token'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _263 = mem[_260]
            require mem[_260] == mem[_260]
            mem[mem[64] + 32] = address(cd[(arg5 + 100)])
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = _263
            emit Swapped(address(cd[(arg5 + 196)]), address(cd[(arg5 + 100)]), ext_call.return_data[0], _263);
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _278 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _281 = mem[_278]
            require mem[_278] == mem[_278]
            mem[mem[64] + 4] = address(cd[(arg5 + 68)])
            mem[mem[64] + 36] = _281
            require ext_code.size(address(cd[(arg5 + 100)]))
            call address(cd[(arg5 + 100)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 68)]), _281
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _290 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_290] == bool(mem[_290])
            mem[mem[64] + 4] = address(cd[(arg5 + 36)])
            mem[mem[64] + 36] = _281
            mem[mem[64] + 68] = address(cd[(arg5 + 132)])
            require ext_code.size(address(cd[(arg5 + 68)]))
            call address(cd[(arg5 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 36)]), _281, address(cd[(arg5 + 132)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _302 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_302] == mem[_302]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _314 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _317 = mem[_314]
            require mem[_314] == mem[_314]
            mem[mem[64] + 32] = address(cd[(arg5 + 68)])
            mem[mem[64] + 64] = _317
            emit Liquidated(address(cd[(arg5 + 36)]), address(cd[(arg5 + 68)]), _317);
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 132)]))
            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _332 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _335 = mem[_332]
            require mem[_332] == mem[_332]
            mem[mem[64] + 4] = mem[_332]
            require ext_code.size(address(cd[(arg5 + 132)]))
            call address(cd[(arg5 + 132)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args _335
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _344 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_344] == mem[_344]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 164)]))
            staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _356 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_356] == mem[_356]
            if mem[_356] <= 0:
                revert with 0, 'Contract has no balance of tokenFrom'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 164)]))
            staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _374 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _377 = mem[_374]
            require mem[_374] == mem[_374]
            mem[mem[64] + 4] = joeRouterAddress
            mem[mem[64] + 36] = _377
            require ext_code.size(address(cd[(arg5 + 164)]))
            call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args joeRouterAddress, _377
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _386 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_386] == bool(mem[_386])
            if address(cd[(arg5 + 164)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                _392 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_392]:
                    revert with 'NH{q', 50
                mem[_392 + 32] = address(cd[(arg5 + 164)])
                if 1 >= mem[_392]:
                    revert with 'NH{q', 50
                mem[_392 + 64] = address(cd[(arg5 + 196)])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[_392 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_392 + 100] = _377
                mem[_392 + 132] = 1
                mem[_392 + 164] = 160
                mem[_392 + 260] = mem[_392]
                idx = 0
                s = _392 + 32
                t = _392 + 292
                while idx < mem[_392]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_392 + 196] = this.address
                mem[_392 + 228] = block.timestamp + 60
                require ext_code.size(joeRouterAddress)
                call joeRouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _392 + (32 * mem[_392]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _622 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _631 = mem[_622]
                require mem[_622] <= test266151307()
                require _622 + mem[_622] + 31 < _622 + return_data.size
                _640 = mem[_622 + mem[_622]]
                if mem[_622 + mem[_622]] > test266151307():
                    revert with 'NH{q', 65
                if _622 + ceil32(return_data.size) + (32 * mem[_622 + mem[_622]]) + 32 > test266151307() or (32 * mem[_622 + mem[_622]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _622 + ceil32(return_data.size) + (32 * mem[_622 + mem[_622]]) + 32
                mem[_622 + ceil32(return_data.size)] = _640
                require _631 + (32 * _640) + 32 <= return_data.size
                idx = 0
                s = _622 + _631 + 32
                t = _622 + ceil32(return_data.size) + 32
                while idx < _640:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 196)]))
                staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _928 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_928] == mem[_928]
                if mem[_928] <= 0:
                    revert with 0, 'Didn't receive token'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 196)]))
                staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _982 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _991 = mem[_982]
                require mem[_982] == mem[_982]
                mem[mem[64] + 64] = _377
                mem[mem[64] + 96] = _991
                emit Swapped(address(cd[(arg5 + 164)]), address(cd[(arg5 + 196)]), _377, _991);
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg3 + arg4
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1036 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1036] == bool(mem[_1036])
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 196)]))
                staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1072 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1081 = mem[_1072]
                require mem[_1072] == mem[_1072]
                if mem[_1072] < arg3 + arg4:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _1081 - arg3 - arg4
                require ext_code.size(address(cd[(arg5 + 196)]))
                call address(cd[(arg5 + 196)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, _1081 - arg3 - arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1108 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1108] == bool(mem[_1108])
            else:
                if address(cd[(arg5 + 196)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    _396 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_396]:
                        revert with 'NH{q', 50
                    mem[_396 + 32] = address(cd[(arg5 + 164)])
                    if 1 >= mem[_396]:
                        revert with 'NH{q', 50
                    mem[_396 + 64] = address(cd[(arg5 + 196)])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[_396 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_396 + 100] = _377
                    mem[_396 + 132] = 1
                    mem[_396 + 164] = 160
                    mem[_396 + 260] = mem[_396]
                    idx = 0
                    s = _396 + 32
                    t = _396 + 292
                    while idx < mem[_396]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_396 + 196] = this.address
                    mem[_396 + 228] = block.timestamp + 60
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _396 + (32 * mem[_396]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _623 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _632 = mem[_623]
                    require mem[_623] <= test266151307()
                    require _623 + mem[_623] + 31 < _623 + return_data.size
                    _641 = mem[_623 + mem[_623]]
                    if mem[_623 + mem[_623]] > test266151307():
                        revert with 'NH{q', 65
                    if _623 + ceil32(return_data.size) + (32 * mem[_623 + mem[_623]]) + 32 > test266151307() or (32 * mem[_623 + mem[_623]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _623 + ceil32(return_data.size) + (32 * mem[_623 + mem[_623]]) + 32
                    mem[_623 + ceil32(return_data.size)] = _641
                    require _632 + (32 * _641) + 32 <= return_data.size
                    idx = 0
                    s = _623 + _632 + 32
                    t = _623 + ceil32(return_data.size) + 32
                    while idx < _641:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _929 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_929] == mem[_929]
                    if mem[_929] <= 0:
                        revert with 0, 'Didn't receive token'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _983 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _992 = mem[_983]
                    require mem[_983] == mem[_983]
                    mem[mem[64] + 64] = _377
                    mem[mem[64] + 96] = _992
                    emit Swapped(address(cd[(arg5 + 164)]), address(cd[(arg5 + 196)]), _377, _992);
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1037 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1037] == bool(mem[_1037])
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1073 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1082 = mem[_1073]
                    require mem[_1073] == mem[_1073]
                    if mem[_1073] < arg3 + arg4:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _1082 - arg3 - arg4
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    call address(cd[(arg5 + 196)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _1082 - arg3 - arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1109 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1109] == bool(mem[_1109])
                else:
                    _397 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_397]:
                        revert with 'NH{q', 50
                    mem[_397 + 32] = address(cd[(arg5 + 164)])
                    if 1 >= mem[_397]:
                        revert with 'NH{q', 50
                    mem[_397 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if 2 >= mem[_397]:
                        revert with 'NH{q', 50
                    mem[_397 + 96] = address(cd[(arg5 + 196)])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[_397 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_397 + 132] = _377
                    mem[_397 + 164] = 1
                    mem[_397 + 196] = 160
                    mem[_397 + 292] = mem[_397]
                    idx = 0
                    s = _397 + 32
                    t = _397 + 324
                    while idx < mem[_397]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_397 + 228] = this.address
                    mem[_397 + 260] = block.timestamp + 60
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _397 + (32 * mem[_397]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _624 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _633 = mem[_624]
                    require mem[_624] <= test266151307()
                    require _624 + mem[_624] + 31 < _624 + return_data.size
                    _642 = mem[_624 + mem[_624]]
                    if mem[_624 + mem[_624]] > test266151307():
                        revert with 'NH{q', 65
                    if _624 + ceil32(return_data.size) + (32 * mem[_624 + mem[_624]]) + 32 > test266151307() or (32 * mem[_624 + mem[_624]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _624 + ceil32(return_data.size) + (32 * mem[_624 + mem[_624]]) + 32
                    mem[_624 + ceil32(return_data.size)] = _642
                    require _633 + (32 * _642) + 32 <= return_data.size
                    idx = 0
                    s = _624 + _633 + 32
                    t = _624 + ceil32(return_data.size) + 32
                    while idx < _642:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _930 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_930] == mem[_930]
                    if mem[_930] <= 0:
                        revert with 0, 'Didn't receive token'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _984 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _993 = mem[_984]
                    require mem[_984] == mem[_984]
                    mem[mem[64] + 64] = _377
                    mem[mem[64] + 96] = _993
                    emit Swapped(address(cd[(arg5 + 164)]), address(cd[(arg5 + 196)]), _377, _993);
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1038 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1038] == bool(mem[_1038])
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1074 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1083 = mem[_1074]
                    require mem[_1074] == mem[_1074]
                    if mem[_1074] < arg3 + arg4:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _1083 - arg3 - arg4
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    call address(cd[(arg5 + 196)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _1083 - arg3 - arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1110 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1110] == bool(mem[_1110])
        else:
            mem[(6 * ceil32(return_data.size)) + 96] = 3
            mem[(6 * ceil32(return_data.size)) + 128] = address(cd[(arg5 + 196)])
            mem[(6 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(6 * ceil32(return_data.size)) + 192] = address(cd[(arg5 + 100)])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 260] = 1
            mem[(6 * ceil32(return_data.size)) + 292] = 160
            mem[(6 * ceil32(return_data.size)) + 388] = 3
            idx = 0
            s = (6 * ceil32(return_data.size)) + 128
            t = (6 * ceil32(return_data.size)) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 324] = this.address
            mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 60
            require ext_code.size(joeRouterAddress)
            call joeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 1, Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 420 len 96]), address(this.address), block.timestamp + 60
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _135 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
            require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
            _138 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                revert with 'NH{q', 65
            if (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 256 > test266151307() or (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 256
            mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
            require _135 + (32 * _138) + 32 <= return_data.size
            idx = 0
            s = (6 * ceil32(return_data.size)) + _135 + 256
            t = (7 * ceil32(return_data.size)) + 256
            while idx < _138:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _243 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_243] == mem[_243]
            if mem[_243] <= 0:
                revert with 0, 'Didn't receive token'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _264 = mem[_261]
            require mem[_261] == mem[_261]
            mem[mem[64] + 32] = address(cd[(arg5 + 100)])
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = _264
            emit Swapped(address(cd[(arg5 + 196)]), address(cd[(arg5 + 100)]), ext_call.return_data[0], _264);
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _279 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _282 = mem[_279]
            require mem[_279] == mem[_279]
            mem[mem[64] + 4] = address(cd[(arg5 + 68)])
            mem[mem[64] + 36] = _282
            require ext_code.size(address(cd[(arg5 + 100)]))
            call address(cd[(arg5 + 100)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 68)]), _282
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_291] == bool(mem[_291])
            mem[mem[64] + 4] = address(cd[(arg5 + 36)])
            mem[mem[64] + 36] = _282
            mem[mem[64] + 68] = address(cd[(arg5 + 132)])
            require ext_code.size(address(cd[(arg5 + 68)]))
            call address(cd[(arg5 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 36)]), _282, address(cd[(arg5 + 132)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_303] == mem[_303]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _315 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _318 = mem[_315]
            require mem[_315] == mem[_315]
            mem[mem[64] + 32] = address(cd[(arg5 + 68)])
            mem[mem[64] + 64] = _318
            emit Liquidated(address(cd[(arg5 + 36)]), address(cd[(arg5 + 68)]), _318);
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 132)]))
            staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _333 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _336 = mem[_333]
            require mem[_333] == mem[_333]
            mem[mem[64] + 4] = mem[_333]
            require ext_code.size(address(cd[(arg5 + 132)]))
            call address(cd[(arg5 + 132)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args _336
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _345 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_345] == mem[_345]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 164)]))
            staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_357] == mem[_357]
            if mem[_357] <= 0:
                revert with 0, 'Contract has no balance of tokenFrom'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 164)]))
            staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _375 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _378 = mem[_375]
            require mem[_375] == mem[_375]
            mem[mem[64] + 4] = joeRouterAddress
            mem[mem[64] + 36] = _378
            require ext_code.size(address(cd[(arg5 + 164)]))
            call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args joeRouterAddress, _378
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _387 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_387] == bool(mem[_387])
            if address(cd[(arg5 + 164)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                _393 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_393]:
                    revert with 'NH{q', 50
                mem[_393 + 32] = address(cd[(arg5 + 164)])
                if 1 >= mem[_393]:
                    revert with 'NH{q', 50
                mem[_393 + 64] = address(cd[(arg5 + 196)])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[_393 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_393 + 100] = _378
                mem[_393 + 132] = 1
                mem[_393 + 164] = 160
                mem[_393 + 260] = mem[_393]
                idx = 0
                s = _393 + 32
                t = _393 + 292
                while idx < mem[_393]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_393 + 196] = this.address
                mem[_393 + 228] = block.timestamp + 60
                require ext_code.size(joeRouterAddress)
                call joeRouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _393 + (32 * mem[_393]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _625 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _634 = mem[_625]
                require mem[_625] <= test266151307()
                require _625 + mem[_625] + 31 < _625 + return_data.size
                _643 = mem[_625 + mem[_625]]
                if mem[_625 + mem[_625]] > test266151307():
                    revert with 'NH{q', 65
                if _625 + ceil32(return_data.size) + (32 * mem[_625 + mem[_625]]) + 32 > test266151307() or (32 * mem[_625 + mem[_625]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _625 + ceil32(return_data.size) + (32 * mem[_625 + mem[_625]]) + 32
                mem[_625 + ceil32(return_data.size)] = _643
                require _634 + (32 * _643) + 32 <= return_data.size
                idx = 0
                s = _625 + _634 + 32
                t = _625 + ceil32(return_data.size) + 32
                while idx < _643:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 196)]))
                staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _931 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_931] == mem[_931]
                if mem[_931] <= 0:
                    revert with 0, 'Didn't receive token'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 196)]))
                staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _985 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _994 = mem[_985]
                require mem[_985] == mem[_985]
                mem[mem[64] + 64] = _378
                mem[mem[64] + 96] = _994
                emit Swapped(address(cd[(arg5 + 164)]), address(cd[(arg5 + 196)]), _378, _994);
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg3 + arg4
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1039 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1039] == bool(mem[_1039])
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 196)]))
                staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1075 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1084 = mem[_1075]
                require mem[_1075] == mem[_1075]
                if mem[_1075] < arg3 + arg4:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _1084 - arg3 - arg4
                require ext_code.size(address(cd[(arg5 + 196)]))
                call address(cd[(arg5 + 196)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, _1084 - arg3 - arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1111 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1111] == bool(mem[_1111])
            else:
                if address(cd[(arg5 + 196)]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    _398 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_398]:
                        revert with 'NH{q', 50
                    mem[_398 + 32] = address(cd[(arg5 + 164)])
                    if 1 >= mem[_398]:
                        revert with 'NH{q', 50
                    mem[_398 + 64] = address(cd[(arg5 + 196)])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[_398 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_398 + 100] = _378
                    mem[_398 + 132] = 1
                    mem[_398 + 164] = 160
                    mem[_398 + 260] = mem[_398]
                    idx = 0
                    s = _398 + 32
                    t = _398 + 292
                    while idx < mem[_398]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_398 + 196] = this.address
                    mem[_398 + 228] = block.timestamp + 60
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _398 + (32 * mem[_398]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _626 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _635 = mem[_626]
                    require mem[_626] <= test266151307()
                    require _626 + mem[_626] + 31 < _626 + return_data.size
                    _644 = mem[_626 + mem[_626]]
                    if mem[_626 + mem[_626]] > test266151307():
                        revert with 'NH{q', 65
                    if _626 + ceil32(return_data.size) + (32 * mem[_626 + mem[_626]]) + 32 > test266151307() or (32 * mem[_626 + mem[_626]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _626 + ceil32(return_data.size) + (32 * mem[_626 + mem[_626]]) + 32
                    mem[_626 + ceil32(return_data.size)] = _644
                    require _635 + (32 * _644) + 32 <= return_data.size
                    idx = 0
                    s = _626 + _635 + 32
                    t = _626 + ceil32(return_data.size) + 32
                    while idx < _644:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _932 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_932] == mem[_932]
                    if mem[_932] <= 0:
                        revert with 0, 'Didn't receive token'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _986 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _995 = mem[_986]
                    require mem[_986] == mem[_986]
                    mem[mem[64] + 64] = _378
                    mem[mem[64] + 96] = _995
                    emit Swapped(address(cd[(arg5 + 164)]), address(cd[(arg5 + 196)]), _378, _995);
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1040] == bool(mem[_1040])
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1076 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1085 = mem[_1076]
                    require mem[_1076] == mem[_1076]
                    if mem[_1076] < arg3 + arg4:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _1085 - arg3 - arg4
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    call address(cd[(arg5 + 196)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _1085 - arg3 - arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1112 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1112] == bool(mem[_1112])
                else:
                    _399 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_399]:
                        revert with 'NH{q', 50
                    mem[_399 + 32] = address(cd[(arg5 + 164)])
                    if 1 >= mem[_399]:
                        revert with 'NH{q', 50
                    mem[_399 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if 2 >= mem[_399]:
                        revert with 'NH{q', 50
                    mem[_399 + 96] = address(cd[(arg5 + 196)])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[_399 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_399 + 132] = _378
                    mem[_399 + 164] = 1
                    mem[_399 + 196] = 160
                    mem[_399 + 292] = mem[_399]
                    idx = 0
                    s = _399 + 32
                    t = _399 + 324
                    while idx < mem[_399]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_399 + 228] = this.address
                    mem[_399 + 260] = block.timestamp + 60
                    require ext_code.size(joeRouterAddress)
                    call joeRouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _399 + (32 * mem[_399]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _627 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _636 = mem[_627]
                    require mem[_627] <= test266151307()
                    require _627 + mem[_627] + 31 < _627 + return_data.size
                    _645 = mem[_627 + mem[_627]]
                    if mem[_627 + mem[_627]] > test266151307():
                        revert with 'NH{q', 65
                    if _627 + ceil32(return_data.size) + (32 * mem[_627 + mem[_627]]) + 32 > test266151307() or (32 * mem[_627 + mem[_627]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _627 + ceil32(return_data.size) + (32 * mem[_627 + mem[_627]]) + 32
                    mem[_627 + ceil32(return_data.size)] = _645
                    require _636 + (32 * _645) + 32 <= return_data.size
                    idx = 0
                    s = _627 + _636 + 32
                    t = _627 + ceil32(return_data.size) + 32
                    while idx < _645:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _933 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_933] == mem[_933]
                    if mem[_933] <= 0:
                        revert with 0, 'Didn't receive token'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _987 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _996 = mem[_987]
                    require mem[_987] == mem[_987]
                    mem[mem[64] + 64] = _378
                    mem[mem[64] + 96] = _996
                    emit Swapped(address(cd[(arg5 + 164)]), address(cd[(arg5 + 196)]), _378, _996);
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1041 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1041] == bool(mem[_1041])
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1077 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1086 = mem[_1077]
                    require mem[_1077] == mem[_1077]
                    if mem[_1077] < arg3 + arg4:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _1086 - arg3 - arg4
                    require ext_code.size(address(cd[(arg5 + 196)]))
                    call address(cd[(arg5 + 196)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _1086 - arg3 - arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1113 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1113] == bool(mem[_1113])
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}



}
