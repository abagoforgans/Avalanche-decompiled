contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
mapping of uint8 stor2;
array of address stor3;
uint256 stor4;

function destroy() {
    if stor1 != msg.sender:
        revert with 0, '5'
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function sub_b51f1f84(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, '1'
    stor0 = arg1
}

function sub_b6a9a334(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, '1'
    stor4 = arg1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, '1'
    stor1 = arg1
}

function sub_fa0f9eb9(?) {
    if stor1 != msg.sender:
        revert with 0, '1'
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e9933cc0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor1 != msg.sender:
        revert with 0, '5'
    stor3.length++
    stor3[stor3.length] = address(arg1)
    if arg2:
        stor2[address(arg1)] = 1
    else:
        stor2[address(arg1)] = 0
}

function withdrawal(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 != msg.sender:
        revert with 0, '1'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function get_block_hash_257335279069929(uint256 arg1) payable {
    if stor1 != msg.sender:
        revert with 0, '1234'
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    idx = 0
    s = 0
    t = 0
    while idx < stor3.length:
        mem[0] = 3
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[128] = stor3[idx]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        staticcall stor3[idx].0x70a08231 with:
                gas gas_remaining wei
               args 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _153 = mem[_151]
        require mem[_151] == mem[_151]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = stor3[idx]
        mem[32] = 2
        if bool(stor2[stor3[idx]]) == 1:
            if _153 >= stor4:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                staticcall stor3[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _171 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_171] == mem[_171]
                if mem[_171] < _153:
                    revert with 0, 'GIGACHAD'
                _185 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_185]:
                    revert with 'NH{q', 50
                mem[_185 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if 1 >= mem[_185]:
                    revert with 'NH{q', 50
                mem[_185 + 64] = stor3[idx]
                mem[_185 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[_185 + 100] = 0
                mem[_185 + 132] = 128
                mem[_185 + 228] = mem[_185]
                s = 0
                t = _185 + 32
                u = _185 + 260
                while s < mem[_185]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_185 + 164] = this.address
                mem[_185 + 196] = block.timestamp
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _185 + (32 * mem[_185]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                staticcall stor3[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                _304 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _308 = mem[_304]
                require mem[_304] == mem[_304]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _308
                call stor3[idx].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _308
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _330 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_330] == bool(mem[_330])
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args stor3[idx], _308, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_358] == mem[_358]
                require mem[_358 + 32] == mem[_358 + 32]
                require mem[_358 + 64] == mem[_358 + 64]
                mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[mem[64] + 36] = stor3[idx]
                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, stor3[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _384 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _388 = mem[_384]
                require mem[_384] == mem[_384 + 12 len 20]
                mem[mem[64] + 4] = this.address
                staticcall address(_388).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _394 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _396 = mem[_394]
                require mem[_394] == mem[_394]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _396
                call address(_388).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _396
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _404 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_404] == bool(mem[_404])
                mem[0] = stor3[idx]
                mem[32] = 2
                mem[mem[64] + 4] = stor3[idx]
                mem[mem[64] + 36] = _396 / 10
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                if bool(stor2[stor3[idx]]) != 1:
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args stor3[idx], _396 / 10, 0, 0, address(this.address), block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _456 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_456] == mem[_456]
                    if this.address == this.address:
                        mem[mem[64] + 4] = this.address
                        staticcall stor3[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _476 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _480 = mem[_476]
                        require mem[_476] == mem[_476]
                        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[mem[64] + 36] = _480
                        call stor3[idx].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _480
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _502 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_502] == bool(mem[_502])
                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _480
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _480, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) <= stor0:
                            revert with 0, 'FK'
                        call stor1 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[64] + 132] = stor1
                    mem[mem[64] + 164] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args stor3[idx], _396 / 10, 0, 0, stor1, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _455 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_455] == mem[_455]
                    if stor1 == this.address:
                        mem[mem[64] + 4] = this.address
                        staticcall stor3[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _475 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _479 = mem[_475]
                        require mem[_475] == mem[_475]
                        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[mem[64] + 36] = _479
                        call stor3[idx].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _479
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _501 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_501] == bool(mem[_501])
                        _511 = mem[64]
                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _479
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _521 = mem[96]
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < _521:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_511 + 100] = this.address
                        mem[_511 + 132] = block.timestamp
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _511 + (32 * _521) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) <= stor0:
                            revert with 0, 'FK'
                        call stor1 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if _153 <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    t = _153
                    continue 
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _153
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _153, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _290 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _292 = mem[_290]
                require mem[_290] <= test266151307()
                require _290 + mem[_290] + 31 < _290 + return_data.size
                _294 = mem[_290 + mem[_290]]
                if mem[_290 + mem[_290]] > test266151307():
                    revert with 'NH{q', 65
                if _290 + ceil32(return_data.size) + floor32(mem[_290 + mem[_290]]) + 1 > test266151307() or floor32(mem[_290 + mem[_290]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _290 + ceil32(return_data.size) + floor32(mem[_290 + mem[_290]]) + 1
                mem[_290 + ceil32(return_data.size)] = _294
                require _292 + (32 * _294) + 32 <= return_data.size
                s = _290 + _292 + 32
                t = _290 + ceil32(return_data.size) + 32
                while s < _290 + _292 + (32 * _294) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _294:
                    revert with 'NH{q', 50
                if mem[_290 + ceil32(return_data.size) + 64] <= stor0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_290 + ceil32(return_data.size) + 64]
                    t = _153
                    continue 
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _428 = mem[128]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                staticcall address(_428).0x70a08231 with:
                        gas gas_remaining wei
                       args 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _434 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_434] == mem[_434]
                if mem[_434] < _153:
                    revert with 0, 'GIGACHAD'
                _440 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_440]:
                    revert with 'NH{q', 50
                mem[_440 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if 1 >= mem[_440]:
                    revert with 'NH{q', 50
                mem[_440 + 64] = address(_428)
                mem[_440 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[_440 + 100] = 0
                mem[_440 + 132] = 128
                mem[_440 + 228] = mem[_440]
                idx = 0
                s = _440 + 32
                t = _440 + 260
                while idx < mem[_440]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_440 + 164] = this.address
                mem[_440 + 196] = block.timestamp
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _440 + (32 * mem[_440]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                staticcall address(_428).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                _596 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _600 = mem[_596]
                require mem[_596] == mem[_596]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _600
                call address(_428).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _600
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _606 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_606] == bool(mem[_606])
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args address(_428), _600, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _614 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_614] == mem[_614]
                require mem[_614 + 32] == mem[_614 + 32]
                require mem[_614 + 64] == mem[_614 + 64]
                mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[mem[64] + 36] = address(_428)
                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(_428)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _626 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _628 = mem[_626]
                require mem[_626] == mem[_626 + 12 len 20]
                mem[mem[64] + 4] = this.address
                staticcall address(_628).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _634 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _636 = mem[_634]
                require mem[_634] == mem[_634]
                mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[mem[64] + 36] = _636
                call address(_628).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _636
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _642 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_642] == bool(mem[_642])
                mem[0] = address(_428)
                mem[32] = 2
                mem[mem[64] + 4] = address(_428)
                mem[mem[64] + 36] = _636 / 10
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                if bool(stor2[address(_428)]) == 1:
                    mem[mem[64] + 132] = stor1
                    mem[mem[64] + 164] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(_428), _636 / 10, 0, 0, stor1, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _657 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_657] == mem[_657]
                    if stor1 == this.address:
                        mem[mem[64] + 4] = this.address
                        staticcall address(_428).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _673 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _677 = mem[_673]
                        require mem[_673] == mem[_673]
                        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[mem[64] + 36] = _677
                        call address(_428).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _677
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _689 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_689] == bool(mem[_689])
                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _677
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _677, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) <= stor0:
                            revert with 0, 'FK'
                        call stor1 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args address(_428), _636 / 10, 0, 0, address(this.address), block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_658] == mem[_658]
                    if this.address == this.address:
                        mem[mem[64] + 4] = this.address
                        staticcall address(_428).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _674 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _678 = mem[_674]
                        require mem[_674] == mem[_674]
                        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                        mem[mem[64] + 36] = _678
                        call address(_428).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _678
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _690 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_690] == bool(mem[_690])
                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _678
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _678, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) <= stor0:
                            revert with 0, 'FK'
                        call stor1 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if _153 <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = _153
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _153
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 100
            while s < mem[96]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _153, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _289 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _291 = mem[_289]
            require mem[_289] <= test266151307()
            require _289 + mem[_289] + 31 < _289 + return_data.size
            _293 = mem[_289 + mem[_289]]
            if mem[_289 + mem[_289]] > test266151307():
                revert with 'NH{q', 65
            if _289 + ceil32(return_data.size) + floor32(mem[_289 + mem[_289]]) + 1 > test266151307() or floor32(mem[_289 + mem[_289]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _289 + ceil32(return_data.size) + floor32(mem[_289 + mem[_289]]) + 1
            mem[_289 + ceil32(return_data.size)] = _293
            require _291 + (32 * _293) + 32 <= return_data.size
            s = _289 + _291 + 32
            t = _289 + ceil32(return_data.size) + 32
            while s < _289 + _291 + (32 * _293) + 32:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _293:
                revert with 'NH{q', 50
            if mem[_289 + ceil32(return_data.size) + 64] <= stor0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_289 + ceil32(return_data.size) + 64]
                t = _153
                continue 
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            _427 = mem[128]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            staticcall address(_427).0x70a08231 with:
                    gas gas_remaining wei
                   args 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _433 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_433] == mem[_433]
            if mem[_433] < _153:
                revert with 0, 'GIGACHAD'
            _439 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_439]:
                revert with 'NH{q', 50
            mem[_439 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if 1 >= mem[_439]:
                revert with 'NH{q', 50
            mem[_439 + 64] = address(_427)
            mem[_439 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[_439 + 100] = 0
            mem[_439 + 132] = 128
            mem[_439 + 228] = mem[_439]
            idx = 0
            s = _439 + 32
            t = _439 + 260
            while idx < mem[_439]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_439 + 164] = this.address
            mem[_439 + 196] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _439 + (32 * mem[_439]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            staticcall address(_427).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _595 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _599 = mem[_595]
            require mem[_595] == mem[_595]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = _599
            call address(_427).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _599
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_605] == bool(mem[_605])
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = this.address
            mem[mem[64] + 164] = block.timestamp
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args address(_427), _599, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _613 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_613] == mem[_613]
            require mem[_613 + 32] == mem[_613 + 32]
            require mem[_613 + 64] == mem[_613 + 64]
            mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 36] = address(_427)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(_427)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _625 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _627 = mem[_625]
            require mem[_625] == mem[_625 + 12 len 20]
            mem[mem[64] + 4] = this.address
            staticcall address(_627).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _633 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _635 = mem[_633]
            require mem[_633] == mem[_633]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = _635
            call address(_627).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _635
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _641 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_641] == bool(mem[_641])
            mem[0] = address(_427)
            mem[32] = 2
            mem[mem[64] + 4] = address(_427)
            mem[mem[64] + 36] = _635 / 10
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = 0
            if bool(stor2[address(_427)]) != 1:
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(_427), _635 / 10, 0, 0, address(this.address), block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _656 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_656] == mem[_656]
                if this.address == this.address:
                    mem[mem[64] + 4] = this.address
                    staticcall address(_427).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _672 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _676 = mem[_672]
                    require mem[_672] == mem[_672]
                    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[mem[64] + 36] = _676
                    call address(_427).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _676
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _688 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_688] == bool(mem[_688])
                    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _676
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _676, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) <= stor0:
                        revert with 0, 'FK'
                    call stor1 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64] + 132] = stor1
                mem[mem[64] + 164] = block.timestamp
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(_427), _635 / 10, 0, 0, stor1, block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _655 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_655] == mem[_655]
                if stor1 == this.address:
                    mem[mem[64] + 4] = this.address
                    staticcall address(_427).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _671 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _675 = mem[_671]
                    require mem[_671] == mem[_671]
                    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[mem[64] + 36] = _675
                    call address(_427).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _675
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _687 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_687] == bool(mem[_687])
                    _695 = mem[64]
                    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _675
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _699 = mem[96]
                    mem[mem[64] + 164] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < _699:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_695 + 100] = this.address
                    mem[_695 + 132] = block.timestamp
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _695 + (32 * _699) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) <= stor0:
                        revert with 0, 'FK'
                    call stor1 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    staticcall 0x0.0x70a08231 with:
            gas gas_remaining wei
           args 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _149 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_149] == mem[_149]
    if mem[_149] < 0:
        revert with 0, 'GIGACHAD'
    _156 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_156]:
        revert with 'NH{q', 50
    mem[_156 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if 1 >= mem[_156]:
        revert with 'NH{q', 50
    mem[_156 + 64] = 0
    mem[_156 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[_156 + 100] = 0
    mem[_156 + 132] = 128
    mem[_156 + 228] = mem[_156]
    idx = 0
    s = _156 + 32
    t = _156 + 260
    while idx < mem[_156]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_156 + 164] = this.address
    mem[_156 + 196] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
       value msg.value / 2 wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _156 + (32 * mem[_156]) + -mem[64] + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall 0x0.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _303 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _307 = mem[_303]
    require mem[_303] == mem[_303]
    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[mem[64] + 36] = _307
    call 0x0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _307
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _329 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_329] == bool(mem[_329])
    mem[mem[64] + 68] = 0
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, _307, 0, 0, address(this.address), block.timestamp
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _357 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_357] == mem[_357]
    require mem[_357 + 32] == mem[_357 + 32]
    require mem[_357 + 64] == mem[_357 + 64]
    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 36] = 0
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _383 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _387 = mem[_383]
    require mem[_383] == mem[_383 + 12 len 20]
    mem[mem[64] + 4] = this.address
    staticcall address(_387).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _393 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _395 = mem[_393]
    require mem[_393] == mem[_393]
    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[mem[64] + 36] = _395
    call address(_387).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _395
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _401 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_401] == bool(mem[_401])
    mem[0] = 0
    mem[32] = 2
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = _395 / 10
    mem[mem[64] + 68] = 0
    mem[mem[64] + 100] = 0
    if bool(stor2[0]) == 1:
        mem[mem[64] + 132] = stor1
        mem[mem[64] + 164] = block.timestamp
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0, _395 / 10, 0, 0, stor1, block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _453 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_453] == mem[_453]
        if stor1 == this.address:
            mem[mem[64] + 4] = this.address
            staticcall 0x0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _473 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _477 = mem[_473]
            require mem[_473] == mem[_473]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = _477
            call 0x0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _477
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _499 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_499] == bool(mem[_499])
            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _477
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _477, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) <= stor0:
                revert with 0, 'FK'
            call stor1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[mem[64] + 132] = this.address
        mem[mem[64] + 164] = block.timestamp
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0, _395 / 10, 0, 0, address(this.address), block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _454 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_454] == mem[_454]
        if this.address == this.address:
            mem[mem[64] + 4] = this.address
            staticcall 0x0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _474 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _478 = mem[_474]
            require mem[_474] == mem[_474]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = _478
            call 0x0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _478
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _500 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_500] == bool(mem[_500])
            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _478
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _478, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) <= stor0:
                revert with 0, 'FK'
            call stor1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
