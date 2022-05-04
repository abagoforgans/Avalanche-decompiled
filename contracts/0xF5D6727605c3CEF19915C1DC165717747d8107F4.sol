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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_code.size(stor5)
    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _72 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
    _73 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(10 * ceil32(return_data.size)) + 192] = _73
    require _72 + (32 * _73) + 32 <= return_data.size
    idx = 0
    s = (8 * ceil32(return_data.size)) + _72 + 224
    t = (10 * ceil32(return_data.size)) + 224
    while idx < _73:
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
    _109 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _110 = mem[_109]
    require mem[_109] == mem[_109]
    mem[0] = arg1
    mem[32] = 7
    mem[mem[64] + 4] = stor7[address(arg1)]
    mem[mem[64] + 36] = _110
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7[address(arg1)], _110
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _114 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_114] == bool(mem[_114])
    require ext_code.size(stor7[address(arg1)])
    staticcall stor7[address(arg1)].bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _118 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _119 = mem[_118]
    require mem[_118] == mem[_118]
    require ext_code.size(stor7[address(arg1)])
    staticcall stor7[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _122 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _123 = mem[_122]
    require mem[_122] == mem[_122]
    require mem[_122 + 32] == mem[_122 + 32]
    require mem[_122 + 64] == mem[_122 + 92 len 4]
    require mem[_122 + 96] == mem[_122 + 124 len 4]
    mem[mem[64] + 4] = _110
    mem[mem[64] + 36] = _119
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(stor7[address(arg1)])
    call stor7[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _110, _119, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_129] == mem[_129]
    require ext_code.size(stor7[address(arg1)])
    staticcall stor7[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _133 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_133] == mem[_133]
    require mem[_133 + 32] == mem[_133 + 32]
    require mem[_133 + 64] == mem[_133 + 92 len 4]
    require mem[_133 + 96] == mem[_133 + 124 len 4]
    if mem[_133] < _123:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_133] - _123
    return memory
      from mem[64]
       len 32
}

function mintWithERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_code.size(stor5)
    call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _71 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
    _72 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(10 * ceil32(return_data.size)) + 192] = _72
    require _71 + (32 * _72) + 32 <= return_data.size
    idx = 0
    s = (8 * ceil32(return_data.size)) + _71 + 224
    t = (10 * ceil32(return_data.size)) + 224
    while idx < _72:
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
    _108 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _109 = mem[_108]
    require mem[_108] == mem[_108]
    mem[0] = arg1
    mem[32] = 7
    mem[mem[64] + 4] = stor7[address(arg1)]
    mem[mem[64] + 36] = _109
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7[address(arg1)], _109
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _113 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_113] == bool(mem[_113])
    require ext_code.size(stor7[address(arg1)])
    staticcall stor7[address(arg1)].bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _117 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _118 = mem[_117]
    require mem[_117] == mem[_117]
    require ext_code.size(stor7[address(arg1)])
    staticcall stor7[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _121 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _122 = mem[_121]
    require mem[_121] == mem[_121]
    require mem[_121 + 32] == mem[_121 + 32]
    require mem[_121 + 64] == mem[_121 + 92 len 4]
    require mem[_121 + 96] == mem[_121 + 124 len 4]
    mem[mem[64] + 4] = _109
    mem[mem[64] + 36] = _118
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(stor7[address(arg1)])
    call stor7[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _109, _118, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_128] == mem[_128]
    require ext_code.size(stor7[address(arg1)])
    staticcall stor7[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _132 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_132] == mem[_132]
    require mem[_132 + 32] == mem[_132 + 32]
    require mem[_132 + 64] == mem[_132 + 92 len 4]
    require mem[_132 + 96] == mem[_132 + 124 len 4]
    if mem[_132] < _122:
        revert with 'NH{q', 17
    if mem[_132] - _122 < arg2:
        revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _141 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _142 = mem[_141]
    require mem[_141] == mem[_141]
    if mem[_141] <= 0:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _149 = mem[_146]
        require mem[_146] == mem[_146]
        if mem[_146] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _149
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _149
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _155 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_155] == bool(mem[_155])
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _142
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _142
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _148 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_148] == bool(mem[_148])
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _156 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _158 = mem[_156]
        require mem[_156] == mem[_156]
        if mem[_156] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _158
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _158
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_161] == bool(mem[_161])
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
        if address(ext_call.return_data[0]) != stor2:
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
        require ext_code.size(stor5)
        call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (13 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _106 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32
        require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
        _109 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
        if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193
        mem[(13 * ceil32(return_data.size)) + 192] = _109
        require _106 + (32 * _109) + 32 <= return_data.size
        idx = 0
        s = (12 * ceil32(return_data.size)) + _106 + 224
        t = (13 * ceil32(return_data.size)) + 224
        while idx < _109:
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
        _193 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _196 = mem[_193]
        require mem[_193] == mem[_193]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _205 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _208 = mem[_205]
        require mem[_205] == mem[_205]
        mem[mem[64] + 4] = stor5
        mem[mem[64] + 36] = _196
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, _196
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _217 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_217] == bool(mem[_217])
        mem[mem[64] + 4] = stor5
        mem[mem[64] + 36] = _208
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, _208
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _229 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_229] == bool(mem[_229])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _208
        mem[mem[64] + 100] = _196
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(stor5)
        call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor2, address(arg1), _208, _196, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _241 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_241] == mem[_241]
        require mem[_241 + 32] == mem[_241 + 32]
        require mem[_241 + 64] == mem[_241 + 64]
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
        _262 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _265 = mem[_262]
        require mem[_262] == mem[_262]
        mem[0] = stor6[address(arg1)]
        mem[32] = 7
        mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
        mem[mem[64] + 36] = _265
        require ext_code.size(stor6[address(arg1)])
        call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7[stor6[address(arg1)]], _265
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _277 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_277] == bool(mem[_277])
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _289 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _292 = mem[_289]
        require mem[_289] == mem[_289]
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _304 = mem[_301]
        require mem[_301] == mem[_301]
        require mem[_301 + 32] == mem[_301 + 32]
        require mem[_301 + 64] == mem[_301 + 92 len 4]
        require mem[_301 + 96] == mem[_301 + 124 len 4]
        mem[mem[64] + 4] = _265
        mem[mem[64] + 36] = _292
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(stor7[stor6[address(arg1)]])
        call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _265, _292, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _322 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_322] == mem[_322]
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _334 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_334] == mem[_334]
        require mem[_334 + 32] == mem[_334 + 32]
        require mem[_334 + 64] == mem[_334 + 92 len 4]
        require mem[_334 + 96] == mem[_334 + 124 len 4]
        if mem[_334] < _304:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_334] - _304
    else:
        if ext_call.return_data[12 len 20] == stor2:
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
            require ext_code.size(stor5)
            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _108 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _111 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _111
            require _108 + (32 * _111) + 32 <= return_data.size
            idx = 0
            s = (12 * ceil32(return_data.size)) + _108 + 224
            t = (13 * ceil32(return_data.size)) + 224
            while idx < _111:
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
            _195 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _198 = mem[_195]
            require mem[_195] == mem[_195]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
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
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _198
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _198
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _219 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_219] == bool(mem[_219])
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _210
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _210
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _231 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_231] == bool(mem[_231])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _210
            mem[mem[64] + 100] = _198
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor2, address(arg1), _210, _198, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _243 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_243] == mem[_243]
            require mem[_243 + 32] == mem[_243 + 32]
            require mem[_243 + 64] == mem[_243 + 64]
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
            _264 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _267 = mem[_264]
            require mem[_264] == mem[_264]
            mem[0] = stor6[address(arg1)]
            mem[32] = 7
            mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
            mem[mem[64] + 36] = _267
            require ext_code.size(stor6[address(arg1)])
            call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor7[stor6[address(arg1)]], _267
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _279 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_279] == bool(mem[_279])
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _294 = mem[_291]
            require mem[_291] == mem[_291]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _306 = mem[_303]
            require mem[_303] == mem[_303]
            require mem[_303 + 32] == mem[_303 + 32]
            require mem[_303 + 64] == mem[_303 + 92 len 4]
            require mem[_303 + 96] == mem[_303 + 124 len 4]
            mem[mem[64] + 4] = _267
            mem[mem[64] + 36] = _294
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor7[stor6[address(arg1)]])
            call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _267, _294, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_324] == mem[_324]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_336] == mem[_336]
            require mem[_336 + 32] == mem[_336 + 32]
            require mem[_336 + 64] == mem[_336 + 92 len 4]
            require mem[_336 + 96] == mem[_336 + 124 len 4]
            if mem[_336] < _306:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_336] - _306
        else:
            if ext_call.return_data[12 len 20] != arg1:
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor2:
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
            require ext_code.size(stor5)
            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _107 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _110 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _110
            require _107 + (32 * _110) + 32 <= return_data.size
            idx = 0
            s = (12 * ceil32(return_data.size)) + _107 + 224
            t = (13 * ceil32(return_data.size)) + 224
            while idx < _110:
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
            _194 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _197 = mem[_194]
            require mem[_194] == mem[_194]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _209 = mem[_206]
            require mem[_206] == mem[_206]
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _197
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _197
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _218 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_218] == bool(mem[_218])
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _209
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _209
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _230 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_230] == bool(mem[_230])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _209
            mem[mem[64] + 100] = _197
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor2, address(arg1), _209, _197, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_242] == mem[_242]
            require mem[_242 + 32] == mem[_242 + 32]
            require mem[_242 + 64] == mem[_242 + 64]
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
            _263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _266 = mem[_263]
            require mem[_263] == mem[_263]
            mem[0] = stor6[address(arg1)]
            mem[32] = 7
            mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
            mem[mem[64] + 36] = _266
            require ext_code.size(stor6[address(arg1)])
            call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor7[stor6[address(arg1)]], _266
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _278 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_278] == bool(mem[_278])
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _290 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _293 = mem[_290]
            require mem[_290] == mem[_290]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _302 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _305 = mem[_302]
            require mem[_302] == mem[_302]
            require mem[_302 + 32] == mem[_302 + 32]
            require mem[_302 + 64] == mem[_302 + 92 len 4]
            require mem[_302 + 96] == mem[_302 + 124 len 4]
            mem[mem[64] + 4] = _266
            mem[mem[64] + 36] = _293
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor7[stor6[address(arg1)]])
            call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _266, _293, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _323 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_323] == mem[_323]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _335 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_335] == mem[_335]
            require mem[_335 + 32] == mem[_335 + 32]
            require mem[_335 + 64] == mem[_335 + 92 len 4]
            require mem[_335 + 96] == mem[_335 + 124 len 4]
            if mem[_335] < _305:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_335] - _305
    return memory
      from mem[64]
       len 32
}

function mintWithLP(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
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
        if address(ext_call.return_data[0]) != stor2:
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
        require ext_code.size(stor5)
        call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (13 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _101 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32
        require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
        _104 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
        if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193
        mem[(13 * ceil32(return_data.size)) + 192] = _104
        require _101 + (32 * _104) + 32 <= return_data.size
        idx = 0
        s = (12 * ceil32(return_data.size)) + _101 + 224
        t = (13 * ceil32(return_data.size)) + 224
        while idx < _104:
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
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _191 = mem[_188]
        require mem[_188] == mem[_188]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _200 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _203 = mem[_200]
        require mem[_200] == mem[_200]
        mem[mem[64] + 4] = stor5
        mem[mem[64] + 36] = _191
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, _191
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _212 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_212] == bool(mem[_212])
        mem[mem[64] + 4] = stor5
        mem[mem[64] + 36] = _203
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, _203
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _224 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_224] == bool(mem[_224])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _203
        mem[mem[64] + 100] = _191
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(stor5)
        call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor2, address(arg1), _203, _191, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _236 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_236] == mem[_236]
        require mem[_236 + 32] == mem[_236 + 32]
        require mem[_236 + 64] == mem[_236 + 64]
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
        _257 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _260 = mem[_257]
        require mem[_257] == mem[_257]
        mem[0] = stor6[address(arg1)]
        mem[32] = 7
        mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
        mem[mem[64] + 36] = _260
        require ext_code.size(stor6[address(arg1)])
        call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7[stor6[address(arg1)]], _260
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _272 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_272] == bool(mem[_272])
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _284 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _287 = mem[_284]
        require mem[_284] == mem[_284]
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _296 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _299 = mem[_296]
        require mem[_296] == mem[_296]
        require mem[_296 + 32] == mem[_296 + 32]
        require mem[_296 + 64] == mem[_296 + 92 len 4]
        require mem[_296 + 96] == mem[_296 + 124 len 4]
        mem[mem[64] + 4] = _260
        mem[mem[64] + 36] = _287
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(stor7[stor6[address(arg1)]])
        call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _260, _287, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _317 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_317] == mem[_317]
        require ext_code.size(stor7[stor6[address(arg1)]])
        staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _329 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_329] == mem[_329]
        require mem[_329 + 32] == mem[_329 + 32]
        require mem[_329 + 64] == mem[_329 + 92 len 4]
        require mem[_329 + 96] == mem[_329 + 124 len 4]
        if mem[_329] < _299:
            revert with 'NH{q', 17
        if mem[_329] - _299 < arg2:
            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _356 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _359 = mem[_356]
        require mem[_356] == mem[_356]
        if mem[_356] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _380 = mem[_371]
            require mem[_371] == mem[_371]
            if mem[_371] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _380
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _380
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _398 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_398] == bool(mem[_398])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _359
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _359
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _377 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_377] == bool(mem[_377])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _399 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _405 = mem[_399]
            require mem[_399] == mem[_399]
            if mem[_399] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _405
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _405
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _416 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_416] == bool(mem[_416])
    else:
        if ext_call.return_data[12 len 20] == stor2:
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
            require ext_code.size(stor5)
            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _103 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _106 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _106
            require _103 + (32 * _106) + 32 <= return_data.size
            idx = 0
            s = (12 * ceil32(return_data.size)) + _103 + 224
            t = (13 * ceil32(return_data.size)) + 224
            while idx < _106:
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
            _190 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _193 = mem[_190]
            require mem[_190] == mem[_190]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _202 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _205 = mem[_202]
            require mem[_202] == mem[_202]
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _193
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _193
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _214 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_214] == bool(mem[_214])
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _205
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _205
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _226 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_226] == bool(mem[_226])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _205
            mem[mem[64] + 100] = _193
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor2, address(arg1), _205, _193, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _238 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_238] == mem[_238]
            require mem[_238 + 32] == mem[_238 + 32]
            require mem[_238 + 64] == mem[_238 + 64]
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
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _262 = mem[_259]
            require mem[_259] == mem[_259]
            mem[0] = stor6[address(arg1)]
            mem[32] = 7
            mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
            mem[mem[64] + 36] = _262
            require ext_code.size(stor6[address(arg1)])
            call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor7[stor6[address(arg1)]], _262
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_274] == bool(mem[_274])
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _286 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _289 = mem[_286]
            require mem[_286] == mem[_286]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _298 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _301 = mem[_298]
            require mem[_298] == mem[_298]
            require mem[_298 + 32] == mem[_298 + 32]
            require mem[_298 + 64] == mem[_298 + 92 len 4]
            require mem[_298 + 96] == mem[_298 + 124 len 4]
            mem[mem[64] + 4] = _262
            mem[mem[64] + 36] = _289
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor7[stor6[address(arg1)]])
            call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _262, _289, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _319 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_319] == mem[_319]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _331 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_331] == mem[_331]
            require mem[_331 + 32] == mem[_331 + 32]
            require mem[_331 + 64] == mem[_331 + 92 len 4]
            require mem[_331 + 96] == mem[_331 + 124 len 4]
            if mem[_331] < _301:
                revert with 'NH{q', 17
            if mem[_331] - _301 < arg2:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _358 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _361 = mem[_358]
            require mem[_358] == mem[_358]
            if mem[_358] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _382 = mem[_375]
                require mem[_375] == mem[_375]
                if mem[_375] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _382
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _382
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _402 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_402] == bool(mem[_402])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _361
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _361
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _379 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_379] == bool(mem[_379])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _403 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _409 = mem[_403]
                require mem[_403] == mem[_403]
                if mem[_403] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _409
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _409
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _418 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_418] == bool(mem[_418])
        else:
            if ext_call.return_data[12 len 20] != arg1:
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor2:
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
            require ext_code.size(stor5)
            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _102 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _105 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) >> 32 + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _105
            require _102 + (32 * _105) + 32 <= return_data.size
            idx = 0
            s = (12 * ceil32(return_data.size)) + _102 + 224
            t = (13 * ceil32(return_data.size)) + 224
            while idx < _105:
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
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _192 = mem[_189]
            require mem[_189] == mem[_189]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _201 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _204 = mem[_201]
            require mem[_201] == mem[_201]
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _192
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _192
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _213 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_213] == bool(mem[_213])
            mem[mem[64] + 4] = stor5
            mem[mem[64] + 36] = _204
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, _204
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_225] == bool(mem[_225])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _204
            mem[mem[64] + 100] = _192
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor2, address(arg1), _204, _192, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_237] == mem[_237]
            require mem[_237 + 32] == mem[_237 + 32]
            require mem[_237 + 64] == mem[_237 + 64]
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
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _261 = mem[_258]
            require mem[_258] == mem[_258]
            mem[0] = stor6[address(arg1)]
            mem[32] = 7
            mem[mem[64] + 4] = stor7[stor6[address(arg1)]]
            mem[mem[64] + 36] = _261
            require ext_code.size(stor6[address(arg1)])
            call stor6[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor7[stor6[address(arg1)]], _261
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_273] == bool(mem[_273])
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _285 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _288 = mem[_285]
            require mem[_285] == mem[_285]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _297 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _300 = mem[_297]
            require mem[_297] == mem[_297]
            require mem[_297 + 32] == mem[_297 + 32]
            require mem[_297 + 64] == mem[_297 + 92 len 4]
            require mem[_297 + 96] == mem[_297 + 124 len 4]
            mem[mem[64] + 4] = _261
            mem[mem[64] + 36] = _288
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor7[stor6[address(arg1)]])
            call stor7[stor6[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _261, _288, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _318 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_318] == mem[_318]
            require ext_code.size(stor7[stor6[address(arg1)]])
            staticcall stor7[stor6[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _330 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_330] == mem[_330]
            require mem[_330 + 32] == mem[_330 + 32]
            require mem[_330 + 64] == mem[_330 + 92 len 4]
            require mem[_330 + 96] == mem[_330 + 124 len 4]
            if mem[_330] < _300:
                revert with 'NH{q', 17
            if mem[_330] - _300 < arg2:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _360 = mem[_357]
            require mem[_357] == mem[_357]
            if mem[_357] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _373 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _381 = mem[_373]
                require mem[_373] == mem[_373]
                if mem[_373] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _381
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _381
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _400 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_400] == bool(mem[_400])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _360
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _360
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _378 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_378] == bool(mem[_378])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _401 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _407 = mem[_401]
                require mem[_401] == mem[_401]
                if mem[_401] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _407
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _407
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _417 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_417] == bool(mem[_417])
}



}
