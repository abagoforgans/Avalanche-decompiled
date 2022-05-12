contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
address stor2;
mapping of uint8 stor3;
mapping of uint256 stor4;

function destroy() {
    if stor2 != msg.sender:
        revert with 0, '5'
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function sub_b51f1f84(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '1'
    stor0 = arg1
}

function sub_b6a9a334(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '1'
    stor1 = arg1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '1'
    stor2 = arg1
}

function sub_fa0f9eb9(?) {
    if stor2 != msg.sender:
        revert with 0, '1'
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawal(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor2 != msg.sender:
        revert with 0, '1'
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function get_block_hash_257335279069929(uint256 arg1) payable {
    mem[96] = 2
    mem[128] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[160] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
    mem[192] = 2
    mem[64] = 288
    mem[224 len 64] = call.data[calldata.size len 64]
    mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    idx = 0
    s = 0
    t = 0
    while idx < 2:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[192]:
            revert with 'NH{q', 50
        mem[224] = mem[(32 * idx) + 140 len 20]
        if 0 >= mem[192]:
            revert with 'NH{q', 50
        _223 = mem[224]
        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        staticcall address(_223).balanceOf(address arg1) with:
                gas gas_remaining wei
               args 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _233 = mem[_231]
        require mem[_231] == mem[_231]
        if 0 >= mem[192]:
            revert with 'NH{q', 50
        if mem[236 len 20] != 0x136acd46c134e8269052c62a67042d6bdedde3c9:
            if mem[_231] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = mem[_231]
                continue 
            _236 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _233
            mem[mem[64] + 36] = 64
            _243 = mem[192]
            mem[mem[64] + 68] = mem[192]
            s = 0
            t = 224
            u = mem[64] + 100
            while s < _243:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _236 + (32 * _243) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _448 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _450 = mem[_448]
            require mem[_448] <= test266151307()
            require _448 + mem[_448] + 31 < _448 + return_data.size
            _452 = mem[_448 + mem[_448]]
            if mem[_448 + mem[_448]] > test266151307():
                revert with 'NH{q', 65
            if _448 + ceil32(return_data.size) + floor32(mem[_448 + mem[_448]]) + 1 > test266151307() or floor32(mem[_448 + mem[_448]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _448 + ceil32(return_data.size) + floor32(mem[_448 + mem[_448]]) + 1
            mem[_448 + ceil32(return_data.size)] = _452
            require _450 + (32 * _452) + 32 <= return_data.size
            s = _448 + _450 + 32
            t = _448 + ceil32(return_data.size) + 32
            while s < _448 + _450 + (32 * _452) + 32:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                continue 
            if 1 >= _452:
                revert with 'NH{q', 50
            if mem[_448 + ceil32(return_data.size) + 64] <= stor0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_448 + ceil32(return_data.size) + 64]
                t = _233
                continue 
            if 0 >= mem[192]:
                revert with 'NH{q', 50
            _650 = mem[224]
            mem[0] = mem[236 len 20]
            mem[32] = 3
            if stor3[mem[236 len 20]]:
                mem[0] = mem[236 len 20]
                mem[32] = 4
                if mem[236 len 20] == 0x136acd46c134e8269052c62a67042d6bdedde3c9:
                    _656 = sha3(address(mem[224]), 4)
                    mem[mem[64] + 4] = mem[236 len 20]
                    mem[mem[64] + 36] = stor[_656] / 10
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = stor2
                    mem[mem[64] + 164] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], stor[_656] / 10, 0, 0, stor2, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _682 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_682] == mem[_682]
                    mem[0] = address(_650)
                    mem[32] = 4
                    if stor4[address(_650)] < stor4[address(_650)] / 10:
                        revert with 'NH{q', 17
                    stor4[address(_650)] -= stor4[address(_650)] / 10
                    if stor2 == this.address:
                        mem[mem[64] + 4] = this.address
                        staticcall address(_650).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _714 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _718 = mem[_714]
                        require mem[_714] == mem[_714]
                        _722 = mem[64]
                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _718
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _732 = mem[192]
                        mem[mem[64] + 164] = mem[192]
                        idx = 0
                        s = 224
                        t = mem[64] + 196
                        while idx < _732:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_722 + 100] = this.address
                        mem[_722 + 132] = block.timestamp
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _722 + (32 * _732) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor2 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                else:
                    _657 = sha3(address(mem[224]), 4)
                    mem[mem[64] + 4] = mem[236 len 20]
                    mem[mem[64] + 36] = stor[_657] / 10
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], stor[_657] / 10, 0, 0, address(this.address), block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _683 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_683] == mem[_683]
                    mem[0] = address(_650)
                    mem[32] = 4
                    if stor4[address(_650)] < stor4[address(_650)] / 10:
                        revert with 'NH{q', 17
                    stor4[address(_650)] -= stor4[address(_650)] / 10
                    if this.address == this.address:
                        mem[mem[64] + 4] = this.address
                        staticcall address(_650).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _715 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _719 = mem[_715]
                        require mem[_715] == mem[_715]
                        _723 = mem[64]
                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _719
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _733 = mem[192]
                        mem[mem[64] + 164] = mem[192]
                        idx = 0
                        s = 224
                        t = mem[64] + 196
                        while idx < _733:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_723 + 100] = this.address
                        mem[_723 + 132] = block.timestamp
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _723 + (32 * _733) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor2 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
            else:
                _654 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_654]:
                    revert with 'NH{q', 50
                mem[_654 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if 1 >= mem[_654]:
                    revert with 'NH{q', 50
                mem[_654 + 64] = address(_650)
                mem[_654 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[_654 + 100] = 0
                mem[_654 + 132] = 128
                mem[_654 + 228] = mem[_654]
                idx = 0
                s = _654 + 32
                t = _654 + 260
                while idx < mem[_654]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_654 + 164] = this.address
                mem[_654 + 196] = block.timestamp
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _654 + (32 * mem[_654]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                staticcall address(_650).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                _806 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _808 = mem[_806]
                require mem[_806] == mem[_806]
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args address(_650), _808, 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _814 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_814] == mem[_814]
                require mem[_814 + 32] == mem[_814 + 32]
                require mem[_814 + 64] == mem[_814 + 64]
                if stor4[address(_650)] >= 100000:
                    stor3[address(_650)] = 1
                    if stor4[address(_650)] > -mem[_814 + 64] - 1:
                        revert with 'NH{q', 17
                    stor4[address(_650)] += mem[_814 + 64]
                else:
                    mem[0] = address(_650)
                    mem[32] = 3
                    stor3[address(_650)] = 0
                    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[mem[64] + 36] = address(_650)
                    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(_650)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _834 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _836 = mem[_834]
                    require mem[_834] == mem[_834 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_836).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _842 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_842] == mem[_842]
                    stor4[address(_650)] = mem[_842]
        else:
            if mem[_231] >= stor1:
                mem[0] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                mem[32] = 3
                if stor3[0x136acd46c134e8269052c62a67042d6bdedde3c9]:
                    mem[0] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                    mem[32] = 4
                    mem[mem[64] + 4] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                    mem[mem[64] + 36] = stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = stor2
                    mem[mem[64] + 164] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args 0x136acd46c134e8269052c62a67042d6bdedde3c9, stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10, 0, 0, stor2, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _300 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_300] == mem[_300]
                    mem[0] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                    mem[32] = 4
                    if stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] < stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10:
                        revert with 'NH{q', 17
                    stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] -= stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] / 10
                    if stor2 == this.address:
                        mem[mem[64] + 4] = this.address
                        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _327 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _331 = mem[_327]
                        require mem[_327] == mem[_327]
                        _342 = mem[64]
                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _331
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _375 = mem[192]
                        mem[mem[64] + 164] = mem[192]
                        idx = 0
                        s = 224
                        t = mem[64] + 196
                        while idx < _375:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_342 + 100] = this.address
                        mem[_342 + 132] = block.timestamp
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _342 + (32 * _375) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor2 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                else:
                    _240 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_240]:
                        revert with 'NH{q', 50
                    mem[_240 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if 1 >= mem[_240]:
                        revert with 'NH{q', 50
                    mem[_240 + 64] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                    mem[_240 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[_240 + 100] = 0
                    mem[_240 + 132] = 128
                    mem[_240 + 228] = mem[_240]
                    idx = 0
                    s = _240 + 32
                    t = _240 + 260
                    while idx < mem[_240]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_240 + 164] = this.address
                    mem[_240 + 196] = block.timestamp
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _240 + (32 * mem[_240]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    _469 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _473 = mem[_469]
                    require mem[_469] == mem[_469]
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args 0x136acd46c134e8269052c62a67042d6bdedde3c9, _473, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_509] == mem[_509]
                    require mem[_509 + 32] == mem[_509 + 32]
                    require mem[_509 + 64] == mem[_509 + 64]
                    if stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] >= 100000:
                        stor3[0x136acd46c134e8269052c62a67042d6bdedde3c9] = 1
                        if stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] > -mem[_509 + 64] - 1:
                            revert with 'NH{q', 17
                        stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] += mem[_509 + 64]
                    else:
                        mem[0] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                        mem[32] = 3
                        stor3[0x136acd46c134e8269052c62a67042d6bdedde3c9] = 0
                        mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[mem[64] + 36] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
                        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0x136acd46c134e8269052c62a67042d6bdedde3c9
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _565 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _575 = mem[_565]
                        require mem[_565] == mem[_565 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        staticcall address(_575).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _589 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_589] == mem[_589]
                        stor4[0x136acd46c134e8269052c62a67042d6bdedde3c9] = mem[_589]
            else:
                if mem[_231] <= 0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    t = mem[_231]
                    continue 
                _237 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _233
                mem[mem[64] + 36] = 64
                _245 = mem[192]
                mem[mem[64] + 68] = mem[192]
                s = 0
                t = 224
                u = mem[64] + 100
                while s < _245:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _237 + (32 * _245) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _449 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _451 = mem[_449]
                require mem[_449] <= test266151307()
                require _449 + mem[_449] + 31 < _449 + return_data.size
                _453 = mem[_449 + mem[_449]]
                if mem[_449 + mem[_449]] > test266151307():
                    revert with 'NH{q', 65
                if _449 + ceil32(return_data.size) + floor32(mem[_449 + mem[_449]]) + 1 > test266151307() or floor32(mem[_449 + mem[_449]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _449 + ceil32(return_data.size) + floor32(mem[_449 + mem[_449]]) + 1
                mem[_449 + ceil32(return_data.size)] = _453
                require _451 + (32 * _453) + 32 <= return_data.size
                s = _449 + _451 + 32
                t = _449 + ceil32(return_data.size) + 32
                while s < _449 + _451 + (32 * _453) + 32:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= _453:
                    revert with 'NH{q', 50
                if mem[_449 + ceil32(return_data.size) + 64] <= stor0:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_449 + ceil32(return_data.size) + 64]
                    t = _233
                    continue 
                if 0 >= mem[192]:
                    revert with 'NH{q', 50
                _651 = mem[224]
                mem[0] = mem[236 len 20]
                mem[32] = 3
                if stor3[mem[236 len 20]]:
                    mem[0] = mem[236 len 20]
                    mem[32] = 4
                    if mem[236 len 20] == 0x136acd46c134e8269052c62a67042d6bdedde3c9:
                        _658 = sha3(address(mem[224]), 4)
                        mem[mem[64] + 4] = mem[236 len 20]
                        mem[mem[64] + 36] = stor[_658] / 10
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = stor2
                        mem[mem[64] + 164] = block.timestamp
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], stor[_658] / 10, 0, 0, stor2, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _684 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_684] == mem[_684]
                        mem[0] = address(_651)
                        mem[32] = 4
                        if stor4[address(_651)] < stor4[address(_651)] / 10:
                            revert with 'NH{q', 17
                        stor4[address(_651)] -= stor4[address(_651)] / 10
                        if stor2 == this.address:
                            mem[mem[64] + 4] = this.address
                            staticcall address(_651).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _716 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _720 = mem[_716]
                            require mem[_716] == mem[_716]
                            _724 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _720
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _734 = mem[192]
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < _734:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_724 + 100] = this.address
                            mem[_724 + 132] = block.timestamp
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _724 + (32 * _734) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor2 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        _659 = sha3(address(mem[224]), 4)
                        mem[mem[64] + 4] = mem[236 len 20]
                        mem[mem[64] + 36] = stor[_659] / 10
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], stor[_659] / 10, 0, 0, address(this.address), block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _685 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_685] == mem[_685]
                        mem[0] = address(_651)
                        mem[32] = 4
                        if stor4[address(_651)] < stor4[address(_651)] / 10:
                            revert with 'NH{q', 17
                        stor4[address(_651)] -= stor4[address(_651)] / 10
                        if this.address == this.address:
                            mem[mem[64] + 4] = this.address
                            staticcall address(_651).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _717 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _721 = mem[_717]
                            require mem[_717] == mem[_717]
                            _725 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _721
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _735 = mem[192]
                            mem[mem[64] + 164] = mem[192]
                            idx = 0
                            s = 224
                            t = mem[64] + 196
                            while idx < _735:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_725 + 100] = this.address
                            mem[_725 + 132] = block.timestamp
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _725 + (32 * _735) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor2 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    _655 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_655]:
                        revert with 'NH{q', 50
                    mem[_655 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if 1 >= mem[_655]:
                        revert with 'NH{q', 50
                    mem[_655 + 64] = address(_651)
                    mem[_655 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[_655 + 100] = 0
                    mem[_655 + 132] = 128
                    mem[_655 + 228] = mem[_655]
                    idx = 0
                    s = _655 + 32
                    t = _655 + 260
                    while idx < mem[_655]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_655 + 164] = this.address
                    mem[_655 + 196] = block.timestamp
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _655 + (32 * mem[_655]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    staticcall address(_651).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    _807 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _809 = mem[_807]
                    require mem[_807] == mem[_807]
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args address(_651), _809, 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _815 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_815] == mem[_815]
                    require mem[_815 + 32] == mem[_815 + 32]
                    require mem[_815 + 64] == mem[_815 + 64]
                    if stor4[address(_651)] >= 100000:
                        stor3[address(_651)] = 1
                        if stor4[address(_651)] > -mem[_815 + 64] - 1:
                            revert with 'NH{q', 17
                        stor4[address(_651)] += mem[_815 + 64]
                    else:
                        mem[0] = address(_651)
                        mem[32] = 3
                        stor3[address(_651)] = 0
                        mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[mem[64] + 36] = address(_651)
                        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(_651)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _835 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _837 = mem[_835]
                        require mem[_835] == mem[_835 + 12 len 20]
                        mem[mem[64] + 4] = this.address
                        staticcall address(_837).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _843 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_843] == mem[_843]
                        stor4[address(_651)] = mem[_843]
    mem[0] = 0
    mem[32] = 3
    if stor3[0]:
        mem[0] = 0
        mem[32] = 4
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = stor4[0] / 10
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = 0
        mem[mem[64] + 132] = this.address
        mem[mem[64] + 164] = block.timestamp
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0, stor4[0] / 10, 0, 0, address(this.address), block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _264 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_264] == mem[_264]
        mem[0] = 0
        mem[32] = 4
        if stor4[0] < stor4[0] / 10:
            revert with 'NH{q', 17
        stor4[0] -= stor4[0] / 10
        if this.address == this.address:
            mem[mem[64] + 4] = this.address
            staticcall 0x0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _312 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _314 = mem[_312]
            require mem[_312] == mem[_312]
            _318 = mem[64]
            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _314
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _328 = mem[96]
            mem[mem[64] + 164] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < _328:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_318 + 100] = this.address
            mem[_318 + 132] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _318 + (32 * _328) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor2 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    else:
        _225 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_225]:
            revert with 'NH{q', 50
        mem[_225 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 1 >= mem[_225]:
            revert with 'NH{q', 50
        mem[_225 + 64] = 0
        mem[_225 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[_225 + 100] = 0
        mem[_225 + 132] = 128
        mem[_225 + 228] = mem[_225]
        idx = 0
        s = _225 + 32
        t = _225 + 260
        while idx < mem[_225]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_225 + 164] = this.address
        mem[_225 + 196] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _225 + (32 * mem[_225]) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall 0x0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _468 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _472 = mem[_468]
        require mem[_468] == mem[_468]
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = 0
        mem[mem[64] + 132] = this.address
        mem[mem[64] + 164] = block.timestamp
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, _472, 0, 0, address(this.address), block.timestamp
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _508 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_508] == mem[_508]
        require mem[_508 + 32] == mem[_508 + 32]
        require mem[_508 + 64] == mem[_508 + 64]
        if stor4[0] >= 100000:
            stor3[0] = 1
            if stor4[0] > -mem[_508 + 64] - 1:
                revert with 'NH{q', 17
            stor4[0] += mem[_508 + 64]
        else:
            mem[0] = 0
            mem[32] = 3
            stor3[0] = 0
            mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 36] = 0
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _564 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _570 = mem[_564]
            require mem[_564] == mem[_564 + 12 len 20]
            mem[mem[64] + 4] = this.address
            staticcall address(_570).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _588 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_588] == mem[_588]
            stor4[0] = mem[_588]
}



}
