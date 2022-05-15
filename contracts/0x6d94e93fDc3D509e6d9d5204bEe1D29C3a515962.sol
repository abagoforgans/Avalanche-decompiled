contract main {




// =====================  Runtime code  =====================


#
#  - payoutForLP(address arg1)
#
address stor0;
address stor1;
address stor2;
address stor4;
address stor5;
address stor6;
mapping of address stor7;
mapping of address stor8;

function _fallback() payable {
    revert
}

function payoutForERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 10 * 10^6:
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require arg1
        mem[(6 * ceil32(return_data.size)) + 100] = stor6
        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 96] = 2
        mem[(7 * ceil32(return_data.size)) + 128] = stor1
        mem[(7 * ceil32(return_data.size)) + 160] = arg1
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 228] = 0
        mem[(7 * ceil32(return_data.size)) + 260] = 160
        mem[(7 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 292] = this.address
        mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _56 = mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
        _59 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(8 * ceil32(return_data.size)) + 192] = _59
        require _56 + (32 * _59) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _56 + 224
        t = (8 * ceil32(return_data.size)) + 224
        while idx < _59:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _131 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _133 = mem[_131]
        require mem[_131] == mem[_131]
        mem[0] = arg1
        mem[32] = 8
        mem[mem[64] + 4] = stor8[address(arg1)]
        mem[mem[64] + 36] = _133
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor8[address(arg1)], _133
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _140 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_140] == bool(mem[_140])
        require ext_code.size(stor8[address(arg1)])
        staticcall stor8[address(arg1)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _149 = mem[_147]
        require mem[_147] == mem[_147]
        require ext_code.size(stor8[address(arg1)])
        staticcall stor8[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _154 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _156 = mem[_154]
        require mem[_154] == mem[_154]
        require mem[_154 + 32] == mem[_154 + 32]
        require mem[_154 + 64] == mem[_154 + 92 len 4]
        require mem[_154 + 96] == mem[_154 + 124 len 4]
        mem[mem[64] + 4] = _133
        mem[mem[64] + 36] = _149
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(stor8[address(arg1)])
        call stor8[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _133, _149, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _173 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_173] == mem[_173]
        require ext_code.size(stor8[address(arg1)])
        staticcall stor8[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_180] == mem[_180]
        require mem[_180 + 32] == mem[_180 + 32]
        require mem[_180 + 64] == mem[_180 + 92 len 4]
        require mem[_180 + 96] == mem[_180 + 124 len 4]
        if mem[_180] < _156:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_180] - _156
    else:
        mem[(4 * ceil32(return_data.size)) + 100] = stor5
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 132] = 1
        require ext_code.size(stor5)
        call stor5.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require arg1
        mem[(7 * ceil32(return_data.size)) + 100] = stor6
        mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 96] = 2
        mem[(8 * ceil32(return_data.size)) + 128] = stor1
        mem[(8 * ceil32(return_data.size)) + 160] = arg1
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 228] = 0
        mem[(8 * ceil32(return_data.size)) + 260] = 160
        mem[(8 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (8 * ceil32(return_data.size)) + 128
        t = (8 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 292] = this.address
        mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _132 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
        _134 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = _134
        require _132 + (32 * _134) + 32 <= return_data.size
        idx = 0
        s = (8 * ceil32(return_data.size)) + _132 + 224
        t = (10 * ceil32(return_data.size)) + 224
        while idx < _134:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _199 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _200 = mem[_199]
        require mem[_199] == mem[_199]
        mem[0] = arg1
        mem[32] = 8
        mem[mem[64] + 4] = stor8[address(arg1)]
        mem[mem[64] + 36] = _200
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor8[address(arg1)], _200
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_204] == bool(mem[_204])
        require ext_code.size(stor8[address(arg1)])
        staticcall stor8[address(arg1)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _208 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _209 = mem[_208]
        require mem[_208] == mem[_208]
        require ext_code.size(stor8[address(arg1)])
        staticcall stor8[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _212 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _213 = mem[_212]
        require mem[_212] == mem[_212]
        require mem[_212 + 32] == mem[_212 + 32]
        require mem[_212 + 64] == mem[_212 + 92 len 4]
        require mem[_212 + 96] == mem[_212 + 124 len 4]
        mem[mem[64] + 4] = _200
        mem[mem[64] + 36] = _209
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(stor8[address(arg1)])
        call stor8[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _200, _209, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _219 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_219] == mem[_219]
        require ext_code.size(stor8[address(arg1)])
        staticcall stor8[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_223] == mem[_223]
        require mem[_223 + 32] == mem[_223 + 32]
        require mem[_223 + 64] == mem[_223 + 92 len 4]
        require mem[_223 + 96] == mem[_223 + 124 len 4]
        if mem[_223] < _213:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_223] - _213
    return memory
      from mem[64]
       len 32
}

function mintWithERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 10 * 10^6:
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require arg1
        mem[(6 * ceil32(return_data.size)) + 100] = stor6
        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 96] = 2
        mem[(7 * ceil32(return_data.size)) + 128] = stor1
        mem[(7 * ceil32(return_data.size)) + 160] = arg1
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 228] = 0
        mem[(7 * ceil32(return_data.size)) + 260] = 160
        mem[(7 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 292] = this.address
        mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _55 = mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
        _56 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(8 * ceil32(return_data.size)) + 192] = _56
        require _55 + (32 * _56) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _55 + 224
        t = (8 * ceil32(return_data.size)) + 224
        while idx < _56:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _130 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _132 = mem[_130]
        require mem[_130] == mem[_130]
        mem[0] = arg1
        mem[32] = 8
        mem[mem[64] + 4] = stor8[address(arg1)]
        mem[mem[64] + 36] = _132
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor8[address(arg1)], _132
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _139 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_139] == bool(mem[_139])
        require ext_code.size(stor8[address(arg1)])
        staticcall stor8[address(arg1)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _148 = mem[_146]
        require mem[_146] == mem[_146]
        require ext_code.size(stor8[address(arg1)])
        staticcall stor8[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _153 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _155 = mem[_153]
        require mem[_153] == mem[_153]
        require mem[_153 + 32] == mem[_153 + 32]
        require mem[_153 + 64] == mem[_153 + 92 len 4]
        require mem[_153 + 96] == mem[_153 + 124 len 4]
        mem[mem[64] + 4] = _132
        mem[mem[64] + 36] = _148
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(stor8[address(arg1)])
        call stor8[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _132, _148, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _172 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_172] == mem[_172]
        require ext_code.size(stor8[address(arg1)])
        staticcall stor8[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_179] == mem[_179]
        require mem[_179 + 32] == mem[_179 + 32]
        require mem[_179 + 64] == mem[_179 + 92 len 4]
        require mem[_179 + 96] == mem[_179 + 124 len 4]
        if mem[_179] < _155:
            revert with 'NH{q', 17
        if mem[_179] - _155 < arg2:
            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _198 = mem[_196]
        require mem[_196] == mem[_196]
        if mem[_196] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _209 = mem[_205]
            require mem[_205] == mem[_205]
            if mem[_205] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _209
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _209
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_220] == bool(mem[_220])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _198
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _198
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _208 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_208] == bool(mem[_208])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _224 = mem[_221]
            require mem[_221] == mem[_221]
            if mem[_221] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _224
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _224
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_232] == bool(mem[_232])
    else:
        mem[(4 * ceil32(return_data.size)) + 100] = stor5
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 132] = 1
        require ext_code.size(stor5)
        call stor5.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require arg1
        mem[(7 * ceil32(return_data.size)) + 100] = stor6
        mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 96] = 2
        mem[(8 * ceil32(return_data.size)) + 128] = stor1
        mem[(8 * ceil32(return_data.size)) + 160] = arg1
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 228] = 0
        mem[(8 * ceil32(return_data.size)) + 260] = 160
        mem[(8 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (8 * ceil32(return_data.size)) + 128
        t = (8 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 292] = this.address
        mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _131 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
        _133 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = _133
        require _131 + (32 * _133) + 32 <= return_data.size
        idx = 0
        s = (8 * ceil32(return_data.size)) + _131 + 224
        t = (10 * ceil32(return_data.size)) + 224
        while idx < _133:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _207 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _210 = mem[_207]
        require mem[_207] == mem[_207]
        mem[0] = arg1
        mem[32] = 8
        mem[mem[64] + 4] = stor8[address(arg1)]
        mem[mem[64] + 36] = _210
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor8[address(arg1)], _210
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _219 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_219] == bool(mem[_219])
        require ext_code.size(stor8[address(arg1)])
        staticcall stor8[address(arg1)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _228 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _229 = mem[_228]
        require mem[_228] == mem[_228]
        require ext_code.size(stor8[address(arg1)])
        staticcall stor8[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _235 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _236 = mem[_235]
        require mem[_235] == mem[_235]
        require mem[_235 + 32] == mem[_235 + 32]
        require mem[_235 + 64] == mem[_235 + 92 len 4]
        require mem[_235 + 96] == mem[_235 + 124 len 4]
        mem[mem[64] + 4] = _210
        mem[mem[64] + 36] = _229
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(stor8[address(arg1)])
        call stor8[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _210, _229, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_242] == mem[_242]
        require ext_code.size(stor8[address(arg1)])
        staticcall stor8[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_246] == mem[_246]
        require mem[_246 + 32] == mem[_246 + 32]
        require mem[_246 + 64] == mem[_246 + 92 len 4]
        require mem[_246 + 96] == mem[_246 + 124 len 4]
        if mem[_246] < _236:
            revert with 'NH{q', 17
        if mem[_246] - _236 < arg2:
            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _255 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _256 = mem[_255]
        require mem[_255] == mem[_255]
        if mem[_255] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
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
            if mem[_260] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _263
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _263
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _269 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_269] == bool(mem[_269])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _256
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _262 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_262] == bool(mem[_262])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _270 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _272 = mem[_270]
            require mem[_270] == mem[_270]
            if mem[_270] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _272
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _272
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _275 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_275] == bool(mem[_275])
}

function mintWithLP(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 10 * 10^6:
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if arg1 != stor4:
            mem[0] = arg1
            mem[32] = 7
            require stor7[address(arg1)]
            require ext_code.size(stor7[address(arg1)])
            staticcall stor7[address(arg1)].getReserves() with:
                    gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor7[address(arg1)])
            staticcall stor7[address(arg1)].token0() with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor7[address(arg1)])
            staticcall stor7[address(arg1)].token1() with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(ext_call.return_data[0]) != arg1:
                if ext_call.return_data[12 len 20] != arg1:
                    revert with 0, 'bad LP token'
                if address(ext_call.return_data[0]) != stor1:
                    revert with 0, 'bad LP token'
                if Mask(112, 0, ext_call.return_data[0]) > -(ext_call.return_data[0] / 2) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[0]) > -((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                    revert with 'NH{q', 18
                require arg1
                mem[(10 * ceil32(return_data.size)) + 100] = stor6
                mem[(10 * ceil32(return_data.size)) + 132] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(11 * ceil32(return_data.size)) + 96] = 2
                mem[(11 * ceil32(return_data.size)) + 128] = stor1
                mem[(11 * ceil32(return_data.size)) + 160] = arg1
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(11 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(11 * ceil32(return_data.size)) + 196] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
                mem[(11 * ceil32(return_data.size)) + 228] = 0
                mem[(11 * ceil32(return_data.size)) + 260] = 160
                mem[(11 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (11 * ceil32(return_data.size)) + 128
                t = (11 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(11 * ceil32(return_data.size)) + 292] = this.address
                mem[(11 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(11 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (12 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _295 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32
                require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
                require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                _303 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
                if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193
                mem[(12 * ceil32(return_data.size)) + 192] = _303
                require _295 + (32 * _303) + 32 <= return_data.size
                idx = 0
                s = (11 * ceil32(return_data.size)) + _295 + 224
                t = (12 * ceil32(return_data.size)) + 224
                while idx < _303:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _538 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _545 = mem[_538]
                require mem[_538] == mem[_538]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _571 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _578 = mem[_571]
                require mem[_571] == mem[_571]
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _545
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _545
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _602 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_602] == bool(mem[_602])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _578
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _578
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _636 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_636] == bool(mem[_636])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _578
                mem[mem[64] + 100] = _545
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _578, _545, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _679 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_679] == mem[_679]
                require mem[_679 + 32] == mem[_679 + 32]
                require mem[_679 + 64] == mem[_679 + 64]
                mem[0] = arg1
                mem[32] = 7
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor7[address(arg1)])
                staticcall stor7[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _729 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _737 = mem[_729]
                require mem[_729] == mem[_729]
                mem[0] = stor7[address(arg1)]
                mem[32] = 8
                mem[mem[64] + 4] = stor8[stor7[address(arg1)]]
                mem[mem[64] + 36] = _737
                require ext_code.size(stor7[address(arg1)])
                call stor7[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8[stor7[address(arg1)]], _737
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _767 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_767] == bool(mem[_767])
                require ext_code.size(stor8[stor7[address(arg1)]])
                staticcall stor8[stor7[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _797 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _804 = mem[_797]
                require mem[_797] == mem[_797]
                require ext_code.size(stor8[stor7[address(arg1)]])
                staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _828 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _835 = mem[_828]
                require mem[_828] == mem[_828]
                require mem[_828 + 32] == mem[_828 + 32]
                require mem[_828 + 64] == mem[_828 + 92 len 4]
                require mem[_828 + 96] == mem[_828 + 124 len 4]
                mem[mem[64] + 4] = _737
                mem[mem[64] + 36] = _804
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor8[stor7[address(arg1)]])
                call stor8[stor7[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _737, _804, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _887 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_887] == mem[_887]
                require ext_code.size(stor8[stor7[address(arg1)]])
                staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _916 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_916] == mem[_916]
                require mem[_916 + 32] == mem[_916 + 32]
                require mem[_916 + 64] == mem[_916 + 92 len 4]
                require mem[_916 + 96] == mem[_916 + 124 len 4]
                if mem[_916] < _835:
                    revert with 'NH{q', 17
                if mem[_916] - _835 < arg2:
                    revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _978 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _984 = mem[_978]
                require mem[_978] == mem[_978]
                if mem[_978] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1014 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1034 = mem[_1014]
                    require mem[_1014] == mem[_1014]
                    if mem[_1014] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1034
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1034
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1079 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1079] == bool(mem[_1079])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _984
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _984
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1028 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1028] == bool(mem[_1028])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1080 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1093 = mem[_1080]
                    require mem[_1080] == mem[_1080]
                    if mem[_1080] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1093
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1093
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1125 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1125] == bool(mem[_1125])
            else:
                if ext_call.return_data[12 len 20] == stor1:
                    if Mask(112, 0, ext_call.return_data[32]) > -(ext_call.return_data[0] / 2) - 1:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if not 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2):
                        revert with 'NH{q', 18
                    if Mask(112, 0, ext_call.return_data[32]) > -((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) - 1:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > (-1 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if not 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)):
                        revert with 'NH{q', 18
                    require arg1
                    mem[(10 * ceil32(return_data.size)) + 100] = stor6
                    mem[(10 * ceil32(return_data.size)) + 132] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))
                    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(11 * ceil32(return_data.size)) + 96] = 2
                    mem[(11 * ceil32(return_data.size)) + 128] = stor1
                    mem[(11 * ceil32(return_data.size)) + 160] = arg1
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[(11 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(11 * ceil32(return_data.size)) + 196] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))
                    mem[(11 * ceil32(return_data.size)) + 228] = 0
                    mem[(11 * ceil32(return_data.size)) + 260] = 160
                    mem[(11 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (11 * ceil32(return_data.size)) + 128
                    t = (11 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(11 * ceil32(return_data.size)) + 292] = this.address
                    mem[(11 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(11 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (12 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _297 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32
                    require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
                    require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                    _305 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
                    if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193
                    mem[(12 * ceil32(return_data.size)) + 192] = _305
                    require _297 + (32 * _305) + 32 <= return_data.size
                    idx = 0
                    s = (11 * ceil32(return_data.size)) + _297 + 224
                    t = (12 * ceil32(return_data.size)) + 224
                    while idx < _305:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _547 = mem[_540]
                    require mem[_540] == mem[_540]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _573 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _580 = mem[_573]
                    require mem[_573] == mem[_573]
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _547
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _547
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _604 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_604] == bool(mem[_604])
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _580
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _580
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == bool(mem[_638])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _580
                    mem[mem[64] + 100] = _547
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor1, address(arg1), _580, _547, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _681 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_681] == mem[_681]
                    require mem[_681 + 32] == mem[_681 + 32]
                    require mem[_681 + 64] == mem[_681 + 64]
                    mem[0] = arg1
                    mem[32] = 7
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor7[address(arg1)])
                    staticcall stor7[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _731 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _739 = mem[_731]
                    require mem[_731] == mem[_731]
                    mem[0] = stor7[address(arg1)]
                    mem[32] = 8
                    mem[mem[64] + 4] = stor8[stor7[address(arg1)]]
                    mem[mem[64] + 36] = _739
                    require ext_code.size(stor7[address(arg1)])
                    call stor7[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8[stor7[address(arg1)]], _739
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _769 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_769] == bool(mem[_769])
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    staticcall stor8[stor7[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _799 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _806 = mem[_799]
                    require mem[_799] == mem[_799]
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _830 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _837 = mem[_830]
                    require mem[_830] == mem[_830]
                    require mem[_830 + 32] == mem[_830 + 32]
                    require mem[_830 + 64] == mem[_830 + 92 len 4]
                    require mem[_830 + 96] == mem[_830 + 124 len 4]
                    mem[mem[64] + 4] = _739
                    mem[mem[64] + 36] = _806
                    mem[mem[64] + 68] = msg.sender
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    call stor8[stor7[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _739, _806, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_889] == mem[_889]
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _918 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_918] == mem[_918]
                    require mem[_918 + 32] == mem[_918 + 32]
                    require mem[_918 + 64] == mem[_918 + 92 len 4]
                    require mem[_918 + 96] == mem[_918 + 124 len 4]
                    if mem[_918] < _837:
                        revert with 'NH{q', 17
                    if mem[_918] - _837 < arg2:
                        revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _980 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _986 = mem[_980]
                    require mem[_980] == mem[_980]
                    if mem[_980] <= 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1018 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1036 = mem[_1018]
                        require mem[_1018] == mem[_1018]
                        if mem[_1018] > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1036
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1036
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1083 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1083] == bool(mem[_1083])
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _986
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _986
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1030 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1030] == bool(mem[_1030])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1084 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1097 = mem[_1084]
                        require mem[_1084] == mem[_1084]
                        if mem[_1084] > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1097
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1097
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1127 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1127] == bool(mem[_1127])
                else:
                    if ext_call.return_data[12 len 20] != arg1:
                        revert with 0, 'bad LP token'
                    if address(ext_call.return_data[0]) != stor1:
                        revert with 0, 'bad LP token'
                    if Mask(112, 0, ext_call.return_data[0]) > -(ext_call.return_data[0] / 2) - 1:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if not 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                        revert with 'NH{q', 18
                    if Mask(112, 0, ext_call.return_data[0]) > -((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) - 1:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if not 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                        revert with 'NH{q', 18
                    require arg1
                    mem[(10 * ceil32(return_data.size)) + 100] = stor6
                    mem[(10 * ceil32(return_data.size)) + 132] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
                    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(11 * ceil32(return_data.size)) + 96] = 2
                    mem[(11 * ceil32(return_data.size)) + 128] = stor1
                    mem[(11 * ceil32(return_data.size)) + 160] = arg1
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[(11 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(11 * ceil32(return_data.size)) + 196] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
                    mem[(11 * ceil32(return_data.size)) + 228] = 0
                    mem[(11 * ceil32(return_data.size)) + 260] = 160
                    mem[(11 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (11 * ceil32(return_data.size)) + 128
                    t = (11 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(11 * ceil32(return_data.size)) + 292] = this.address
                    mem[(11 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(11 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(11 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (12 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _296 = mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32
                    require mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
                    require (11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (11 * ceil32(return_data.size)) + return_data.size + 192
                    _304 = mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
                    if mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (12 * ceil32(return_data.size)) + floor32(mem[(11 * ceil32(return_data.size)) + mem[(11 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193
                    mem[(12 * ceil32(return_data.size)) + 192] = _304
                    require _296 + (32 * _304) + 32 <= return_data.size
                    idx = 0
                    s = (11 * ceil32(return_data.size)) + _296 + 224
                    t = (12 * ceil32(return_data.size)) + 224
                    while idx < _304:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _539 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _546 = mem[_539]
                    require mem[_539] == mem[_539]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _572 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _579 = mem[_572]
                    require mem[_572] == mem[_572]
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _546
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _546
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _603 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_603] == bool(mem[_603])
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _579
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _579
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _637 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_637] == bool(mem[_637])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _579
                    mem[mem[64] + 100] = _546
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor1, address(arg1), _579, _546, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _680 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_680] == mem[_680]
                    require mem[_680 + 32] == mem[_680 + 32]
                    require mem[_680 + 64] == mem[_680 + 64]
                    mem[0] = arg1
                    mem[32] = 7
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor7[address(arg1)])
                    staticcall stor7[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _730 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _738 = mem[_730]
                    require mem[_730] == mem[_730]
                    mem[0] = stor7[address(arg1)]
                    mem[32] = 8
                    mem[mem[64] + 4] = stor8[stor7[address(arg1)]]
                    mem[mem[64] + 36] = _738
                    require ext_code.size(stor7[address(arg1)])
                    call stor7[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8[stor7[address(arg1)]], _738
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _768 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_768] == bool(mem[_768])
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    staticcall stor8[stor7[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _798 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _805 = mem[_798]
                    require mem[_798] == mem[_798]
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _829 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _836 = mem[_829]
                    require mem[_829] == mem[_829]
                    require mem[_829 + 32] == mem[_829 + 32]
                    require mem[_829 + 64] == mem[_829 + 92 len 4]
                    require mem[_829 + 96] == mem[_829 + 124 len 4]
                    mem[mem[64] + 4] = _738
                    mem[mem[64] + 36] = _805
                    mem[mem[64] + 68] = msg.sender
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    call stor8[stor7[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _738, _805, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _888 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_888] == mem[_888]
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _917 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_917] == mem[_917]
                    require mem[_917 + 32] == mem[_917 + 32]
                    require mem[_917 + 64] == mem[_917 + 92 len 4]
                    require mem[_917 + 96] == mem[_917 + 124 len 4]
                    if mem[_917] < _836:
                        revert with 'NH{q', 17
                    if mem[_917] - _836 < arg2:
                        revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _979 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _985 = mem[_979]
                    require mem[_979] == mem[_979]
                    if mem[_979] <= 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1016 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1035 = mem[_1016]
                        require mem[_1016] == mem[_1016]
                        if mem[_1016] > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1035
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1035
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1081 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1081] == bool(mem[_1081])
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _985
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _985
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1029 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1029] == bool(mem[_1029])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1082 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1095 = mem[_1082]
                        require mem[_1082] == mem[_1082]
                        if mem[_1082] > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1095
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1095
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1126 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1126] == bool(mem[_1126])
        else:
            require arg1
            mem[(6 * ceil32(return_data.size)) + 100] = stor6
            mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] / 2
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, ext_call.return_data[0] / 2
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = stor1
            mem[(7 * ceil32(return_data.size)) + 160] = arg1
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
            mem[(7 * ceil32(return_data.size)) + 228] = 0
            mem[(7 * ceil32(return_data.size)) + 260] = 160
            mem[(7 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (7 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 292] = this.address
            mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _93 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _96 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = _96
            require _93 + (32 * _96) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _93 + 224
            t = (8 * ceil32(return_data.size)) + 224
            while idx < _96:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require stor0
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = ext_call.return_data[0] / 2
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, ext_call.return_data[0] / 2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _310 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_310] == bool(mem[_310])
            _319 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_319]:
                revert with 'NH{q', 50
            mem[_319 + 32] = stor1
            if 1 >= mem[_319]:
                revert with 'NH{q', 50
            mem[_319 + 64] = stor0
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[_319 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_319 + 100] = ext_call.return_data[0] / 2
            mem[_319 + 132] = 0
            mem[_319 + 164] = 160
            mem[_319 + 260] = mem[_319]
            idx = 0
            s = _319 + 32
            t = _319 + 292
            while idx < mem[_319]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_319 + 196] = this.address
            mem[_319 + 228] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _319 + (32 * mem[_319]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _537 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _544 = mem[_537]
            require mem[_537] <= test266151307()
            require _537 + mem[_537] + 31 < _537 + return_data.size
            _552 = mem[_537 + mem[_537]]
            if mem[_537 + mem[_537]] > test266151307():
                revert with 'NH{q', 65
            if _537 + ceil32(return_data.size) + floor32(mem[_537 + mem[_537]]) + 1 > test266151307() or floor32(mem[_537 + mem[_537]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _537 + ceil32(return_data.size) + floor32(mem[_537 + mem[_537]]) + 1
            mem[_537 + ceil32(return_data.size)] = _552
            require _544 + (32 * _552) + 32 <= return_data.size
            idx = 0
            s = _537 + _544 + 32
            t = _537 + ceil32(return_data.size) + 32
            while idx < _552:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _782 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _796 = mem[_782]
            require mem[_782] == mem[_782]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _819 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _827 = mem[_819]
            require mem[_819] == mem[_819]
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = _796
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, _796
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _858 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_858] == bool(mem[_858])
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = _827
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, _827
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _879 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_879] == bool(mem[_879])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _827
            mem[mem[64] + 100] = _796
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor0, address(arg1), _827, _796, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _951 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_951] == mem[_951]
            require mem[_951 + 32] == mem[_951 + 32]
            require mem[_951 + 64] == mem[_951 + 64]
            mem[0] = arg1
            mem[32] = 7
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor7[address(arg1)])
            staticcall stor7[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1020 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1037 = mem[_1020]
            require mem[_1020] == mem[_1020]
            mem[0] = stor7[address(arg1)]
            mem[32] = 8
            mem[mem[64] + 4] = stor8[stor7[address(arg1)]]
            mem[mem[64] + 36] = _1037
            require ext_code.size(stor7[address(arg1)])
            call stor7[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor8[stor7[address(arg1)]], _1037
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1078 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1078] == bool(mem[_1078])
            require ext_code.size(stor8[stor7[address(arg1)]])
            staticcall stor8[stor7[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1112 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1116 = mem[_1112]
            require mem[_1112] == mem[_1112]
            require ext_code.size(stor8[stor7[address(arg1)]])
            staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1141 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1142 = mem[_1141]
            require mem[_1141] == mem[_1141]
            require mem[_1141 + 32] == mem[_1141 + 32]
            require mem[_1141 + 64] == mem[_1141 + 92 len 4]
            require mem[_1141 + 96] == mem[_1141 + 124 len 4]
            mem[mem[64] + 4] = _1037
            mem[mem[64] + 36] = _1116
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor8[stor7[address(arg1)]])
            call stor8[stor7[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _1037, _1116, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1156] == mem[_1156]
            require ext_code.size(stor8[stor7[address(arg1)]])
            staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_1161] == mem[_1161]
            require mem[_1161 + 32] == mem[_1161 + 32]
            require mem[_1161 + 64] == mem[_1161 + 92 len 4]
            require mem[_1161 + 96] == mem[_1161 + 124 len 4]
            if mem[_1161] < _1142:
                revert with 'NH{q', 17
            if mem[_1161] - _1142 < arg2:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1174 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1175 = mem[_1174]
            require mem[_1174] == mem[_1174]
            if mem[_1174] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1183 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1187 = mem[_1183]
                require mem[_1183] == mem[_1183]
                if mem[_1183] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1187
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1187
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1198] == bool(mem[_1198])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1175
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1175
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1186] == bool(mem[_1186])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1199 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1202 = mem[_1199]
                require mem[_1199] == mem[_1199]
                if mem[_1199] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1202
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1202
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1210 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1210] == bool(mem[_1210])
    else:
        mem[(4 * ceil32(return_data.size)) + 100] = stor5
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 132] = 1
        require ext_code.size(stor5)
        call stor5.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if arg1 != stor4:
            mem[0] = arg1
            mem[32] = 7
            require stor7[address(arg1)]
            require ext_code.size(stor7[address(arg1)])
            staticcall stor7[address(arg1)].getReserves() with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(stor7[address(arg1)])
            staticcall stor7[address(arg1)].token0() with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor7[address(arg1)])
            staticcall stor7[address(arg1)].token1() with:
                    gas gas_remaining wei
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(ext_call.return_data[0]) != arg1:
                if ext_call.return_data[12 len 20] != arg1:
                    revert with 0, 'bad LP token'
                if address(ext_call.return_data[0]) != stor1:
                    revert with 0, 'bad LP token'
                if Mask(112, 0, ext_call.return_data[0]) > -(ext_call.return_data[0] / 2) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[0]) > -((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                    revert with 'NH{q', 18
                require arg1
                mem[(11 * ceil32(return_data.size)) + 100] = stor6
                mem[(11 * ceil32(return_data.size)) + 132] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(12 * ceil32(return_data.size)) + 96] = 2
                mem[(12 * ceil32(return_data.size)) + 128] = stor1
                mem[(12 * ceil32(return_data.size)) + 160] = arg1
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(12 * ceil32(return_data.size)) + 196] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
                mem[(12 * ceil32(return_data.size)) + 228] = 0
                mem[(12 * ceil32(return_data.size)) + 260] = 160
                mem[(12 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (12 * ceil32(return_data.size)) + 128
                t = (12 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _298 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _306 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _306
                require _298 + (32 * _306) + 32 <= return_data.size
                idx = 0
                s = (12 * ceil32(return_data.size)) + _298 + 224
                t = (13 * ceil32(return_data.size)) + 224
                while idx < _306:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _541 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _548 = mem[_541]
                require mem[_541] == mem[_541]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _574 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _581 = mem[_574]
                require mem[_574] == mem[_574]
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _548
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _548
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _605 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_605] == bool(mem[_605])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _581
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _581
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _639 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_639] == bool(mem[_639])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _581
                mem[mem[64] + 100] = _548
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _581, _548, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _682 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_682] == mem[_682]
                require mem[_682 + 32] == mem[_682 + 32]
                require mem[_682 + 64] == mem[_682 + 64]
                mem[0] = arg1
                mem[32] = 7
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor7[address(arg1)])
                staticcall stor7[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _732 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _740 = mem[_732]
                require mem[_732] == mem[_732]
                mem[0] = stor7[address(arg1)]
                mem[32] = 8
                mem[mem[64] + 4] = stor8[stor7[address(arg1)]]
                mem[mem[64] + 36] = _740
                require ext_code.size(stor7[address(arg1)])
                call stor7[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor8[stor7[address(arg1)]], _740
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _770 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_770] == bool(mem[_770])
                require ext_code.size(stor8[stor7[address(arg1)]])
                staticcall stor8[stor7[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _800 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _807 = mem[_800]
                require mem[_800] == mem[_800]
                require ext_code.size(stor8[stor7[address(arg1)]])
                staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _831 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _838 = mem[_831]
                require mem[_831] == mem[_831]
                require mem[_831 + 32] == mem[_831 + 32]
                require mem[_831 + 64] == mem[_831 + 92 len 4]
                require mem[_831 + 96] == mem[_831 + 124 len 4]
                mem[mem[64] + 4] = _740
                mem[mem[64] + 36] = _807
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor8[stor7[address(arg1)]])
                call stor8[stor7[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _740, _807, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _890 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_890] == mem[_890]
                require ext_code.size(stor8[stor7[address(arg1)]])
                staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _919 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_919] == mem[_919]
                require mem[_919 + 32] == mem[_919 + 32]
                require mem[_919 + 64] == mem[_919 + 92 len 4]
                require mem[_919 + 96] == mem[_919 + 124 len 4]
                if mem[_919] < _838:
                    revert with 'NH{q', 17
                if mem[_919] - _838 < arg2:
                    revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _981 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _988 = mem[_981]
                require mem[_981] == mem[_981]
                if mem[_981] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1021 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1038 = mem[_1021]
                    require mem[_1021] == mem[_1021]
                    if mem[_1021] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1038
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1038
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1085 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1085] == bool(mem[_1085])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _988
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _988
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1031 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1031] == bool(mem[_1031])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1086 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1099 = mem[_1086]
                    require mem[_1086] == mem[_1086]
                    if mem[_1086] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1099
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1099
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1128 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1128] == bool(mem[_1128])
            else:
                if ext_call.return_data[12 len 20] == stor1:
                    if Mask(112, 0, ext_call.return_data[32]) > -(ext_call.return_data[0] / 2) - 1:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if not 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2):
                        revert with 'NH{q', 18
                    if Mask(112, 0, ext_call.return_data[32]) > -((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) - 1:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > (-1 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if not 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)):
                        revert with 'NH{q', 18
                    require arg1
                    mem[(11 * ceil32(return_data.size)) + 100] = stor6
                    mem[(11 * ceil32(return_data.size)) + 132] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))
                    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(12 * ceil32(return_data.size)) + 96] = 2
                    mem[(12 * ceil32(return_data.size)) + 128] = stor1
                    mem[(12 * ceil32(return_data.size)) + 160] = arg1
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(12 * ceil32(return_data.size)) + 196] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))
                    mem[(12 * ceil32(return_data.size)) + 228] = 0
                    mem[(12 * ceil32(return_data.size)) + 260] = 160
                    mem[(12 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (12 * ceil32(return_data.size)) + 128
                    t = (12 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(12 * ceil32(return_data.size)) + 292] = this.address
                    mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (13 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _300 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32
                    require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
                    require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                    _308 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
                    if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193
                    mem[(13 * ceil32(return_data.size)) + 192] = _308
                    require _300 + (32 * _308) + 32 <= return_data.size
                    idx = 0
                    s = (12 * ceil32(return_data.size)) + _300 + 224
                    t = (13 * ceil32(return_data.size)) + 224
                    while idx < _308:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _550 = mem[_543]
                    require mem[_543] == mem[_543]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _576 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _583 = mem[_576]
                    require mem[_576] == mem[_576]
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _550
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _550
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _607 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_607] == bool(mem[_607])
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _583
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _583
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _641 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_641] == bool(mem[_641])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _583
                    mem[mem[64] + 100] = _550
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor1, address(arg1), _583, _550, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _684 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_684] == mem[_684]
                    require mem[_684 + 32] == mem[_684 + 32]
                    require mem[_684 + 64] == mem[_684 + 64]
                    mem[0] = arg1
                    mem[32] = 7
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor7[address(arg1)])
                    staticcall stor7[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _734 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _742 = mem[_734]
                    require mem[_734] == mem[_734]
                    mem[0] = stor7[address(arg1)]
                    mem[32] = 8
                    mem[mem[64] + 4] = stor8[stor7[address(arg1)]]
                    mem[mem[64] + 36] = _742
                    require ext_code.size(stor7[address(arg1)])
                    call stor7[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8[stor7[address(arg1)]], _742
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _772 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_772] == bool(mem[_772])
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    staticcall stor8[stor7[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _802 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _809 = mem[_802]
                    require mem[_802] == mem[_802]
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _833 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _840 = mem[_833]
                    require mem[_833] == mem[_833]
                    require mem[_833 + 32] == mem[_833 + 32]
                    require mem[_833 + 64] == mem[_833 + 92 len 4]
                    require mem[_833 + 96] == mem[_833 + 124 len 4]
                    mem[mem[64] + 4] = _742
                    mem[mem[64] + 36] = _809
                    mem[mem[64] + 68] = msg.sender
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    call stor8[stor7[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _742, _809, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _892 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_892] == mem[_892]
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _921 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_921] == mem[_921]
                    require mem[_921 + 32] == mem[_921 + 32]
                    require mem[_921 + 64] == mem[_921 + 92 len 4]
                    require mem[_921 + 96] == mem[_921 + 124 len 4]
                    if mem[_921] < _840:
                        revert with 'NH{q', 17
                    if mem[_921] - _840 < arg2:
                        revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _983 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _990 = mem[_983]
                    require mem[_983] == mem[_983]
                    if mem[_983] <= 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1025 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1040 = mem[_1025]
                        require mem[_1025] == mem[_1025]
                        if mem[_1025] > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1040
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1040
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1089 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1089] == bool(mem[_1089])
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _990
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _990
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1033 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1033] == bool(mem[_1033])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1090 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1103 = mem[_1090]
                        require mem[_1090] == mem[_1090]
                        if mem[_1090] > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1103
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1103
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1130 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1130] == bool(mem[_1130])
                else:
                    if ext_call.return_data[12 len 20] != arg1:
                        revert with 0, 'bad LP token'
                    if address(ext_call.return_data[0]) != stor1:
                        revert with 0, 'bad LP token'
                    if Mask(112, 0, ext_call.return_data[0]) > -(ext_call.return_data[0] / 2) - 1:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if not 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                        revert with 'NH{q', 18
                    if Mask(112, 0, ext_call.return_data[0]) > -((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) - 1:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if not 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                        revert with 'NH{q', 18
                    require arg1
                    mem[(11 * ceil32(return_data.size)) + 100] = stor6
                    mem[(11 * ceil32(return_data.size)) + 132] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
                    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(12 * ceil32(return_data.size)) + 96] = 2
                    mem[(12 * ceil32(return_data.size)) + 128] = stor1
                    mem[(12 * ceil32(return_data.size)) + 160] = arg1
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(12 * ceil32(return_data.size)) + 196] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
                    mem[(12 * ceil32(return_data.size)) + 228] = 0
                    mem[(12 * ceil32(return_data.size)) + 260] = 160
                    mem[(12 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (12 * ceil32(return_data.size)) + 128
                    t = (12 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(12 * ceil32(return_data.size)) + 292] = this.address
                    mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (13 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _299 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32
                    require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
                    require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                    _307 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
                    if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193
                    mem[(13 * ceil32(return_data.size)) + 192] = _307
                    require _299 + (32 * _307) + 32 <= return_data.size
                    idx = 0
                    s = (12 * ceil32(return_data.size)) + _299 + 224
                    t = (13 * ceil32(return_data.size)) + 224
                    while idx < _307:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _549 = mem[_542]
                    require mem[_542] == mem[_542]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _575 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _582 = mem[_575]
                    require mem[_575] == mem[_575]
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _549
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _549
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _606 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_606] == bool(mem[_606])
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _582
                    require ext_code.size(stor1)
                    call stor1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _582
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _640 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_640] == bool(mem[_640])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _582
                    mem[mem[64] + 100] = _549
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor1, address(arg1), _582, _549, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _683 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_683] == mem[_683]
                    require mem[_683 + 32] == mem[_683 + 32]
                    require mem[_683 + 64] == mem[_683 + 64]
                    mem[0] = arg1
                    mem[32] = 7
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor7[address(arg1)])
                    staticcall stor7[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _733 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _741 = mem[_733]
                    require mem[_733] == mem[_733]
                    mem[0] = stor7[address(arg1)]
                    mem[32] = 8
                    mem[mem[64] + 4] = stor8[stor7[address(arg1)]]
                    mem[mem[64] + 36] = _741
                    require ext_code.size(stor7[address(arg1)])
                    call stor7[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor8[stor7[address(arg1)]], _741
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == bool(mem[_771])
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    staticcall stor8[stor7[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _801 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _808 = mem[_801]
                    require mem[_801] == mem[_801]
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _832 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _839 = mem[_832]
                    require mem[_832] == mem[_832]
                    require mem[_832 + 32] == mem[_832 + 32]
                    require mem[_832 + 64] == mem[_832 + 92 len 4]
                    require mem[_832 + 96] == mem[_832 + 124 len 4]
                    mem[mem[64] + 4] = _741
                    mem[mem[64] + 36] = _808
                    mem[mem[64] + 68] = msg.sender
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    call stor8[stor7[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _741, _808, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _891 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_891] == mem[_891]
                    require ext_code.size(stor8[stor7[address(arg1)]])
                    staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _920 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_920] == mem[_920]
                    require mem[_920 + 32] == mem[_920 + 32]
                    require mem[_920 + 64] == mem[_920 + 92 len 4]
                    require mem[_920 + 96] == mem[_920 + 124 len 4]
                    if mem[_920] < _839:
                        revert with 'NH{q', 17
                    if mem[_920] - _839 < arg2:
                        revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _982 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _989 = mem[_982]
                    require mem[_982] == mem[_982]
                    if mem[_982] <= 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1023 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1039 = mem[_1023]
                        require mem[_1023] == mem[_1023]
                        if mem[_1023] > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1039
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1039
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1087 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1087] == bool(mem[_1087])
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _989
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _989
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1032 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1032] == bool(mem[_1032])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1088 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1101 = mem[_1088]
                        require mem[_1088] == mem[_1088]
                        if mem[_1088] > 0:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1101
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1101
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1129 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1129] == bool(mem[_1129])
        else:
            require arg1
            mem[(7 * ceil32(return_data.size)) + 100] = stor6
            mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] / 2
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, ext_call.return_data[0] / 2
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 96] = 2
            mem[(8 * ceil32(return_data.size)) + 128] = stor1
            mem[(8 * ceil32(return_data.size)) + 160] = arg1
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
            mem[(8 * ceil32(return_data.size)) + 228] = 0
            mem[(8 * ceil32(return_data.size)) + 260] = 160
            mem[(8 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (8 * ceil32(return_data.size)) + 128
            t = (8 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 292] = this.address
            mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _301 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
            _309 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193
            mem[(10 * ceil32(return_data.size)) + 192] = _309
            require _301 + (32 * _309) + 32 <= return_data.size
            idx = 0
            s = (8 * ceil32(return_data.size)) + _301 + 224
            t = (10 * ceil32(return_data.size)) + 224
            while idx < _309:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require stor0
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = ext_call.return_data[0] / 2
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, ext_call.return_data[0] / 2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _553 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_553] == bool(mem[_553])
            _562 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_562]:
                revert with 'NH{q', 50
            mem[_562 + 32] = stor1
            if 1 >= mem[_562]:
                revert with 'NH{q', 50
            mem[_562 + 64] = stor0
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[_562 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_562 + 100] = ext_call.return_data[0] / 2
            mem[_562 + 132] = 0
            mem[_562 + 164] = 160
            mem[_562 + 260] = mem[_562]
            idx = 0
            s = _562 + 32
            t = _562 + 292
            while idx < mem[_562]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_562 + 196] = this.address
            mem[_562 + 228] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _562 + (32 * mem[_562]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _781 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _783 = mem[_781]
            require mem[_781] <= test266151307()
            require _781 + mem[_781] + 31 < _781 + return_data.size
            _803 = mem[_781 + mem[_781]]
            if mem[_781 + mem[_781]] > test266151307():
                revert with 'NH{q', 65
            if _781 + ceil32(return_data.size) + floor32(mem[_781 + mem[_781]]) + 1 > test266151307() or floor32(mem[_781 + mem[_781]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _781 + ceil32(return_data.size) + floor32(mem[_781 + mem[_781]]) + 1
            mem[_781 + ceil32(return_data.size)] = _803
            require _783 + (32 * _803) + 32 <= return_data.size
            idx = 0
            s = _781 + _783 + 32
            t = _781 + ceil32(return_data.size) + 32
            while idx < _803:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1108 = mem[_1105]
            require mem[_1105] == mem[_1105]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1132 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1140 = mem[_1132]
            require mem[_1132] == mem[_1132]
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = _1108
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, _1108
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1147] == bool(mem[_1147])
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = _1140
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, _1140
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1153 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1153] == bool(mem[_1153])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _1140
            mem[mem[64] + 100] = _1108
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor0, address(arg1), _1140, _1108, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1167 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1167] == mem[_1167]
            require mem[_1167 + 32] == mem[_1167 + 32]
            require mem[_1167 + 64] == mem[_1167 + 64]
            mem[0] = arg1
            mem[32] = 7
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor7[address(arg1)])
            staticcall stor7[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1185 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1188 = mem[_1185]
            require mem[_1185] == mem[_1185]
            mem[0] = stor7[address(arg1)]
            mem[32] = 8
            mem[mem[64] + 4] = stor8[stor7[address(arg1)]]
            mem[mem[64] + 36] = _1188
            require ext_code.size(stor7[address(arg1)])
            call stor7[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor8[stor7[address(arg1)]], _1188
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1197 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1197] == bool(mem[_1197])
            require ext_code.size(stor8[stor7[address(arg1)]])
            staticcall stor8[stor7[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1207 = mem[_1206]
            require mem[_1206] == mem[_1206]
            require ext_code.size(stor8[stor7[address(arg1)]])
            staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1213 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1214 = mem[_1213]
            require mem[_1213] == mem[_1213]
            require mem[_1213 + 32] == mem[_1213 + 32]
            require mem[_1213 + 64] == mem[_1213 + 92 len 4]
            require mem[_1213 + 96] == mem[_1213 + 124 len 4]
            mem[mem[64] + 4] = _1188
            mem[mem[64] + 36] = _1207
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor8[stor7[address(arg1)]])
            call stor8[stor7[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _1188, _1207, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1220] == mem[_1220]
            require ext_code.size(stor8[stor7[address(arg1)]])
            staticcall stor8[stor7[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_1224] == mem[_1224]
            require mem[_1224 + 32] == mem[_1224 + 32]
            require mem[_1224 + 64] == mem[_1224 + 92 len 4]
            require mem[_1224 + 96] == mem[_1224 + 124 len 4]
            if mem[_1224] < _1214:
                revert with 'NH{q', 17
            if mem[_1224] - _1214 < arg2:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1234 = mem[_1233]
            require mem[_1233] == mem[_1233]
            if mem[_1233] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1241 = mem[_1238]
                require mem[_1238] == mem[_1238]
                if mem[_1238] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1241
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1241
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1247] == bool(mem[_1247])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1234
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1234
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1240] == bool(mem[_1240])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1248 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1250 = mem[_1248]
                require mem[_1248] == mem[_1248]
                if mem[_1248] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1250
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1250
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1253] == bool(mem[_1253])
}



}
