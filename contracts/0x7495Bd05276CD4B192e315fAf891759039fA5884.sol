contract main {




// =====================  Runtime code  =====================


address owner;
address uniswapRouterAddress;
address uniswapFactoryAddress;
address wethAddress;
array of address tokens;

function weth() payable {
    return wethAddress
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < tokens.length
    return tokens[arg1]
}

function uniswapRouter() payable {
    return uniswapRouterAddress
}

function uniswapFactory() payable {
    return uniswapFactoryAddress
}

function owner() payable {
    return owner
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

function addToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokens.length++
    tokens[tokens.length] = arg1
    emit 0x3fcb42e4: arg1
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

function withdraw(address arg1) payable {
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

function checkToken(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not msg.sender
    idx = 0
    while idx < tokens.length:
        mem[0] = 4
        if tokens[idx] != arg1:
            mem[mem[64] + 4] = tokens[idx]
            mem[mem[64] + 36] = arg1
            require ext_code.size(uniswapFactoryAddress)
            call uniswapFactoryAddress.getPair(address rg1, address rg2) with:
                 gas gas_remaining wei
                args tokens[idx], arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _42 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _43 = mem[_42]
            require mem[_42] == mem[_42 + 12 len 20]
            if mem[_42 + 12 len 20]:
                mem[mem[64] + 4] = mem[_42 + 12 len 20]
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_43)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _46 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_46] == mem[_46]
                if mem[_46]:
                    mem[mem[64] + 4] = address(_43)
                    require ext_code.size(tokens[idx])
                    staticcall tokens[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(_43)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _50 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_50] == mem[_50]
                    if mem[_50]:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(tokens[idx])
                        staticcall tokens[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _54 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _55 = mem[_54]
                        require mem[_54] == mem[_54]
                        _56 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_56]:
                            revert with 'NH{q', 50
                        mem[_56 + 32] = tokens[idx]
                        if 1 >= mem[_56]:
                            revert with 'NH{q', 50
                        mem[_56 + 64] = arg1
                        mem[_56 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_56 + 100] = _55
                        mem[_56 + 132] = 64
                        mem[_56 + 164] = mem[_56]
                        s = 0
                        t = _56 + 32
                        u = _56 + 196
                        while s < mem[_56]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(uniswapRouterAddress)
                        call uniswapRouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _56 + (32 * mem[_56]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _78 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _79 = mem[_78]
                        require mem[_78] <= test266151307()
                        require _78 + mem[_78] + 31 < _78 + return_data.size
                        _80 = mem[_78 + mem[_78]]
                        if mem[_78 + mem[_78]] > test266151307():
                            revert with 'NH{q', 65
                        if _78 + ceil32(return_data.size) + floor32(mem[_78 + mem[_78]]) + 1 > test266151307() or floor32(mem[_78 + mem[_78]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _78 + ceil32(return_data.size) + floor32(mem[_78 + mem[_78]]) + 1
                        mem[_78 + ceil32(return_data.size)] = _80
                        require _79 + (32 * _80) + 32 <= return_data.size
                        s = 0
                        t = _78 + _79 + 32
                        u = _78 + ceil32(return_data.size) + 32
                        while s < _80:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _123 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _124 = mem[_123]
                        require mem[_123] == mem[_123]
                        mem[mem[64] + 4] = uniswapRouterAddress
                        mem[mem[64] + 36] = _55
                        require ext_code.size(tokens[idx])
                        call tokens[idx].approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args uniswapRouterAddress, _55
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            return 6
                        _127 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_127] == bool(mem[_127])
                        _130 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _55
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _132 = mem[_56]
                        mem[mem[64] + 164] = mem[_56]
                        s = 0
                        t = _56 + 32
                        u = mem[64] + 196
                        while s < _132:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_130 + 100] = this.address
                        mem[_130 + 132] = block.timestamp
                        require ext_code.size(uniswapRouterAddress)
                        call uniswapRouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _130 + (32 * _132) + -mem[64] + 192]
                        if not ext_call.success:
                            return 7
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _184 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_184] == mem[_184]
                        if mem[_184] < _124:
                            revert with 'NH{q', 17
                        if 1 >= mem[_78 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if mem[_78 + ceil32(return_data.size) + 64] and 50 > -1 / mem[_78 + ceil32(return_data.size) + 64]:
                            revert with 'NH{q', 17
                        if mem[_184] - _124 < 50 * mem[_78 + ceil32(return_data.size) + 64] / 100:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _195 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _196 = mem[_195]
                            require mem[_195] == mem[_195]
                            _198 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_198]:
                                revert with 'NH{q', 50
                            mem[_198 + 32] = arg1
                            if 1 >= mem[_198]:
                                revert with 'NH{q', 50
                            mem[_198 + 64] = tokens[idx]
                            mem[_198 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_198 + 100] = _196
                            mem[_198 + 132] = 64
                            mem[_198 + 164] = mem[_198]
                            s = 0
                            t = _198 + 32
                            u = _198 + 196
                            while s < mem[_198]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(uniswapRouterAddress)
                            call uniswapRouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _198 + (32 * mem[_198]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _294 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _298 = mem[_294]
                            require mem[_294] <= test266151307()
                            require _294 + mem[_294] + 31 < _294 + return_data.size
                            _302 = mem[_294 + mem[_294]]
                            if mem[_294 + mem[_294]] > test266151307():
                                revert with 'NH{q', 65
                            if _294 + ceil32(return_data.size) + floor32(mem[_294 + mem[_294]]) + 1 > test266151307() or floor32(mem[_294 + mem[_294]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _294 + ceil32(return_data.size) + floor32(mem[_294 + mem[_294]]) + 1
                            mem[_294 + ceil32(return_data.size)] = _302
                            require _298 + (32 * _302) + 32 <= return_data.size
                            s = 0
                            t = _294 + _298 + 32
                            u = _294 + ceil32(return_data.size) + 32
                            while s < _302:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokens[idx])
                            staticcall tokens[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _430 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _434 = mem[_430]
                            require mem[_430] == mem[_430]
                            mem[mem[64] + 4] = uniswapRouterAddress
                            mem[mem[64] + 36] = _196
                            require ext_code.size(arg1)
                            call arg1.approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args uniswapRouterAddress, _196
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                return 6
                            _446 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_446] == bool(mem[_446])
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _196
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _466 = mem[_198]
                            mem[mem[64] + 164] = mem[_198]
                            s = 0
                            t = _198 + 32
                            u = mem[64] + 196
                            while s < _466:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(uniswapRouterAddress)
                            call uniswapRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args _196, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _466) + 32]
                            if not ext_call.success:
                                return 7
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tokens[idx])
                            staticcall tokens[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _546 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_546] == mem[_546]
                            if mem[_546] < _434:
                                revert with 'NH{q', 17
                            if 1 >= mem[_294 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if mem[_294 + ceil32(return_data.size) + 64] and 50 > -1 / mem[_294 + ceil32(return_data.size) + 64]:
                                revert with 'NH{q', 17
                            if mem[_546] - _434 >= 50 * mem[_294 + ceil32(return_data.size) + 64] / 100:
                                if 1 >= mem[_294 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if mem[_294 + ceil32(return_data.size) + 64] and 80 > -1 / mem[_294 + ceil32(return_data.size) + 64]:
                                    revert with 'NH{q', 17
                                if mem[_546] - _434 >= 80 * mem[_294 + ceil32(return_data.size) + 64] / 100:
                                    if 1 >= mem[_294 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if mem[_294 + ceil32(return_data.size) + 64] and 90 > -1 / mem[_294 + ceil32(return_data.size) + 64]:
                                        revert with 'NH{q', 17
                        else:
                            if 1 >= mem[_78 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if mem[_78 + ceil32(return_data.size) + 64] and 80 > -1 / mem[_78 + ceil32(return_data.size) + 64]:
                                revert with 'NH{q', 17
                            if mem[_184] - _124 < 80 * mem[_78 + ceil32(return_data.size) + 64] / 100:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _203 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _204 = mem[_203]
                                require mem[_203] == mem[_203]
                                _209 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_209]:
                                    revert with 'NH{q', 50
                                mem[_209 + 32] = arg1
                                if 1 >= mem[_209]:
                                    revert with 'NH{q', 50
                                mem[_209 + 64] = tokens[idx]
                                mem[_209 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_209 + 100] = _204
                                mem[_209 + 132] = 64
                                mem[_209 + 164] = mem[_209]
                                s = 0
                                t = _209 + 32
                                u = _209 + 196
                                while s < mem[_209]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _209 + (32 * mem[_209]) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _293 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _297 = mem[_293]
                                require mem[_293] <= test266151307()
                                require _293 + mem[_293] + 31 < _293 + return_data.size
                                _301 = mem[_293 + mem[_293]]
                                if mem[_293 + mem[_293]] > test266151307():
                                    revert with 'NH{q', 65
                                if _293 + ceil32(return_data.size) + floor32(mem[_293 + mem[_293]]) + 1 > test266151307() or floor32(mem[_293 + mem[_293]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _293 + ceil32(return_data.size) + floor32(mem[_293 + mem[_293]]) + 1
                                mem[_293 + ceil32(return_data.size)] = _301
                                require _297 + (32 * _301) + 32 <= return_data.size
                                s = 0
                                t = _293 + _297 + 32
                                u = _293 + ceil32(return_data.size) + 32
                                while s < _301:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokens[idx])
                                staticcall tokens[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _429 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _433 = mem[_429]
                                require mem[_429] == mem[_429]
                                mem[mem[64] + 4] = uniswapRouterAddress
                                mem[mem[64] + 36] = _204
                                require ext_code.size(arg1)
                                call arg1.approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args uniswapRouterAddress, _204
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    return 6
                                _445 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_445] == bool(mem[_445])
                                _457 = mem[64]
                                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _204
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _465 = mem[_209]
                                mem[mem[64] + 164] = mem[_209]
                                s = 0
                                t = _209 + 32
                                u = mem[64] + 196
                                while s < _465:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_457 + 100] = this.address
                                mem[_457 + 132] = block.timestamp
                                require ext_code.size(uniswapRouterAddress)
                                call uniswapRouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _457 + (32 * _465) + -mem[64] + 192]
                                if not ext_call.success:
                                    return 7
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(tokens[idx])
                                staticcall tokens[idx].0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _544 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_544] == mem[_544]
                                if mem[_544] < _433:
                                    revert with 'NH{q', 17
                                if 1 >= mem[_293 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if mem[_293 + ceil32(return_data.size) + 64] and 50 > -1 / mem[_293 + ceil32(return_data.size) + 64]:
                                    revert with 'NH{q', 17
                                if mem[_544] - _433 >= 50 * mem[_293 + ceil32(return_data.size) + 64] / 100:
                                    if 1 >= mem[_293 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if mem[_293 + ceil32(return_data.size) + 64] and 80 > -1 / mem[_293 + ceil32(return_data.size) + 64]:
                                        revert with 'NH{q', 17
                                    if mem[_544] - _433 >= 80 * mem[_293 + ceil32(return_data.size) + 64] / 100:
                                        if 1 >= mem[_293 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        if mem[_293 + ceil32(return_data.size) + 64] and 90 > -1 / mem[_293 + ceil32(return_data.size) + 64]:
                                            revert with 'NH{q', 17
                            else:
                                if 1 >= mem[_78 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if mem[_78 + ceil32(return_data.size) + 64] and 90 > -1 / mem[_78 + ceil32(return_data.size) + 64]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(arg1)
                                staticcall arg1.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_184] - _124 >= 90 * mem[_78 + ceil32(return_data.size) + 64] / 100:
                                    _218 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _221 = mem[_218]
                                    require mem[_218] == mem[_218]
                                    _225 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_225]:
                                        revert with 'NH{q', 50
                                    mem[_225 + 32] = arg1
                                    if 1 >= mem[_225]:
                                        revert with 'NH{q', 50
                                    mem[_225 + 64] = tokens[idx]
                                    mem[_225 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_225 + 100] = _221
                                    mem[_225 + 132] = 64
                                    mem[_225 + 164] = mem[_225]
                                    s = 0
                                    t = _225 + 32
                                    u = _225 + 196
                                    while s < mem[_225]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _225 + (32 * mem[_225]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _291 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _295 = mem[_291]
                                    require mem[_291] <= test266151307()
                                    require _291 + mem[_291] + 31 < _291 + return_data.size
                                    _299 = mem[_291 + mem[_291]]
                                    if mem[_291 + mem[_291]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _291 + ceil32(return_data.size) + floor32(mem[_291 + mem[_291]]) + 1 > test266151307() or floor32(mem[_291 + mem[_291]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _291 + ceil32(return_data.size) + floor32(mem[_291 + mem[_291]]) + 1
                                    mem[_291 + ceil32(return_data.size)] = _299
                                    require _295 + (32 * _299) + 32 <= return_data.size
                                    s = 0
                                    t = _291 + _295 + 32
                                    u = _291 + ceil32(return_data.size) + 32
                                    while s < _299:
                                        require mem[t] == mem[t]
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(tokens[idx])
                                    staticcall tokens[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _427 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _431 = mem[_427]
                                    require mem[_427] == mem[_427]
                                    mem[mem[64] + 4] = uniswapRouterAddress
                                    mem[mem[64] + 36] = _221
                                    require ext_code.size(arg1)
                                    call arg1.approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args uniswapRouterAddress, _221
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        return 6
                                    _443 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_443] == bool(mem[_443])
                                    _455 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _221
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _463 = mem[_225]
                                    mem[mem[64] + 164] = mem[_225]
                                    s = 0
                                    t = _225 + 32
                                    u = mem[64] + 196
                                    while s < _463:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_455 + 100] = this.address
                                    mem[_455 + 132] = block.timestamp
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _455 + (32 * _463) + -mem[64] + 192]
                                    if not ext_call.success:
                                        return 7
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(tokens[idx])
                                    staticcall tokens[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _540 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_540] == mem[_540]
                                    if mem[_540] < _431:
                                        revert with 'NH{q', 17
                                    if 1 >= mem[_291 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if mem[_291 + ceil32(return_data.size) + 64] and 50 > -1 / mem[_291 + ceil32(return_data.size) + 64]:
                                        revert with 'NH{q', 17
                                    if mem[_540] - _431 >= 50 * mem[_291 + ceil32(return_data.size) + 64] / 100:
                                        if 1 >= mem[_291 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        if mem[_291 + ceil32(return_data.size) + 64] and 80 > -1 / mem[_291 + ceil32(return_data.size) + 64]:
                                            revert with 'NH{q', 17
                                        if mem[_540] - _431 >= 80 * mem[_291 + ceil32(return_data.size) + 64] / 100:
                                            if 1 >= mem[_291 + ceil32(return_data.size)]:
                                                revert with 'NH{q', 50
                                            if mem[_291 + ceil32(return_data.size) + 64] and 90 > -1 / mem[_291 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
                                else:
                                    _219 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _222 = mem[_219]
                                    require mem[_219] == mem[_219]
                                    _227 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_227]:
                                        revert with 'NH{q', 50
                                    mem[_227 + 32] = arg1
                                    if 1 >= mem[_227]:
                                        revert with 'NH{q', 50
                                    mem[_227 + 64] = tokens[idx]
                                    mem[_227 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_227 + 100] = _222
                                    mem[_227 + 132] = 64
                                    mem[_227 + 164] = mem[_227]
                                    s = 0
                                    t = _227 + 32
                                    u = _227 + 196
                                    while s < mem[_227]:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _227 + (32 * mem[_227]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _292 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _296 = mem[_292]
                                    require mem[_292] <= test266151307()
                                    require _292 + mem[_292] + 31 < _292 + return_data.size
                                    _300 = mem[_292 + mem[_292]]
                                    if mem[_292 + mem[_292]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _292 + ceil32(return_data.size) + floor32(mem[_292 + mem[_292]]) + 1 > test266151307() or floor32(mem[_292 + mem[_292]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _292 + ceil32(return_data.size) + floor32(mem[_292 + mem[_292]]) + 1
                                    mem[_292 + ceil32(return_data.size)] = _300
                                    require _296 + (32 * _300) + 32 <= return_data.size
                                    s = 0
                                    t = _292 + _296 + 32
                                    u = _292 + ceil32(return_data.size) + 32
                                    while s < _300:
                                        require mem[t] == mem[t]
                                        mem[u] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(tokens[idx])
                                    staticcall tokens[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _428 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _432 = mem[_428]
                                    require mem[_428] == mem[_428]
                                    mem[mem[64] + 4] = uniswapRouterAddress
                                    mem[mem[64] + 36] = _222
                                    require ext_code.size(arg1)
                                    call arg1.approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args uniswapRouterAddress, _222
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        return 6
                                    _444 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_444] == bool(mem[_444])
                                    _456 = mem[64]
                                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _222
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 160
                                    _464 = mem[_227]
                                    mem[mem[64] + 164] = mem[_227]
                                    s = 0
                                    t = _227 + 32
                                    u = mem[64] + 196
                                    while s < _464:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_456 + 100] = this.address
                                    mem[_456 + 132] = block.timestamp
                                    require ext_code.size(uniswapRouterAddress)
                                    call uniswapRouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _456 + (32 * _464) + -mem[64] + 192]
                                    if not ext_call.success:
                                        return 7
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(tokens[idx])
                                    staticcall tokens[idx].0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _542 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_542] == mem[_542]
                                    if mem[_542] < _432:
                                        revert with 'NH{q', 17
                                    if 1 >= mem[_292 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if mem[_292 + ceil32(return_data.size) + 64] and 50 > -1 / mem[_292 + ceil32(return_data.size) + 64]:
                                        revert with 'NH{q', 17
                                    if mem[_542] - _432 >= 50 * mem[_292 + ceil32(return_data.size) + 64] / 100:
                                        if 1 >= mem[_292 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        if mem[_292 + ceil32(return_data.size) + 64] and 80 > -1 / mem[_292 + ceil32(return_data.size) + 64]:
                                            revert with 'NH{q', 17
                                        if mem[_542] - _432 >= 80 * mem[_292 + ceil32(return_data.size) + 64] / 100:
                                            if 1 >= mem[_292 + ceil32(return_data.size)]:
                                                revert with 'NH{q', 50
                                            if mem[_292 + ceil32(return_data.size) + 64] and 90 > -1 / mem[_292 + ceil32(return_data.size) + 64]:
                                                revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 2
}



}
