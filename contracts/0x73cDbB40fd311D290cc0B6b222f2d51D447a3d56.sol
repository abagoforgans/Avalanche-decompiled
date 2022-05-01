contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
address stor4;
address stor5;
mapping of address stor6;
mapping of address stor7;

function _fallback() payable {
    revert
}

function payoutForERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = stor4
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(stor4)
    call stor4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1
    mem[(7 * ceil32(return_data.size)) + 100] = stor5
    mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 96] = 2
    mem[(8 * ceil32(return_data.size)) + 128] = stor2
    mem[(8 * ceil32(return_data.size)) + 160] = arg1
    if 60 > !block.timestamp:
        revert with 0, 17
    mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 228] = 0
    mem[(8 * ceil32(return_data.size)) + 260] = 160
    mem[(8 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (8 * ceil32(return_data.size)) + 388
    t = (8 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 292] = this.address
    mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(stor5)
    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _75 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
    _76 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 > test266151307() or (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 < 0:
        revert with 0, 65
    mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
    mem[(10 * ceil32(return_data.size)) + 192] = _76
    require return_data.size >= _75 + (32 * _76) + 32
    mem[(10 * ceil32(return_data.size)) + 224 len 32 * _76] = mem[(8 * ceil32(return_data.size)) + _75 + 224 len 32 * _76]
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _116 = mem[_115]
    mem[0] = arg1
    mem[32] = 7
    mem[mem[64] + 4] = stor7[address(arg1)]
    mem[mem[64] + 36] = _116
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7[address(arg1)], _116
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _120 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_120] == bool(mem[_120])
    require ext_code.size(stor7[address(arg1)])
    staticcall stor7[address(arg1)].bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _124 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _125 = mem[_124]
    require ext_code.size(stor7[address(arg1)])
    staticcall stor7[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _129 = mem[_128]
    require mem[_128 + 64] == mem[_128 + 92 len 4]
    require mem[_128 + 96] == mem[_128 + 124 len 4]
    require ext_code.size(stor7[address(arg1)])
    call stor7[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _116, _125, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(stor7[address(arg1)])
    staticcall stor7[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _139 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_139 + 64] == mem[_139 + 92 len 4]
    require mem[_139 + 96] == mem[_139 + 124 len 4]
    if mem[_139] < _129:
        revert with 0, 17
    mem[mem[64]] = mem[_139] - _129
    return memory
      from mem[64]
       len 32
}

function mintWithERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = stor4
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(stor4)
    call stor4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1
    mem[(7 * ceil32(return_data.size)) + 100] = stor5
    mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 96] = 2
    mem[(8 * ceil32(return_data.size)) + 128] = stor2
    mem[(8 * ceil32(return_data.size)) + 160] = arg1
    if 60 > !block.timestamp:
        revert with 0, 17
    mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 228] = 0
    mem[(8 * ceil32(return_data.size)) + 260] = 160
    mem[(8 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (8 * ceil32(return_data.size)) + 388
    t = (8 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 292] = this.address
    mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(stor5)
    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _99 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
    _100 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 > test266151307() or (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 < 0:
        revert with 0, 65
    mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
    mem[(10 * ceil32(return_data.size)) + 192] = _100
    require return_data.size >= _99 + (32 * _100) + 32
    mem[(10 * ceil32(return_data.size)) + 224 len 32 * _100] = mem[(8 * ceil32(return_data.size)) + _99 + 224 len 32 * _100]
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _163 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _164 = mem[_163]
    mem[0] = arg1
    mem[32] = 7
    mem[mem[64] + 4] = stor7[address(arg1)]
    mem[mem[64] + 36] = _164
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7[address(arg1)], _164
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _168 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_168] == bool(mem[_168])
    require ext_code.size(stor7[address(arg1)])
    staticcall stor7[address(arg1)].bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _172 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _173 = mem[_172]
    require ext_code.size(stor7[address(arg1)])
    staticcall stor7[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _176 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _177 = mem[_176]
    require mem[_176 + 64] == mem[_176 + 92 len 4]
    require mem[_176 + 96] == mem[_176 + 124 len 4]
    require ext_code.size(stor7[address(arg1)])
    call stor7[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _164, _173, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(stor7[address(arg1)])
    staticcall stor7[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _187 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_187 + 64] == mem[_187 + 92 len 4]
    require mem[_187 + 96] == mem[_187 + 124 len 4]
    if mem[_187] < _177:
        revert with 0, 17
    if mem[_187] - _177 < arg2:
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
    _197 = mem[_196]
    if not mem[_196]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _205 = mem[_203]
        if mem[_203]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _205
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _205
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_210] == bool(mem[_210])
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _197
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _197
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_202] == bool(mem[_202])
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _213 = mem[_211]
        if mem[_211]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _213
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _213
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_216] == bool(mem[_216])
}

function payoutForLP(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = stor4
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(stor4)
    call stor4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = arg1
    mem[32] = 6
    require stor6[address(arg1)]
    require ext_code.size(stor6[address(arg1)])
    staticcall stor6[address(arg1)].getReserves() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor6[address(arg1)])
    staticcall stor6[address(arg1)].token0() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor6[address(arg1)])
    staticcall stor6[address(arg1)].token1() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != arg1:
        if ext_call.return_data[12 len 20] != arg1:
            revert with 0, 'bad LP token'
        if stor2 != address(ext_call.return_data[0]):
            revert with 0, 'bad LP token'
        if Mask(112, 0, ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
            revert with 0, 17
        if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > !(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]):
            revert with 0, 17
        if not 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) > !((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
            revert with 0, 17
        if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > !(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]):
            revert with 0, 17
        if not 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
            revert with 0, 18
        require arg1
        mem[(11 * ceil32(return_data.size)) + 100] = stor5
        mem[(11 * ceil32(return_data.size)) + 132] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(12 * ceil32(return_data.size)) + 96] = 2
        mem[(12 * ceil32(return_data.size)) + 128] = stor2
        mem[(12 * ceil32(return_data.size)) + 160] = arg1
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(12 * ceil32(return_data.size)) + 196] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
        mem[(12 * ceil32(return_data.size)) + 228] = 0
        mem[(12 * ceil32(return_data.size)) + 260] = 160
        mem[(12 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (12 * ceil32(return_data.size)) + 388
        t = (12 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(12 * ceil32(return_data.size)) + 292] = this.address
        mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor5)
        call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (13 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _155 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32
        require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
        _158 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
        if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 224 > test266151307() or (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 32 < 0:
            revert with 0, 65
        mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 224
        mem[(13 * ceil32(return_data.size)) + 192] = _158
        require return_data.size >= _155 + (32 * _158) + 32
        mem[(13 * ceil32(return_data.size)) + 224 len 32 * _158] = mem[(12 * ceil32(return_data.size)) + _155 + 224 len 32 * _158]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _344 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _347 = mem[_344]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _356 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _359 = mem[_356]
        mem[mem[64] + 4] = stor5
        mem[mem[64] + 36] = _347
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, _347
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _368 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_368] == bool(mem[_368])
        mem[mem[64] + 4] = stor5
        mem[mem[64] + 36] = _359
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, _359
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _380 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_380] == bool(mem[_380])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64] + 68] = _359
        mem[mem[64] + 100] = _347
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(stor5)
        call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor2, address(arg1), _359, _347, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        mem[0] = arg1
        mem[32] = 6
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6[address(arg1)])
        staticcall stor6[address(arg1)].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _413 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _416 = mem[_413]
        mem[0] = stor6[address(arg1)]
        mem[32] = 7
        mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
        mem[mem[64] + 36] = _416
        require ext_code.size(stor6[address(arg1)])
        call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7[stor6[address(arg1)]], _416
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _428 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_428] == bool(mem[_428])
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _440 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _443 = mem[_440]
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _452 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _455 = mem[_452]
        require mem[_452 + 64] == mem[_452 + 92 len 4]
        require mem[_452 + 96] == mem[_452 + 124 len 4]
        require ext_code.size(stor7[stor6[address(arg1)]])
        call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _416, _443, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _485 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_485 + 64] == mem[_485 + 92 len 4]
        require mem[_485 + 96] == mem[_485 + 124 len 4]
        if mem[_485] < _455:
            revert with 0, 17
        mem[mem[64]] = mem[_485] - _455
    else:
        if stor2 == ext_call.return_data[12 len 20]:
            if Mask(112, 0, ext_call.return_data[32]) > !(ext_call.return_data[0] / 2):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                revert with 0, 17
            if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > !(Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]):
                revert with 0, 17
            if not 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2):
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) > !((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2):
                revert with 0, 17
            if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > !(Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]):
                revert with 0, 17
            if not 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)):
                revert with 0, 18
            require arg1
            mem[(11 * ceil32(return_data.size)) + 100] = stor5
            mem[(11 * ceil32(return_data.size)) + 132] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 96] = 2
            mem[(12 * ceil32(return_data.size)) + 128] = stor2
            mem[(12 * ceil32(return_data.size)) + 160] = arg1
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))
            mem[(12 * ceil32(return_data.size)) + 228] = 0
            mem[(12 * ceil32(return_data.size)) + 260] = 160
            mem[(12 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 388
            t = (12 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(12 * ceil32(return_data.size)) + 292] = this.address
            mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _157 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _160 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 224 > test266151307() or (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 32 < 0:
                revert with 0, 65
            mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 224
            mem[(13 * ceil32(return_data.size)) + 192] = _160
            require return_data.size >= _157 + (32 * _160) + 32
            mem[(13 * ceil32(return_data.size)) + 224 len 32 * _160] = mem[(12 * ceil32(return_data.size)) + _157 + 224 len 32 * _160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _346 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _349 = mem[_346]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _358 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _361 = mem[_358]
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _349
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _349
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _370 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_370] == bool(mem[_370])
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _361
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _361
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _382 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_382] == bool(mem[_382])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = _361
            mem[mem[64] + 100] = _349
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor2, address(arg1), _361, _349, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            mem[0] = arg1
            mem[32] = 6
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6[address(arg1)])
            staticcall stor6[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _415 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _418 = mem[_415]
            mem[0] = stor6[address(arg1)]
            mem[32] = 7
            mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
            mem[mem[64] + 36] = _418
            require ext_code.size(stor6[address(arg1)])
            call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor7[stor6[address(arg1)]], _418
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _430 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_430] == bool(mem[_430])
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _442 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _445 = mem[_442]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _459 = mem[_454]
            require mem[_454 + 64] == mem[_454 + 92 len 4]
            require mem[_454 + 96] == mem[_454 + 124 len 4]
            require ext_code.size(stor7[stor6[address(arg1)]])
            call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _418, _445, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _487 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_487 + 64] == mem[_487 + 92 len 4]
            require mem[_487 + 96] == mem[_487 + 124 len 4]
            if mem[_487] < _459:
                revert with 0, 17
            mem[mem[64]] = mem[_487] - _459
        else:
            if ext_call.return_data[12 len 20] != arg1:
                revert with 0, 'bad LP token'
            if stor2 != address(ext_call.return_data[0]):
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                revert with 0, 17
            if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > !(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]):
                revert with 0, 17
            if not 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) > !((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                revert with 0, 17
            if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > !(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]):
                revert with 0, 17
            if not 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                revert with 0, 18
            require arg1
            mem[(11 * ceil32(return_data.size)) + 100] = stor5
            mem[(11 * ceil32(return_data.size)) + 132] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 96] = 2
            mem[(12 * ceil32(return_data.size)) + 128] = stor2
            mem[(12 * ceil32(return_data.size)) + 160] = arg1
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
            mem[(12 * ceil32(return_data.size)) + 228] = 0
            mem[(12 * ceil32(return_data.size)) + 260] = 160
            mem[(12 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 388
            t = (12 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(12 * ceil32(return_data.size)) + 292] = this.address
            mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _156 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _159 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 224 > test266151307() or (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 32 < 0:
                revert with 0, 65
            mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 224
            mem[(13 * ceil32(return_data.size)) + 192] = _159
            require return_data.size >= _156 + (32 * _159) + 32
            mem[(13 * ceil32(return_data.size)) + 224 len 32 * _159] = mem[(12 * ceil32(return_data.size)) + _156 + 224 len 32 * _159]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _345 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _348 = mem[_345]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _360 = mem[_357]
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _348
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _348
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_369] == bool(mem[_369])
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _360
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _360
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _381 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_381] == bool(mem[_381])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = _360
            mem[mem[64] + 100] = _348
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor2, address(arg1), _360, _348, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            mem[0] = arg1
            mem[32] = 6
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6[address(arg1)])
            staticcall stor6[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _414 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _417 = mem[_414]
            mem[0] = stor6[address(arg1)]
            mem[32] = 7
            mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
            mem[mem[64] + 36] = _417
            require ext_code.size(stor6[address(arg1)])
            call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor7[stor6[address(arg1)]], _417
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _429 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_429] == bool(mem[_429])
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _441 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _444 = mem[_441]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _453 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _457 = mem[_453]
            require mem[_453 + 64] == mem[_453 + 92 len 4]
            require mem[_453 + 96] == mem[_453 + 124 len 4]
            require ext_code.size(stor7[stor6[address(arg1)]])
            call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _417, _444, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _486 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_486 + 64] == mem[_486 + 92 len 4]
            require mem[_486 + 96] == mem[_486 + 124 len 4]
            if mem[_486] < _457:
                revert with 0, 17
            mem[mem[64]] = mem[_486] - _457
    return memory
      from mem[64]
       len 32
}

function mintWithLP(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = stor4
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(stor4)
    call stor4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = arg1
    mem[32] = 6
    require stor6[address(arg1)]
    require ext_code.size(stor6[address(arg1)])
    staticcall stor6[address(arg1)].getReserves() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor6[address(arg1)])
    staticcall stor6[address(arg1)].token0() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor6[address(arg1)])
    staticcall stor6[address(arg1)].token1() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != arg1:
        if ext_call.return_data[12 len 20] != arg1:
            revert with 0, 'bad LP token'
        if stor2 != address(ext_call.return_data[0]):
            revert with 0, 'bad LP token'
        if Mask(112, 0, ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
            revert with 0, 17
        if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > !(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]):
            revert with 0, 17
        if not 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) > !((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
            revert with 0, 17
        if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > !(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]):
            revert with 0, 17
        if not 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
            revert with 0, 18
        require arg1
        mem[(11 * ceil32(return_data.size)) + 100] = stor5
        mem[(11 * ceil32(return_data.size)) + 132] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(12 * ceil32(return_data.size)) + 96] = 2
        mem[(12 * ceil32(return_data.size)) + 128] = stor2
        mem[(12 * ceil32(return_data.size)) + 160] = arg1
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(12 * ceil32(return_data.size)) + 196] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
        mem[(12 * ceil32(return_data.size)) + 228] = 0
        mem[(12 * ceil32(return_data.size)) + 260] = 160
        mem[(12 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (12 * ceil32(return_data.size)) + 388
        t = (12 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(12 * ceil32(return_data.size)) + 292] = this.address
        mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor5)
        call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (13 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _154 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32
        require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
        _157 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
        if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 224 > test266151307() or (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 32 < 0:
            revert with 0, 65
        mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 224
        mem[(13 * ceil32(return_data.size)) + 192] = _157
        require return_data.size >= _154 + (32 * _157) + 32
        mem[(13 * ceil32(return_data.size)) + 224 len 32 * _157] = mem[(12 * ceil32(return_data.size)) + _154 + 224 len 32 * _157]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _415 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _418 = mem[_415]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _427 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _430 = mem[_427]
        mem[mem[64] + 4] = stor5
        mem[mem[64] + 36] = _418
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, _418
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _439 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_439] == bool(mem[_439])
        mem[mem[64] + 4] = stor5
        mem[mem[64] + 36] = _430
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, _430
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _451 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_451] == bool(mem[_451])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64] + 68] = _430
        mem[mem[64] + 100] = _418
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(stor5)
        call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor2, address(arg1), _430, _418, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        mem[0] = arg1
        mem[32] = 6
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6[address(arg1)])
        staticcall stor6[address(arg1)].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _484 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _487 = mem[_484]
        mem[0] = stor6[address(arg1)]
        mem[32] = 7
        mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
        mem[mem[64] + 36] = _487
        require ext_code.size(stor6[address(arg1)])
        call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7[stor6[address(arg1)]], _487
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _499 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_499] == bool(mem[_499])
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _511 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _514 = mem[_511]
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _523 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _526 = mem[_523]
        require mem[_523 + 64] == mem[_523 + 92 len 4]
        require mem[_523 + 96] == mem[_523 + 124 len 4]
        require ext_code.size(stor7[stor6[address(arg1)]])
        call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _487, _514, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _556 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_556 + 64] == mem[_556 + 92 len 4]
        require mem[_556 + 96] == mem[_556 + 124 len 4]
        if mem[_556] < _526:
            revert with 0, 17
        if mem[_556] - _526 < arg2:
            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _583 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _586 = mem[_583]
        if not mem[_583]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _610 = mem[_604]
            if mem[_604]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _610
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _610
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _625 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_625] == bool(mem[_625])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _586
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _586
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _599 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_599] == bool(mem[_599])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _626 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _632 = mem[_626]
            if mem[_626]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _632
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _632
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _643 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_643] == bool(mem[_643])
    else:
        if stor2 == ext_call.return_data[12 len 20]:
            if Mask(112, 0, ext_call.return_data[32]) > !(ext_call.return_data[0] / 2):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                revert with 0, 17
            if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > !(Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]):
                revert with 0, 17
            if not 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2):
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[32]) > !((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2):
                revert with 0, 17
            if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > !(Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]):
                revert with 0, 17
            if not 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)):
                revert with 0, 18
            require arg1
            mem[(11 * ceil32(return_data.size)) + 100] = stor5
            mem[(11 * ceil32(return_data.size)) + 132] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 96] = 2
            mem[(12 * ceil32(return_data.size)) + 128] = stor2
            mem[(12 * ceil32(return_data.size)) + 160] = arg1
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))
            mem[(12 * ceil32(return_data.size)) + 228] = 0
            mem[(12 * ceil32(return_data.size)) + 260] = 160
            mem[(12 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 388
            t = (12 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(12 * ceil32(return_data.size)) + 292] = this.address
            mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _156 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _159 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 224 > test266151307() or (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 32 < 0:
                revert with 0, 65
            mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 224
            mem[(13 * ceil32(return_data.size)) + 192] = _159
            require return_data.size >= _156 + (32 * _159) + 32
            mem[(13 * ceil32(return_data.size)) + 224 len 32 * _159] = mem[(12 * ceil32(return_data.size)) + _156 + 224 len 32 * _159]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _417 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _420 = mem[_417]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _429 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _432 = mem[_429]
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _420
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _420
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _441 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_441] == bool(mem[_441])
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _432
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _432
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _453 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_453] == bool(mem[_453])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = _432
            mem[mem[64] + 100] = _420
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor2, address(arg1), _432, _420, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            mem[0] = arg1
            mem[32] = 6
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6[address(arg1)])
            staticcall stor6[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _486 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _489 = mem[_486]
            mem[0] = stor6[address(arg1)]
            mem[32] = 7
            mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
            mem[mem[64] + 36] = _489
            require ext_code.size(stor6[address(arg1)])
            call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor7[stor6[address(arg1)]], _489
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _501 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_501] == bool(mem[_501])
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _513 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _516 = mem[_513]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _525 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _530 = mem[_525]
            require mem[_525 + 64] == mem[_525 + 92 len 4]
            require mem[_525 + 96] == mem[_525 + 124 len 4]
            require ext_code.size(stor7[stor6[address(arg1)]])
            call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _489, _516, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _558 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_558 + 64] == mem[_558 + 92 len 4]
            require mem[_558 + 96] == mem[_558 + 124 len 4]
            if mem[_558] < _530:
                revert with 0, 17
            if mem[_558] - _530 < arg2:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _585 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _588 = mem[_585]
            if not mem[_585]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _608 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _612 = mem[_608]
                if mem[_608]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _612
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _612
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _629 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_629] == bool(mem[_629])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _588
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _588
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _603 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_603] == bool(mem[_603])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _630 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _636 = mem[_630]
                if mem[_630]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _636
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _636
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == bool(mem[_645])
        else:
            if ext_call.return_data[12 len 20] != arg1:
                revert with 0, 'bad LP token'
            if stor2 != address(ext_call.return_data[0]):
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > !(ext_call.return_data[0] / 2):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                revert with 0, 17
            if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > !(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]):
                revert with 0, 17
            if not 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                revert with 0, 18
            if Mask(112, 0, ext_call.return_data[0]) > !((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                revert with 0, 17
            if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > !(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]):
                revert with 0, 17
            if not 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                revert with 0, 18
            require arg1
            mem[(11 * ceil32(return_data.size)) + 100] = stor5
            mem[(11 * ceil32(return_data.size)) + 132] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 96] = 2
            mem[(12 * ceil32(return_data.size)) + 128] = stor2
            mem[(12 * ceil32(return_data.size)) + 160] = arg1
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))
            mem[(12 * ceil32(return_data.size)) + 228] = 0
            mem[(12 * ceil32(return_data.size)) + 260] = 160
            mem[(12 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 388
            t = (12 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(12 * ceil32(return_data.size)) + 292] = this.address
            mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _155 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _158 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 224 > test266151307() or (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 32 < 0:
                revert with 0, 65
            mem[64] = (13 * ceil32(return_data.size)) + (32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 224
            mem[(13 * ceil32(return_data.size)) + 192] = _158
            require return_data.size >= _155 + (32 * _158) + 32
            mem[(13 * ceil32(return_data.size)) + 224 len 32 * _158] = mem[(12 * ceil32(return_data.size)) + _155 + 224 len 32 * _158]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _419 = mem[_416]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _428 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _431 = mem[_428]
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _419
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _419
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _440 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_440] == bool(mem[_440])
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _431
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _431
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _452 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_452] == bool(mem[_452])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = _431
            mem[mem[64] + 100] = _419
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor2, address(arg1), _431, _419, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            mem[0] = arg1
            mem[32] = 6
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6[address(arg1)])
            staticcall stor6[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _485 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _488 = mem[_485]
            mem[0] = stor6[address(arg1)]
            mem[32] = 7
            mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
            mem[mem[64] + 36] = _488
            require ext_code.size(stor6[address(arg1)])
            call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor7[stor6[address(arg1)]], _488
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _500 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_500] == bool(mem[_500])
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _512 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _515 = mem[_512]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _524 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _528 = mem[_524]
            require mem[_524 + 64] == mem[_524 + 92 len 4]
            require mem[_524 + 96] == mem[_524 + 124 len 4]
            require ext_code.size(stor7[stor6[address(arg1)]])
            call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _488, _515, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _557 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_557 + 64] == mem[_557 + 92 len 4]
            require mem[_557 + 96] == mem[_557 + 124 len 4]
            if mem[_557] < _528:
                revert with 0, 17
            if mem[_557] - _528 < arg2:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _584 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _587 = mem[_584]
            if not mem[_584]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _606 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _611 = mem[_606]
                if mem[_606]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _611
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _611
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_627] == bool(mem[_627])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _587
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _587
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _601 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_601] == bool(mem[_601])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _628 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _634 = mem[_628]
                if mem[_628]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _634
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _634
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == bool(mem[_644])
}



}
