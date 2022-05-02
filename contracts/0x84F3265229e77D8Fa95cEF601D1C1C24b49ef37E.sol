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
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
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
    mem[(4 * ceil32(return_data.size)) + 100] = stor4
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
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
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1
    mem[(7 * ceil32(return_data.size)) + 100] = stor5
    mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 96] = 2
    mem[(8 * ceil32(return_data.size)) + 128] = stor1
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
    if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(10 * ceil32(return_data.size)) + 192] = _76
    require (32 * _76) + _75 + 32 <= return_data.size
    mem[(10 * ceil32(return_data.size)) + 224 len ceil32(32 * _76)] = mem[(8 * ceil32(return_data.size)) + _75 + 224 len ceil32(32 * _76)]
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
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
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
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
    mem[(4 * ceil32(return_data.size)) + 100] = stor4
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
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
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1
    mem[(7 * ceil32(return_data.size)) + 100] = stor5
    mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 96] = 2
    mem[(8 * ceil32(return_data.size)) + 128] = stor1
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
    if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(10 * ceil32(return_data.size)) + 192] = _100
    require (32 * _100) + _99 + 32 <= return_data.size
    mem[(10 * ceil32(return_data.size)) + 224 len ceil32(32 * _100)] = mem[(8 * ceil32(return_data.size)) + _99 + 224 len ceil32(32 * _100)]
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
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
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _196 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _197 = mem[_196]
    if not mem[_196]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
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
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
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
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
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
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
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
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
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
    mem[(4 * ceil32(return_data.size)) + 100] = stor4
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
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
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
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
        if stor1 != address(ext_call.return_data[0]):
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
        if Mask(112, 0, ext_call.return_data[0]) > !(((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) and ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > -1 / ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
            revert with 0, 17
        if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > !(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]):
            revert with 0, 17
        if not 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))):
            revert with 0, 18
        require arg1
        mem[(11 * ceil32(return_data.size)) + 100] = stor5
        mem[(11 * ceil32(return_data.size)) + 132] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(12 * ceil32(return_data.size)) + 96] = 2
        mem[(12 * ceil32(return_data.size)) + 128] = stor1
        mem[(12 * ceil32(return_data.size)) + 160] = arg1
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(12 * ceil32(return_data.size)) + 196] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
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
            args (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (13 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _172 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32
        require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
        _175 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]
        if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193
        mem[(13 * ceil32(return_data.size)) + 192] = _175
        require (32 * _175) + _172 + 32 <= return_data.size
        mem[(13 * ceil32(return_data.size)) + 224 len ceil32(32 * _175)] = mem[(12 * ceil32(return_data.size)) + _172 + 224 len ceil32(32 * _175)]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _361 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _364 = mem[_361]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _373 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _376 = mem[_373]
        mem[mem[64] + 4] = stor5
        mem[mem[64] + 36] = _364
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, _364
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_385] == bool(mem[_385])
        mem[mem[64] + 4] = stor5
        mem[mem[64] + 36] = _376
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, _376
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _397 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_397] == bool(mem[_397])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64] + 68] = _376
        mem[mem[64] + 100] = _364
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(stor5)
        call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor1, address(arg1), _376, _364, 0, 0, address(this.address), block.timestamp + 60
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
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _430 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _433 = mem[_430]
        mem[0] = stor6[address(arg1)]
        mem[32] = 7
        mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
        mem[mem[64] + 36] = _433
        require ext_code.size(stor6[address(arg1)])
        call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7[stor6[address(arg1)]], _433
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _445 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_445] == bool(mem[_445])
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _457 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _460 = mem[_457]
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _469 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _472 = mem[_469]
        require mem[_469 + 64] == mem[_469 + 92 len 4]
        require mem[_469 + 96] == mem[_469 + 124 len 4]
        require ext_code.size(stor7[stor6[address(arg1)]])
        call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _433, _460, msg.sender
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
        _502 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_502 + 64] == mem[_502 + 92 len 4]
        require mem[_502 + 96] == mem[_502 + 124 len 4]
        if mem[_502] < _472:
            revert with 0, 17
        mem[mem[64]] = mem[_502] - _472
    else:
        if stor1 == ext_call.return_data[12 len 20]:
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
            if Mask(112, 0, ext_call.return_data[32]) > !(((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) and ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > -1 / ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)):
                revert with 0, 17
            if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > !(Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]):
                revert with 0, 17
            if not 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))):
                revert with 0, 18
            require arg1
            mem[(11 * ceil32(return_data.size)) + 100] = stor5
            mem[(11 * ceil32(return_data.size)) + 132] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 96] = 2
            mem[(12 * ceil32(return_data.size)) + 128] = stor1
            mem[(12 * ceil32(return_data.size)) + 160] = arg1
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))
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
                args (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _174 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _177 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _177
            require (32 * _177) + _174 + 32 <= return_data.size
            mem[(13 * ceil32(return_data.size)) + 224 len ceil32(32 * _177)] = mem[(12 * ceil32(return_data.size)) + _174 + 224 len ceil32(32 * _177)]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _363 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _366 = mem[_363]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _375 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _378 = mem[_375]
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _366
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _366
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _387 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_387] == bool(mem[_387])
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _378
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _378
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _399 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_399] == bool(mem[_399])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = _378
            mem[mem[64] + 100] = _366
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(arg1), _378, _366, 0, 0, address(this.address), block.timestamp + 60
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
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _432 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _435 = mem[_432]
            mem[0] = stor6[address(arg1)]
            mem[32] = 7
            mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
            mem[mem[64] + 36] = _435
            require ext_code.size(stor6[address(arg1)])
            call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor7[stor6[address(arg1)]], _435
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _447 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_447] == bool(mem[_447])
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _459 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _462 = mem[_459]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _471 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _476 = mem[_471]
            require mem[_471 + 64] == mem[_471 + 92 len 4]
            require mem[_471 + 96] == mem[_471 + 124 len 4]
            require ext_code.size(stor7[stor6[address(arg1)]])
            call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _435, _462, msg.sender
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
            _504 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_504 + 64] == mem[_504 + 92 len 4]
            require mem[_504 + 96] == mem[_504 + 124 len 4]
            if mem[_504] < _476:
                revert with 0, 17
            mem[mem[64]] = mem[_504] - _476
        else:
            if ext_call.return_data[12 len 20] != arg1:
                revert with 0, 'bad LP token'
            if stor1 != address(ext_call.return_data[0]):
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
            if Mask(112, 0, ext_call.return_data[0]) > !(((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) and ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > -1 / ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                revert with 0, 17
            if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > !(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]):
                revert with 0, 17
            if not 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))):
                revert with 0, 18
            require arg1
            mem[(11 * ceil32(return_data.size)) + 100] = stor5
            mem[(11 * ceil32(return_data.size)) + 132] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 96] = 2
            mem[(12 * ceil32(return_data.size)) + 128] = stor1
            mem[(12 * ceil32(return_data.size)) + 160] = arg1
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
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
                args (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _173 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _176 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _176
            require (32 * _176) + _173 + 32 <= return_data.size
            mem[(13 * ceil32(return_data.size)) + 224 len ceil32(32 * _176)] = mem[(12 * ceil32(return_data.size)) + _173 + 224 len ceil32(32 * _176)]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _362 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _365 = mem[_362]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _374 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _377 = mem[_374]
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _365
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _365
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _386 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_386] == bool(mem[_386])
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _377
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _377
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _398 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_398] == bool(mem[_398])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = _377
            mem[mem[64] + 100] = _365
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(arg1), _377, _365, 0, 0, address(this.address), block.timestamp + 60
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
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _431 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _434 = mem[_431]
            mem[0] = stor6[address(arg1)]
            mem[32] = 7
            mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
            mem[mem[64] + 36] = _434
            require ext_code.size(stor6[address(arg1)])
            call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor7[stor6[address(arg1)]], _434
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _446 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_446] == bool(mem[_446])
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _458 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _461 = mem[_458]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _470 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _474 = mem[_470]
            require mem[_470 + 64] == mem[_470 + 92 len 4]
            require mem[_470 + 96] == mem[_470 + 124 len 4]
            require ext_code.size(stor7[stor6[address(arg1)]])
            call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _434, _461, msg.sender
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
            _503 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_503 + 64] == mem[_503 + 92 len 4]
            require mem[_503 + 96] == mem[_503 + 124 len 4]
            if mem[_503] < _474:
                revert with 0, 17
            mem[mem[64]] = mem[_503] - _474
    return memory
      from mem[64]
       len 32
}

function mintWithLP(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
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
    mem[(4 * ceil32(return_data.size)) + 100] = stor4
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
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
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
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
        if stor1 != address(ext_call.return_data[0]):
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
        if Mask(112, 0, ext_call.return_data[0]) > !(((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) and ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > -1 / ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
            revert with 0, 17
        if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > !(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]):
            revert with 0, 17
        if not 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))):
            revert with 0, 18
        require arg1
        mem[(11 * ceil32(return_data.size)) + 100] = stor5
        mem[(11 * ceil32(return_data.size)) + 132] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(12 * ceil32(return_data.size)) + 96] = 2
        mem[(12 * ceil32(return_data.size)) + 128] = stor1
        mem[(12 * ceil32(return_data.size)) + 160] = arg1
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(12 * ceil32(return_data.size)) + 196] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
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
            args (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (13 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _167 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32
        require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
        _170 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]
        if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193
        mem[(13 * ceil32(return_data.size)) + 192] = _170
        require (32 * _170) + _167 + 32 <= return_data.size
        mem[(13 * ceil32(return_data.size)) + 224 len ceil32(32 * _170)] = mem[(12 * ceil32(return_data.size)) + _167 + 224 len ceil32(32 * _170)]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _428 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _431 = mem[_428]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _440 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _443 = mem[_440]
        mem[mem[64] + 4] = stor5
        mem[mem[64] + 36] = _431
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, _431
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _452 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_452] == bool(mem[_452])
        mem[mem[64] + 4] = stor5
        mem[mem[64] + 36] = _443
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, _443
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _464 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_464] == bool(mem[_464])
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[mem[64] + 68] = _443
        mem[mem[64] + 100] = _431
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(stor5)
        call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor1, address(arg1), _443, _431, 0, 0, address(this.address), block.timestamp + 60
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
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _497 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _500 = mem[_497]
        mem[0] = stor6[address(arg1)]
        mem[32] = 7
        mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
        mem[mem[64] + 36] = _500
        require ext_code.size(stor6[address(arg1)])
        call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7[stor6[address(arg1)]], _500
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _512 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_512] == bool(mem[_512])
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _524 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _527 = mem[_524]
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _536 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _539 = mem[_536]
        require mem[_536 + 64] == mem[_536 + 92 len 4]
        require mem[_536 + 96] == mem[_536 + 124 len 4]
        require ext_code.size(stor7[stor6[address(arg1)]])
        call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _500, _527, msg.sender
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
        _569 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_569 + 64] == mem[_569 + 92 len 4]
        require mem[_569 + 96] == mem[_569 + 124 len 4]
        if mem[_569] < _539:
            revert with 0, 17
        if mem[_569] - _539 < arg2:
            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _596 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _599 = mem[_596]
        if not mem[_596]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _617 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _623 = mem[_617]
            if mem[_617]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _623
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _623
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _638 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_638] == bool(mem[_638])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _599
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _599
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _610 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_610] == bool(mem[_610])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _645 = mem[_639]
            if mem[_639]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _645
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _645
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _656 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_656] == bool(mem[_656])
    else:
        if stor1 == ext_call.return_data[12 len 20]:
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
            if Mask(112, 0, ext_call.return_data[32]) > !(((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) and ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > -1 / ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)):
                revert with 0, 17
            if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > !(Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]):
                revert with 0, 17
            if not 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))):
                revert with 0, 18
            require arg1
            mem[(11 * ceil32(return_data.size)) + 100] = stor5
            mem[(11 * ceil32(return_data.size)) + 132] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 96] = 2
            mem[(12 * ceil32(return_data.size)) + 128] = stor1
            mem[(12 * ceil32(return_data.size)) + 160] = arg1
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))
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
                args (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _169 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _172 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _172
            require (32 * _172) + _169 + 32 <= return_data.size
            mem[(13 * ceil32(return_data.size)) + 224 len ceil32(32 * _172)] = mem[(12 * ceil32(return_data.size)) + _169 + 224 len ceil32(32 * _172)]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _430 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _433 = mem[_430]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _442 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _445 = mem[_442]
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _433
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _433
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_454] == bool(mem[_454])
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _445
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _445
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _466 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_466] == bool(mem[_466])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = _445
            mem[mem[64] + 100] = _433
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(arg1), _445, _433, 0, 0, address(this.address), block.timestamp + 60
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
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _499 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _502 = mem[_499]
            mem[0] = stor6[address(arg1)]
            mem[32] = 7
            mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
            mem[mem[64] + 36] = _502
            require ext_code.size(stor6[address(arg1)])
            call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor7[stor6[address(arg1)]], _502
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _514 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_514] == bool(mem[_514])
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _526 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _529 = mem[_526]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _538 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _543 = mem[_538]
            require mem[_538 + 64] == mem[_538 + 92 len 4]
            require mem[_538 + 96] == mem[_538 + 124 len 4]
            require ext_code.size(stor7[stor6[address(arg1)]])
            call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _502, _529, msg.sender
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
            _571 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_571 + 64] == mem[_571 + 92 len 4]
            require mem[_571 + 96] == mem[_571 + 124 len 4]
            if mem[_571] < _543:
                revert with 0, 17
            if mem[_571] - _543 < arg2:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _598 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _601 = mem[_598]
            if not mem[_598]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _621 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _625 = mem[_621]
                if mem[_621]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _625
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _625
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == bool(mem[_642])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _601
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _601
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _616 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_616] == bool(mem[_616])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _643 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _649 = mem[_643]
                if mem[_643]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _649
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _649
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_658] == bool(mem[_658])
        else:
            if ext_call.return_data[12 len 20] != arg1:
                revert with 0, 'bad LP token'
            if stor1 != address(ext_call.return_data[0]):
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
            if Mask(112, 0, ext_call.return_data[0]) > !(((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) and ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > -1 / ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                revert with 0, 17
            if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > !(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]):
                revert with 0, 17
            if not 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))):
                revert with 0, 18
            require arg1
            mem[(11 * ceil32(return_data.size)) + 100] = stor5
            mem[(11 * ceil32(return_data.size)) + 132] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 96] = 2
            mem[(12 * ceil32(return_data.size)) + 128] = stor1
            mem[(12 * ceil32(return_data.size)) + 160] = arg1
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
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
                args (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _168 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _171 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _171
            require (32 * _171) + _168 + 32 <= return_data.size
            mem[(13 * ceil32(return_data.size)) + 224 len ceil32(32 * _171)] = mem[(12 * ceil32(return_data.size)) + _168 + 224 len ceil32(32 * _171)]
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _429 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _432 = mem[_429]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _441 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _444 = mem[_441]
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _432
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _432
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _453 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_453] == bool(mem[_453])
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _444
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _444
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _465 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_465] == bool(mem[_465])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = _444
            mem[mem[64] + 100] = _432
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(arg1), _444, _432, 0, 0, address(this.address), block.timestamp + 60
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
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _498 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _501 = mem[_498]
            mem[0] = stor6[address(arg1)]
            mem[32] = 7
            mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
            mem[mem[64] + 36] = _501
            require ext_code.size(stor6[address(arg1)])
            call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor7[stor6[address(arg1)]], _501
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _513 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_513] == bool(mem[_513])
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _525 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _528 = mem[_525]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _537 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _541 = mem[_537]
            require mem[_537 + 64] == mem[_537 + 92 len 4]
            require mem[_537 + 96] == mem[_537 + 124 len 4]
            require ext_code.size(stor7[stor6[address(arg1)]])
            call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _501, _528, msg.sender
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
            _570 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_570 + 64] == mem[_570 + 92 len 4]
            require mem[_570 + 96] == mem[_570 + 124 len 4]
            if mem[_570] < _541:
                revert with 0, 17
            if mem[_570] - _541 < arg2:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _597 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _600 = mem[_597]
            if not mem[_597]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _619 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _624 = mem[_619]
                if mem[_619]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _624
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _624
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _640 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_640] == bool(mem[_640])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _600
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _600
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _613 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_613] == bool(mem[_613])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _641 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _647 = mem[_641]
                if mem[_641]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _647
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _647
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _657 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_657] == bool(mem[_657])
}



}
