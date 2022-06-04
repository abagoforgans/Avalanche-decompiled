contract main {




// =====================  Runtime code  =====================


#
#  - sub_029c4aea(?)
#
address stor1;
address stor2;
address stor3;
address stor4;
mapping of address stor9;
mapping of address stor10;
mapping of address stor11;

function _fallback() payable {
    revert
}

function sub_4387fb30(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require address(arg1)
    mem[ceil32(return_data.size) + 100] = address(arg3)
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = stor1
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg1)
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg2
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(address(arg3))
    call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _33 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _34 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = _34
    require _33 + (32 * _34) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _33 + 224
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _34:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _70 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _71 = mem[_70]
    require mem[_70] == mem[_70]
    mem[0] = address(arg1)
    mem[32] = 11
    mem[mem[64] + 4] = stor11[address(arg1)]
    mem[mem[64] + 36] = _71
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11[address(arg1)], _71
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _75 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_75] == bool(mem[_75])
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _79 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _80 = mem[_79]
    require mem[_79] == mem[_79]
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _83 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _84 = mem[_83]
    require mem[_83] == mem[_83]
    require mem[_83 + 32] == mem[_83 + 32]
    require mem[_83 + 64] == mem[_83 + 92 len 4]
    require mem[_83 + 96] == mem[_83 + 124 len 4]
    mem[mem[64] + 4] = _71
    mem[mem[64] + 36] = _80
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(stor11[address(arg1)])
    call stor11[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _71, _80, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _90 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_90] == mem[_90]
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _94 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_94] == mem[_94]
    require mem[_94 + 32] == mem[_94 + 32]
    require mem[_94 + 64] == mem[_94 + 92 len 4]
    require mem[_94 + 96] == mem[_94 + 124 len 4]
    if mem[_94] < _84:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_94] - _84
    return memory
      from mem[64]
       len 32
}

function sub_26df4c04(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require address(arg1)
    mem[ceil32(return_data.size) + 100] = address(arg3)
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 3
    mem[(2 * ceil32(return_data.size)) + 128] = stor1
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg4)
    mem[(2 * ceil32(return_data.size)) + 192] = address(arg1)
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = arg2
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    mem[(2 * ceil32(return_data.size)) + 292] = 160
    mem[(2 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 420
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 324] = this.address
    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 60
    require ext_code.size(address(arg3))
    call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, address(this.address), block.timestamp + 60, 3, mem[(2 * ceil32(return_data.size)) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _32 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
    _33 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
    mem[(4 * ceil32(return_data.size)) + 224] = _33
    require _32 + (32 * _33) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _32 + 256
    t = (4 * ceil32(return_data.size)) + 256
    while idx < _33:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _70 = mem[_69]
    require mem[_69] == mem[_69]
    mem[0] = address(arg1)
    mem[32] = 11
    mem[mem[64] + 4] = stor11[address(arg1)]
    mem[mem[64] + 36] = _70
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11[address(arg1)], _70
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_74] == bool(mem[_74])
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _78 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _79 = mem[_78]
    require mem[_78] == mem[_78]
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _82 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _83 = mem[_82]
    require mem[_82] == mem[_82]
    require mem[_82 + 32] == mem[_82 + 32]
    require mem[_82 + 64] == mem[_82 + 92 len 4]
    require mem[_82 + 96] == mem[_82 + 124 len 4]
    mem[mem[64] + 4] = _70
    mem[mem[64] + 36] = _79
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(stor11[address(arg1)])
    call stor11[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _70, _79, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _89 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_89] == mem[_89]
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _93 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_93] == mem[_93]
    require mem[_93 + 32] == mem[_93 + 32]
    require mem[_93 + 64] == mem[_93 + 92 len 4]
    require mem[_93 + 96] == mem[_93 + 124 len 4]
    if mem[_93] < _83:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_93] - _83
    return memory
      from mem[64]
       len 32
}

function sub_4e38c882(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require address(arg1)
    mem[ceil32(return_data.size) + 100] = address(arg4)
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = stor1
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg1)
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg2
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(address(arg4))
    call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _32 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _33 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = _33
    require _32 + (32 * _33) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _32 + 224
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _33:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _70 = mem[_69]
    require mem[_69] == mem[_69]
    mem[0] = address(arg1)
    mem[32] = 11
    mem[mem[64] + 4] = stor11[address(arg1)]
    mem[mem[64] + 36] = _70
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11[address(arg1)], _70
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_74] == bool(mem[_74])
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _78 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _79 = mem[_78]
    require mem[_78] == mem[_78]
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _82 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _83 = mem[_82]
    require mem[_82] == mem[_82]
    require mem[_82 + 32] == mem[_82 + 32]
    require mem[_82 + 64] == mem[_82 + 92 len 4]
    require mem[_82 + 96] == mem[_82 + 124 len 4]
    mem[mem[64] + 4] = _70
    mem[mem[64] + 36] = _79
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(stor11[address(arg1)])
    call stor11[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _70, _79, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _89 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_89] == mem[_89]
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _93 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_93] == mem[_93]
    require mem[_93 + 32] == mem[_93 + 32]
    require mem[_93 + 64] == mem[_93 + 92 len 4]
    require mem[_93 + 96] == mem[_93 + 124 len 4]
    if mem[_93] < _83:
        revert with 'NH{q', 17
    if mem[_93] - _83 < arg3:
        revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _102 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _103 = mem[_102]
    require mem[_102] == mem[_102]
    if mem[_102] <= 0:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _107 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _110 = mem[_107]
        require mem[_107] == mem[_107]
        if mem[_107] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _110
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _110
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_116] == bool(mem[_116])
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _103
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _103
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_109] == bool(mem[_109])
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _119 = mem[_117]
        require mem[_117] == mem[_117]
        if mem[_117] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _119
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _119
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _122 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_122] == bool(mem[_122])
}

function sub_fb62762b(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require address(arg1)
    mem[ceil32(return_data.size) + 100] = address(arg4)
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 3
    mem[(2 * ceil32(return_data.size)) + 128] = stor1
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg5)
    mem[(2 * ceil32(return_data.size)) + 192] = address(arg1)
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = arg2
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    mem[(2 * ceil32(return_data.size)) + 292] = 160
    mem[(2 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 420
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 324] = this.address
    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 60
    require ext_code.size(address(arg4))
    call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, address(this.address), block.timestamp + 60, 3, mem[(2 * ceil32(return_data.size)) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _31 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
    _32 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
    mem[(4 * ceil32(return_data.size)) + 224] = _32
    require _31 + (32 * _32) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _31 + 256
    t = (4 * ceil32(return_data.size)) + 256
    while idx < _32:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _68 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _69 = mem[_68]
    require mem[_68] == mem[_68]
    mem[0] = address(arg1)
    mem[32] = 11
    mem[mem[64] + 4] = stor11[address(arg1)]
    mem[mem[64] + 36] = _69
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor11[address(arg1)], _69
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_73] == bool(mem[_73])
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _78 = mem[_77]
    require mem[_77] == mem[_77]
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _82 = mem[_81]
    require mem[_81] == mem[_81]
    require mem[_81 + 32] == mem[_81 + 32]
    require mem[_81 + 64] == mem[_81 + 92 len 4]
    require mem[_81 + 96] == mem[_81 + 124 len 4]
    mem[mem[64] + 4] = _69
    mem[mem[64] + 36] = _78
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(stor11[address(arg1)])
    call stor11[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _69, _78, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _88 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_88] == mem[_88]
    require ext_code.size(stor11[address(arg1)])
    staticcall stor11[address(arg1)].bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_92] == mem[_92]
    require mem[_92 + 32] == mem[_92 + 32]
    require mem[_92 + 64] == mem[_92 + 92 len 4]
    require mem[_92 + 96] == mem[_92 + 124 len 4]
    if mem[_92] < _82:
        revert with 'NH{q', 17
    if mem[_92] - _82 < arg3:
        revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _101 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _102 = mem[_101]
    require mem[_101] == mem[_101]
    if mem[_101] <= 0:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _109 = mem[_106]
        require mem[_106] == mem[_106]
        if mem[_106] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _109
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _109
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_115] == bool(mem[_115])
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _102
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _102
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _108 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_108] == bool(mem[_108])
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _116 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _118 = mem[_116]
        require mem[_116] == mem[_116]
        if mem[_116] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _118
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _118
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _121 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_121] == bool(mem[_121])
}

function sub_74d6602b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[0] = address(arg1)
    mem[32] = 9
    require stor9[address(arg1)]
    require ext_code.size(stor9[address(arg1)])
    staticcall stor9[address(arg1)].getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor9[address(arg1)])
    staticcall stor9[address(arg1)].token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor9[address(arg1)])
    staticcall stor9[address(arg1)].token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != address(arg1):
        if ext_call.return_data[12 len 20] != address(arg1):
            revert with 0, 'bad LP token'
        if address(ext_call.return_data[0]) != stor1:
            revert with 0, 'bad LP token'
        if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * arg2 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
            revert with 'NH{q', 17
        if 997 * arg2 / 2 * arg2 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
            revert with 'NH{q', 17
        if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        require address(arg1)
        mem[(6 * ceil32(return_data.size)) + 100] = address(arg3)
        mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 96] = 2
        mem[(7 * ceil32(return_data.size)) + 128] = stor1
        mem[(7 * ceil32(return_data.size)) + 160] = address(arg1)
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
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
        require ext_code.size(address(arg3))
        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _100 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
        _103 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
        mem[(8 * ceil32(return_data.size)) + 192] = _103
        require _100 + (32 * _103) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _100 + 224
        t = (8 * ceil32(return_data.size)) + 224
        while idx < _103:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _226 = mem[_223]
        require mem[_223] == mem[_223]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _235 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _238 = mem[_235]
        require mem[_235] == mem[_235]
        if address(arg1) == stor2:
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = _226
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, _226
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _253 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_253] == bool(mem[_253])
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = _238
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, _238
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_277] == bool(mem[_277])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _238
            mem[mem[64] + 100] = _226
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor4)
            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(arg1), _238, _226, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _301 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_301] == mem[_301]
            require mem[_301 + 32] == mem[_301 + 32]
            require mem[_301 + 64] == mem[_301 + 64]
            mem[0] = address(arg1)
            mem[32] = 9
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor9[address(arg1)])
            staticcall stor9[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _343 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _349 = mem[_343]
            require mem[_343] == mem[_343]
            mem[0] = stor9[address(arg1)]
            mem[32] = 11
            mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
            mem[mem[64] + 36] = _349
            require ext_code.size(stor9[address(arg1)])
            call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor11[stor9[address(arg1)]], _349
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _373 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_373] == bool(mem[_373])
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _397 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _403 = mem[_397]
            require mem[_397] == mem[_397]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _421 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _427 = mem[_421]
            require mem[_421] == mem[_421]
            require mem[_421 + 32] == mem[_421 + 32]
            require mem[_421 + 64] == mem[_421 + 92 len 4]
            require mem[_421 + 96] == mem[_421 + 124 len 4]
            mem[mem[64] + 4] = _349
            mem[mem[64] + 36] = _403
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[stor9[address(arg1)]])
            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _349, _403, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _463 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_463] == mem[_463]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _487 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_487] == mem[_487]
            require mem[_487 + 32] == mem[_487 + 32]
            require mem[_487 + 64] == mem[_487 + 92 len 4]
            require mem[_487 + 96] == mem[_487 + 124 len 4]
            if mem[_487] < _427:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_487] - _427
        else:
            mem[mem[64] + 4] = stor3
            mem[mem[64] + 36] = _226
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, _226
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _254 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_254] == bool(mem[_254])
            mem[mem[64] + 4] = stor3
            mem[mem[64] + 36] = _238
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, _238
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _278 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_278] == bool(mem[_278])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _238
            mem[mem[64] + 100] = _226
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor3)
            call stor3.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(arg1), _238, _226, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _302 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_302] == mem[_302]
            require mem[_302 + 32] == mem[_302 + 32]
            require mem[_302 + 64] == mem[_302 + 64]
            mem[0] = address(arg1)
            mem[32] = 9
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor9[address(arg1)])
            staticcall stor9[address(arg1)].0x70a08231 with:
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
            mem[0] = stor9[address(arg1)]
            mem[32] = 11
            mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
            mem[mem[64] + 36] = _350
            require ext_code.size(stor9[address(arg1)])
            call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor11[stor9[address(arg1)]], _350
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _374 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_374] == bool(mem[_374])
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _398 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _404 = mem[_398]
            require mem[_398] == mem[_398]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _422 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _428 = mem[_422]
            require mem[_422] == mem[_422]
            require mem[_422 + 32] == mem[_422 + 32]
            require mem[_422 + 64] == mem[_422 + 92 len 4]
            require mem[_422 + 96] == mem[_422 + 124 len 4]
            mem[mem[64] + 4] = _350
            mem[mem[64] + 36] = _404
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[stor9[address(arg1)]])
            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _350, _404, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _464 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_464] == mem[_464]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _488 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_488] == mem[_488]
            require mem[_488 + 32] == mem[_488 + 32]
            require mem[_488 + 64] == mem[_488 + 92 len 4]
            require mem[_488 + 96] == mem[_488 + 124 len 4]
            if mem[_488] < _428:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_488] - _428
    else:
        if ext_call.return_data[12 len 20] == stor1:
            if Mask(112, 0, ext_call.return_data[32]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * arg2 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 * arg2 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            require address(arg1)
            mem[(6 * ceil32(return_data.size)) + 100] = address(arg3)
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = stor1
            mem[(7 * ceil32(return_data.size)) + 160] = address(arg1)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
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
            require ext_code.size(address(arg3))
            call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _102 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _105 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = _105
            require _102 + (32 * _105) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _102 + 224
            t = (8 * ceil32(return_data.size)) + 224
            while idx < _105:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _228 = mem[_225]
            require mem[_225] == mem[_225]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _240 = mem[_237]
            require mem[_237] == mem[_237]
            if address(arg1) == stor2:
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _228
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _228
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_257] == bool(mem[_257])
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _240
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _240
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _281 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_281] == bool(mem[_281])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _240
                mem[mem[64] + 100] = _228
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _240, _228, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _305 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_305] == mem[_305]
                require mem[_305 + 32] == mem[_305 + 32]
                require mem[_305 + 64] == mem[_305 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _347 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _353 = mem[_347]
                require mem[_347] == mem[_347]
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _353
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _353
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _377 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_377] == bool(mem[_377])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _401 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _407 = mem[_401]
                require mem[_401] == mem[_401]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _425 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _431 = mem[_425]
                require mem[_425] == mem[_425]
                require mem[_425 + 32] == mem[_425 + 32]
                require mem[_425 + 64] == mem[_425 + 92 len 4]
                require mem[_425 + 96] == mem[_425 + 124 len 4]
                mem[mem[64] + 4] = _353
                mem[mem[64] + 36] = _407
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _353, _407, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _467 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_467] == mem[_467]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _491 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_491] == mem[_491]
                require mem[_491 + 32] == mem[_491 + 32]
                require mem[_491 + 64] == mem[_491 + 92 len 4]
                require mem[_491 + 96] == mem[_491 + 124 len 4]
                if mem[_491] < _431:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_491] - _431
            else:
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _228
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _228
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _258 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_258] == bool(mem[_258])
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _240
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _240
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _282 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_282] == bool(mem[_282])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _240
                mem[mem[64] + 100] = _228
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor3)
                call stor3.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _240, _228, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _306 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_306] == mem[_306]
                require mem[_306 + 32] == mem[_306 + 32]
                require mem[_306 + 64] == mem[_306 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _348 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _354 = mem[_348]
                require mem[_348] == mem[_348]
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _354
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _354
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _378 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_378] == bool(mem[_378])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _402 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _408 = mem[_402]
                require mem[_402] == mem[_402]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _432 = mem[_426]
                require mem[_426] == mem[_426]
                require mem[_426 + 32] == mem[_426 + 32]
                require mem[_426 + 64] == mem[_426 + 92 len 4]
                require mem[_426 + 96] == mem[_426 + 124 len 4]
                mem[mem[64] + 4] = _354
                mem[mem[64] + 36] = _408
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _354, _408, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _468 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_468] == mem[_468]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _492 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_492] == mem[_492]
                require mem[_492 + 32] == mem[_492 + 32]
                require mem[_492 + 64] == mem[_492 + 92 len 4]
                require mem[_492 + 96] == mem[_492 + 124 len 4]
                if mem[_492] < _432:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_492] - _432
        else:
            if ext_call.return_data[12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor1:
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * arg2 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 * arg2 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            require address(arg1)
            mem[(6 * ceil32(return_data.size)) + 100] = address(arg3)
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = stor1
            mem[(7 * ceil32(return_data.size)) + 160] = address(arg1)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
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
            require ext_code.size(address(arg3))
            call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _101 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _104 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = _104
            require _101 + (32 * _104) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _101 + 224
            t = (8 * ceil32(return_data.size)) + 224
            while idx < _104:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _227 = mem[_224]
            require mem[_224] == mem[_224]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _236 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _239 = mem[_236]
            require mem[_236] == mem[_236]
            if address(arg1) == stor2:
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _227
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _227
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_255] == bool(mem[_255])
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _239
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _239
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _279 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_279] == bool(mem[_279])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _239
                mem[mem[64] + 100] = _227
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _239, _227, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_303] == mem[_303]
                require mem[_303 + 32] == mem[_303 + 32]
                require mem[_303 + 64] == mem[_303 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _345 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _351 = mem[_345]
                require mem[_345] == mem[_345]
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _351
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _351
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_375] == bool(mem[_375])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _399 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _405 = mem[_399]
                require mem[_399] == mem[_399]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _429 = mem[_423]
                require mem[_423] == mem[_423]
                require mem[_423 + 32] == mem[_423 + 32]
                require mem[_423 + 64] == mem[_423 + 92 len 4]
                require mem[_423 + 96] == mem[_423 + 124 len 4]
                mem[mem[64] + 4] = _351
                mem[mem[64] + 36] = _405
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _351, _405, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_465] == mem[_465]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _489 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_489] == mem[_489]
                require mem[_489 + 32] == mem[_489 + 32]
                require mem[_489 + 64] == mem[_489 + 92 len 4]
                require mem[_489 + 96] == mem[_489 + 124 len 4]
                if mem[_489] < _429:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_489] - _429
            else:
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _227
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _227
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_256] == bool(mem[_256])
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _239
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _239
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _280 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_280] == bool(mem[_280])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _239
                mem[mem[64] + 100] = _227
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor3)
                call stor3.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _239, _227, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _304 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_304] == mem[_304]
                require mem[_304 + 32] == mem[_304 + 32]
                require mem[_304 + 64] == mem[_304 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
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
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _352
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _352
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _376 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_376] == bool(mem[_376])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _406 = mem[_400]
                require mem[_400] == mem[_400]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _430 = mem[_424]
                require mem[_424] == mem[_424]
                require mem[_424 + 32] == mem[_424 + 32]
                require mem[_424 + 64] == mem[_424 + 92 len 4]
                require mem[_424 + 96] == mem[_424 + 124 len 4]
                mem[mem[64] + 4] = _352
                mem[mem[64] + 36] = _406
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _352, _406, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _466 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_466] == mem[_466]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _490 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_490] == mem[_490]
                require mem[_490 + 32] == mem[_490 + 32]
                require mem[_490 + 64] == mem[_490 + 92 len 4]
                require mem[_490 + 96] == mem[_490 + 124 len 4]
                if mem[_490] < _430:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_490] - _430
    return memory
      from mem[64]
       len 32
}

function sub_e6035c7e(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[0] = address(arg1)
    mem[32] = 9
    require stor9[address(arg1)]
    require ext_code.size(stor9[address(arg1)])
    staticcall stor9[address(arg1)].getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor9[address(arg1)])
    staticcall stor9[address(arg1)].token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor9[address(arg1)])
    staticcall stor9[address(arg1)].token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != address(arg1):
        if ext_call.return_data[12 len 20] != address(arg1):
            revert with 0, 'bad LP token'
        if address(ext_call.return_data[0]) != stor1:
            revert with 0, 'bad LP token'
        if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * arg2 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
            revert with 'NH{q', 17
        if 997 * arg2 / 2 * arg2 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
            revert with 'NH{q', 17
        if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        require address(arg1)
        mem[(6 * ceil32(return_data.size)) + 100] = address(arg3)
        mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 96] = 3
        mem[(7 * ceil32(return_data.size)) + 128] = stor1
        mem[(7 * ceil32(return_data.size)) + 160] = address(arg4)
        mem[(7 * ceil32(return_data.size)) + 192] = address(arg1)
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 228] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        mem[(7 * ceil32(return_data.size)) + 260] = 0
        mem[(7 * ceil32(return_data.size)) + 292] = 160
        mem[(7 * ceil32(return_data.size)) + 388] = 3
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 324] = this.address
        mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp + 60
        require ext_code.size(address(arg3))
        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 3, mem[(7 * ceil32(return_data.size)) + 420 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _98 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
        require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 255 < (7 * ceil32(return_data.size)) + return_data.size + 224
        _101 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]) + 225 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]) + 225
        mem[(8 * ceil32(return_data.size)) + 224] = _101
        require _98 + (32 * _101) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _98 + 256
        t = (8 * ceil32(return_data.size)) + 256
        while idx < _101:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
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
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _236 = mem[_233]
        require mem[_233] == mem[_233]
        if address(arg1) == stor2:
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = _224
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, _224
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _251 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_251] == bool(mem[_251])
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = _236
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, _236
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_275] == bool(mem[_275])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _236
            mem[mem[64] + 100] = _224
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor4)
            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(arg1), _236, _224, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_299] == mem[_299]
            require mem[_299 + 32] == mem[_299 + 32]
            require mem[_299 + 64] == mem[_299 + 64]
            mem[0] = address(arg1)
            mem[32] = 9
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor9[address(arg1)])
            staticcall stor9[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _341 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _347 = mem[_341]
            require mem[_341] == mem[_341]
            mem[0] = stor9[address(arg1)]
            mem[32] = 11
            mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
            mem[mem[64] + 36] = _347
            require ext_code.size(stor9[address(arg1)])
            call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor11[stor9[address(arg1)]], _347
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_371] == bool(mem[_371])
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _395 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _401 = mem[_395]
            require mem[_395] == mem[_395]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _419 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _425 = mem[_419]
            require mem[_419] == mem[_419]
            require mem[_419 + 32] == mem[_419 + 32]
            require mem[_419 + 64] == mem[_419 + 92 len 4]
            require mem[_419 + 96] == mem[_419 + 124 len 4]
            mem[mem[64] + 4] = _347
            mem[mem[64] + 36] = _401
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[stor9[address(arg1)]])
            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _347, _401, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _461 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_461] == mem[_461]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _485 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_485] == mem[_485]
            require mem[_485 + 32] == mem[_485 + 32]
            require mem[_485 + 64] == mem[_485 + 92 len 4]
            require mem[_485 + 96] == mem[_485 + 124 len 4]
            if mem[_485] < _425:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_485] - _425
        else:
            mem[mem[64] + 4] = stor3
            mem[mem[64] + 36] = _224
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, _224
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _252 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_252] == bool(mem[_252])
            mem[mem[64] + 4] = stor3
            mem[mem[64] + 36] = _236
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, _236
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_276] == bool(mem[_276])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _236
            mem[mem[64] + 100] = _224
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor3)
            call stor3.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(arg1), _236, _224, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _300 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_300] == mem[_300]
            require mem[_300 + 32] == mem[_300 + 32]
            require mem[_300 + 64] == mem[_300 + 64]
            mem[0] = address(arg1)
            mem[32] = 9
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor9[address(arg1)])
            staticcall stor9[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _342 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _348 = mem[_342]
            require mem[_342] == mem[_342]
            mem[0] = stor9[address(arg1)]
            mem[32] = 11
            mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
            mem[mem[64] + 36] = _348
            require ext_code.size(stor9[address(arg1)])
            call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor11[stor9[address(arg1)]], _348
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _372 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_372] == bool(mem[_372])
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _396 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _402 = mem[_396]
            require mem[_396] == mem[_396]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _420 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _426 = mem[_420]
            require mem[_420] == mem[_420]
            require mem[_420 + 32] == mem[_420 + 32]
            require mem[_420 + 64] == mem[_420 + 92 len 4]
            require mem[_420 + 96] == mem[_420 + 124 len 4]
            mem[mem[64] + 4] = _348
            mem[mem[64] + 36] = _402
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[stor9[address(arg1)]])
            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _348, _402, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _462 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_462] == mem[_462]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _486 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_486] == mem[_486]
            require mem[_486 + 32] == mem[_486 + 32]
            require mem[_486 + 64] == mem[_486 + 92 len 4]
            require mem[_486 + 96] == mem[_486 + 124 len 4]
            if mem[_486] < _426:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_486] - _426
    else:
        if ext_call.return_data[12 len 20] == stor1:
            if Mask(112, 0, ext_call.return_data[32]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * arg2 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 * arg2 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            require address(arg1)
            mem[(6 * ceil32(return_data.size)) + 100] = address(arg3)
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 3
            mem[(7 * ceil32(return_data.size)) + 128] = stor1
            mem[(7 * ceil32(return_data.size)) + 160] = address(arg4)
            mem[(7 * ceil32(return_data.size)) + 192] = address(arg1)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 228] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            mem[(7 * ceil32(return_data.size)) + 260] = 0
            mem[(7 * ceil32(return_data.size)) + 292] = 160
            mem[(7 * ceil32(return_data.size)) + 388] = 3
            idx = 0
            s = (7 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 324] = this.address
            mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp + 60
            require ext_code.size(address(arg3))
            call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, 3, mem[(7 * ceil32(return_data.size)) + 420 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _100 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 255 < (7 * ceil32(return_data.size)) + return_data.size + 224
            _103 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 224]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 224] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 224]) + 225 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 224]) + 225
            mem[(8 * ceil32(return_data.size)) + 224] = _103
            require _100 + (32 * _103) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _100 + 256
            t = (8 * ceil32(return_data.size)) + 256
            while idx < _103:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _223 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _226 = mem[_223]
            require mem[_223] == mem[_223]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _235 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _238 = mem[_235]
            require mem[_235] == mem[_235]
            if address(arg1) == stor2:
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _226
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _226
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_255] == bool(mem[_255])
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _238
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _238
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _279 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_279] == bool(mem[_279])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _238
                mem[mem[64] + 100] = _226
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _238, _226, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_303] == mem[_303]
                require mem[_303 + 32] == mem[_303 + 32]
                require mem[_303 + 64] == mem[_303 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _345 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _351 = mem[_345]
                require mem[_345] == mem[_345]
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _351
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _351
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_375] == bool(mem[_375])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _399 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _405 = mem[_399]
                require mem[_399] == mem[_399]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _429 = mem[_423]
                require mem[_423] == mem[_423]
                require mem[_423 + 32] == mem[_423 + 32]
                require mem[_423 + 64] == mem[_423 + 92 len 4]
                require mem[_423 + 96] == mem[_423 + 124 len 4]
                mem[mem[64] + 4] = _351
                mem[mem[64] + 36] = _405
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _351, _405, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_465] == mem[_465]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _489 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_489] == mem[_489]
                require mem[_489 + 32] == mem[_489 + 32]
                require mem[_489 + 64] == mem[_489 + 92 len 4]
                require mem[_489 + 96] == mem[_489 + 124 len 4]
                if mem[_489] < _429:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_489] - _429
            else:
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _226
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _226
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_256] == bool(mem[_256])
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _238
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _238
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _280 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_280] == bool(mem[_280])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _238
                mem[mem[64] + 100] = _226
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor3)
                call stor3.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _238, _226, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _304 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_304] == mem[_304]
                require mem[_304 + 32] == mem[_304 + 32]
                require mem[_304 + 64] == mem[_304 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
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
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _352
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _352
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _376 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_376] == bool(mem[_376])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _406 = mem[_400]
                require mem[_400] == mem[_400]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _430 = mem[_424]
                require mem[_424] == mem[_424]
                require mem[_424 + 32] == mem[_424 + 32]
                require mem[_424 + 64] == mem[_424 + 92 len 4]
                require mem[_424 + 96] == mem[_424 + 124 len 4]
                mem[mem[64] + 4] = _352
                mem[mem[64] + 36] = _406
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _352, _406, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _466 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_466] == mem[_466]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _490 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_490] == mem[_490]
                require mem[_490 + 32] == mem[_490 + 32]
                require mem[_490 + 64] == mem[_490 + 92 len 4]
                require mem[_490 + 96] == mem[_490 + 124 len 4]
                if mem[_490] < _430:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_490] - _430
        else:
            if ext_call.return_data[12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor1:
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * arg2 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 * arg2 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            require address(arg1)
            mem[(6 * ceil32(return_data.size)) + 100] = address(arg3)
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 3
            mem[(7 * ceil32(return_data.size)) + 128] = stor1
            mem[(7 * ceil32(return_data.size)) + 160] = address(arg4)
            mem[(7 * ceil32(return_data.size)) + 192] = address(arg1)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 228] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(7 * ceil32(return_data.size)) + 260] = 0
            mem[(7 * ceil32(return_data.size)) + 292] = 160
            mem[(7 * ceil32(return_data.size)) + 388] = 3
            idx = 0
            s = (7 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 324] = this.address
            mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp + 60
            require ext_code.size(address(arg3))
            call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 3, mem[(7 * ceil32(return_data.size)) + 420 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _99 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 255 < (7 * ceil32(return_data.size)) + return_data.size + 224
            _102 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]) + 225 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]) + 225
            mem[(8 * ceil32(return_data.size)) + 224] = _102
            require _99 + (32 * _102) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _99 + 256
            t = (8 * ceil32(return_data.size)) + 256
            while idx < _102:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _222 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _225 = mem[_222]
            require mem[_222] == mem[_222]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _234 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _237 = mem[_234]
            require mem[_234] == mem[_234]
            if address(arg1) == stor2:
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _225
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _225
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _253 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_253] == bool(mem[_253])
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _237
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _237
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_277] == bool(mem[_277])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _237
                mem[mem[64] + 100] = _225
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _237, _225, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_301] == mem[_301]
                require mem[_301 + 32] == mem[_301 + 32]
                require mem[_301 + 64] == mem[_301 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _343 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _349 = mem[_343]
                require mem[_343] == mem[_343]
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _349
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _349
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _373 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_373] == bool(mem[_373])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _397 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _403 = mem[_397]
                require mem[_397] == mem[_397]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _427 = mem[_421]
                require mem[_421] == mem[_421]
                require mem[_421 + 32] == mem[_421 + 32]
                require mem[_421 + 64] == mem[_421 + 92 len 4]
                require mem[_421 + 96] == mem[_421 + 124 len 4]
                mem[mem[64] + 4] = _349
                mem[mem[64] + 36] = _403
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _349, _403, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _463 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_463] == mem[_463]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _487 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_487] == mem[_487]
                require mem[_487 + 32] == mem[_487 + 32]
                require mem[_487 + 64] == mem[_487 + 92 len 4]
                require mem[_487 + 96] == mem[_487 + 124 len 4]
                if mem[_487] < _427:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_487] - _427
            else:
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _225
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _225
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_254] == bool(mem[_254])
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _237
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _237
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_278] == bool(mem[_278])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _237
                mem[mem[64] + 100] = _225
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor3)
                call stor3.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _237, _225, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _302 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_302] == mem[_302]
                require mem[_302 + 32] == mem[_302 + 32]
                require mem[_302 + 64] == mem[_302 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
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
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _350
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _350
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _374 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_374] == bool(mem[_374])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _398 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _404 = mem[_398]
                require mem[_398] == mem[_398]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _428 = mem[_422]
                require mem[_422] == mem[_422]
                require mem[_422 + 32] == mem[_422 + 32]
                require mem[_422 + 64] == mem[_422 + 92 len 4]
                require mem[_422 + 96] == mem[_422 + 124 len 4]
                mem[mem[64] + 4] = _350
                mem[mem[64] + 36] = _404
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _350, _404, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _464 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_464] == mem[_464]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _488 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_488] == mem[_488]
                require mem[_488 + 32] == mem[_488 + 32]
                require mem[_488 + 64] == mem[_488 + 92 len 4]
                require mem[_488 + 96] == mem[_488 + 124 len 4]
                if mem[_488] < _428:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_488] - _428
    return memory
      from mem[64]
       len 32
}

function sub_5891fde9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require stor2
    if stor2 == stor2:
        mem[ceil32(return_data.size) + 100] = stor4
        mem[ceil32(return_data.size) + 132] = arg2
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor4, arg2
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = stor2
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg2
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _73 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _75 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = _75
        require _73 + (32 * _75) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _73 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _75:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[0] = address(arg1)
        mem[32] = 10
        require stor10[address(arg1)]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _159 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _161 = mem[_159]
        require mem[_159] == mem[_159 + 18 len 14]
        _163 = mem[_159 + 32]
        require mem[_159 + 32] == mem[_159 + 50 len 14]
        require mem[_159 + 64] == mem[_159 + 92 len 4]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _173 = mem[_171]
        require mem[_171] == mem[_171 + 12 len 20]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_179] == mem[_179 + 12 len 20]
        if address(_173) != address(arg1):
            if mem[_179 + 12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if address(_173) != stor2:
                revert with 0, 'bad LP token'
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _213 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _219 = mem[_213]
            require mem[_213] == mem[_213]
            if Mask(112, 0, _161) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, _161) and mem[_213] > -1 / 1000 * Mask(112, 0, _161):
                revert with 'NH{q', 17
            if mem[_213] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * mem[_213] / 2 > (-1997 * Mask(112, 0, _161)) - 1:
                revert with 'NH{q', 17
            if mem[_213] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * mem[_213] / 2 and mem[_213] / 2 > -1 / 997 * mem[_213] / 2:
                revert with 'NH{q', 17
            if 997 * mem[_213] / 2 * mem[_213] / 2 > (-1000 * Mask(112, 0, _161) * mem[_213]) - 1:
                revert with 'NH{q', 17
            if not (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)):
                revert with 'NH{q', 18
            if (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) > (-1997 * Mask(112, 0, _161)) - 1:
                revert with 'NH{q', 17
            if (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) and (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) > -1 / 997 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)):
                revert with 'NH{q', 17
            if 997 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) > (-1000 * Mask(112, 0, _161) * mem[_213]) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)):
                revert with 'NH{q', 18
            if (997 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) > (-1997 * Mask(112, 0, _161)) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) and (997 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) > -1 / 997 * (997 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) * (997 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) > (-1000 * Mask(112, 0, _161) * mem[_213]) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * (997 * mem[_213] / 2 * mem[_213] / 2) + (1000 * Mask(112, 0, _161) * mem[_213]) / (1994 * mem[_213] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)):
                revert with 'NH{q', 18
            require address(arg1)
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = (997 * (997 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _219) / (1994 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) * (997 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _219) / (1994 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _219) / (1994 * (997 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _219) / (1994 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, (997 * (997 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _219) / (1994 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) * (997 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _219) / (1994 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _219) / (1994 * (997 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _219) / (1994 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_237] == bool(mem[_237])
            _251 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_251]:
                revert with 'NH{q', 50
            mem[_251 + 32] = stor2
            if 1 >= mem[_251]:
                revert with 'NH{q', 50
            mem[_251 + 64] = address(arg1)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[_251 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_251 + 100] = (997 * (997 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _219) / (1994 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) * (997 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _219) / (1994 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _219) / (1994 * (997 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _219) / (1994 * (997 * _219 / 2 * _219 / 2) + (1000 * Mask(112, 0, _161) * _219) / (1994 * _219 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))
            mem[_251 + 132] = 0
            mem[_251 + 164] = 160
            mem[_251 + 260] = mem[_251]
            idx = 0
            s = _251 + 32
            t = _251 + 292
            while idx < mem[_251]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_251 + 196] = this.address
            mem[_251 + 228] = block.timestamp + 60
            require ext_code.size(stor4)
            call stor4.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _251 + (32 * mem[_251]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _399 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _405 = mem[_399]
            require mem[_399] <= test266151307()
            require _399 + mem[_399] + 31 < _399 + return_data.size
            _411 = mem[_399 + mem[_399]]
            if mem[_399 + mem[_399]] > test266151307():
                revert with 'NH{q', 65
            if _399 + ceil32(return_data.size) + floor32(mem[_399 + mem[_399]]) + 1 > test266151307() or floor32(mem[_399 + mem[_399]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _399 + ceil32(return_data.size) + floor32(mem[_399 + mem[_399]]) + 1
            mem[_399 + ceil32(return_data.size)] = _411
            require _405 + (32 * _411) + 32 <= return_data.size
            idx = 0
            s = _399 + _405 + 32
            t = _399 + ceil32(return_data.size) + 32
            while idx < _411:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _579 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _585 = mem[_579]
            require mem[_579] == mem[_579]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _603 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _609 = mem[_603]
            require mem[_603] == mem[_603]
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = _585
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, _585
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _627 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_627] == bool(mem[_627])
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = _609
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, _609
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _651 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_651] == bool(mem[_651])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _609
            mem[mem[64] + 100] = _585
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor4)
            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor2, address(arg1), _609, _585, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _675 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_675] == mem[_675]
            require mem[_675 + 32] == mem[_675 + 32]
            require mem[_675 + 64] == mem[_675 + 64]
            mem[0] = address(arg1)
            mem[32] = 10
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor10[address(arg1)])
            staticcall stor10[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _717 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _723 = mem[_717]
            require mem[_717] == mem[_717]
            mem[0] = stor10[address(arg1)]
            mem[32] = 11
            mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
            mem[mem[64] + 36] = _723
            require ext_code.size(stor10[address(arg1)])
            call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor11[stor10[address(arg1)]], _723
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _747 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_747] == bool(mem[_747])
            require ext_code.size(stor11[stor10[address(arg1)]])
            staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _771 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _777 = mem[_771]
            require mem[_771] == mem[_771]
            require ext_code.size(stor11[stor10[address(arg1)]])
            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _795 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _801 = mem[_795]
            require mem[_795] == mem[_795]
            require mem[_795 + 32] == mem[_795 + 32]
            require mem[_795 + 64] == mem[_795 + 92 len 4]
            require mem[_795 + 96] == mem[_795 + 124 len 4]
            mem[mem[64] + 4] = _723
            mem[mem[64] + 36] = _777
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[stor10[address(arg1)]])
            call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _723, _777, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _837 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_837] == mem[_837]
            require ext_code.size(stor11[stor10[address(arg1)]])
            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _861 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_861] == mem[_861]
            require mem[_861 + 32] == mem[_861 + 32]
            require mem[_861 + 64] == mem[_861 + 92 len 4]
            require mem[_861 + 96] == mem[_861 + 124 len 4]
            if mem[_861] < _801:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_861] - _801
        else:
            if mem[_179 + 12 len 20] == stor2:
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
                _214 = mem[_206]
                require mem[_206] == mem[_206]
                if Mask(112, 0, _163) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, _163) and mem[_206] > -1 / 1000 * Mask(112, 0, _163):
                    revert with 'NH{q', 17
                if mem[_206] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * mem[_206] / 2 > (-1997 * Mask(112, 0, _163)) - 1:
                    revert with 'NH{q', 17
                if mem[_206] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * mem[_206] / 2 and mem[_206] / 2 > -1 / 997 * mem[_206] / 2:
                    revert with 'NH{q', 17
                if 997 * mem[_206] / 2 * mem[_206] / 2 > (-1000 * Mask(112, 0, _163) * mem[_206]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)):
                    revert with 'NH{q', 18
                if (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) > (-1997 * Mask(112, 0, _163)) - 1:
                    revert with 'NH{q', 17
                if (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) and (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) > -1 / 997 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)):
                    revert with 'NH{q', 17
                if 997 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) > (-1000 * Mask(112, 0, _163) * mem[_206]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)):
                    revert with 'NH{q', 18
                if (997 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)) > (-1997 * Mask(112, 0, _163)) - 1:
                    revert with 'NH{q', 17
                if (997 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)) and (997 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)) > -1 / 997 * (997 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)):
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)) * (997 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)) > (-1000 * Mask(112, 0, _163) * mem[_206]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163)) * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * (997 * mem[_206] / 2 * mem[_206] / 2) + (1000 * Mask(112, 0, _163) * mem[_206]) / (1994 * mem[_206] / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)):
                    revert with 'NH{q', 18
                require address(arg1)
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = (997 * (997 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163)) * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * _214) / (1994 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)) * (997 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163)) * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * _214) / (1994 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * _214) / (1994 * (997 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163)) * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * _214) / (1994 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163))
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, (997 * (997 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163)) * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * _214) / (1994 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)) * (997 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163)) * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * _214) / (1994 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * _214) / (1994 * (997 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163)) * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * _214) / (1994 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _231 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_231] == bool(mem[_231])
                _247 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_247]:
                    revert with 'NH{q', 50
                mem[_247 + 32] = stor2
                if 1 >= mem[_247]:
                    revert with 'NH{q', 50
                mem[_247 + 64] = address(arg1)
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[_247 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_247 + 100] = (997 * (997 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163)) * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * _214) / (1994 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163)) * (997 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163)) * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * _214) / (1994 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * _214) / (1994 * (997 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163)) * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1000 * Mask(112, 0, _163) * _214) / (1994 * (997 * _214 / 2 * _214 / 2) + (1000 * Mask(112, 0, _163) * _214) / (1994 * _214 / 2) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163))) + (1997 * Mask(112, 0, _163))
                mem[_247 + 132] = 0
                mem[_247 + 164] = 160
                mem[_247 + 260] = mem[_247]
                idx = 0
                s = _247 + 32
                t = _247 + 292
                while idx < mem[_247]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_247 + 196] = this.address
                mem[_247 + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _247 + (32 * mem[_247]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _401 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _407 = mem[_401]
                require mem[_401] <= test266151307()
                require _401 + mem[_401] + 31 < _401 + return_data.size
                _413 = mem[_401 + mem[_401]]
                if mem[_401 + mem[_401]] > test266151307():
                    revert with 'NH{q', 65
                if _401 + ceil32(return_data.size) + floor32(mem[_401 + mem[_401]]) + 1 > test266151307() or floor32(mem[_401 + mem[_401]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _401 + ceil32(return_data.size) + floor32(mem[_401 + mem[_401]]) + 1
                mem[_401 + ceil32(return_data.size)] = _413
                require _407 + (32 * _413) + 32 <= return_data.size
                idx = 0
                s = _401 + _407 + 32
                t = _401 + ceil32(return_data.size) + 32
                while idx < _413:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _581 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _587 = mem[_581]
                require mem[_581] == mem[_581]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _605 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _611 = mem[_605]
                require mem[_605] == mem[_605]
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _587
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _587
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _629 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_629] == bool(mem[_629])
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _611
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _611
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _653 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_653] == bool(mem[_653])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _611
                mem[mem[64] + 100] = _587
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor2, address(arg1), _611, _587, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _677 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_677] == mem[_677]
                require mem[_677 + 32] == mem[_677 + 32]
                require mem[_677 + 64] == mem[_677 + 64]
                mem[0] = address(arg1)
                mem[32] = 10
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor10[address(arg1)])
                staticcall stor10[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _719 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _725 = mem[_719]
                require mem[_719] == mem[_719]
                mem[0] = stor10[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                mem[mem[64] + 36] = _725
                require ext_code.size(stor10[address(arg1)])
                call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor10[address(arg1)]], _725
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _749 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_749] == bool(mem[_749])
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _773 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _779 = mem[_773]
                require mem[_773] == mem[_773]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _797 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _803 = mem[_797]
                require mem[_797] == mem[_797]
                require mem[_797 + 32] == mem[_797 + 32]
                require mem[_797 + 64] == mem[_797 + 92 len 4]
                require mem[_797 + 96] == mem[_797 + 124 len 4]
                mem[mem[64] + 4] = _725
                mem[mem[64] + 36] = _779
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor10[address(arg1)]])
                call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _725, _779, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _839 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_839] == mem[_839]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _863 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_863] == mem[_863]
                require mem[_863 + 32] == mem[_863 + 32]
                require mem[_863 + 64] == mem[_863 + 92 len 4]
                require mem[_863 + 96] == mem[_863 + 124 len 4]
                if mem[_863] < _803:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_863] - _803
            else:
                if mem[_179 + 12 len 20] != address(arg1):
                    revert with 0, 'bad LP token'
                if address(_173) != stor2:
                    revert with 0, 'bad LP token'
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _221 = mem[_217]
                require mem[_217] == mem[_217]
                if Mask(112, 0, _161) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, _161) and mem[_217] > -1 / 1000 * Mask(112, 0, _161):
                    revert with 'NH{q', 17
                if mem[_217] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * mem[_217] / 2 > (-1997 * Mask(112, 0, _161)) - 1:
                    revert with 'NH{q', 17
                if mem[_217] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * mem[_217] / 2 and mem[_217] / 2 > -1 / 997 * mem[_217] / 2:
                    revert with 'NH{q', 17
                if 997 * mem[_217] / 2 * mem[_217] / 2 > (-1000 * Mask(112, 0, _161) * mem[_217]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)):
                    revert with 'NH{q', 18
                if (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) > (-1997 * Mask(112, 0, _161)) - 1:
                    revert with 'NH{q', 17
                if (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) and (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) > -1 / 997 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)):
                    revert with 'NH{q', 17
                if 997 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) > (-1000 * Mask(112, 0, _161) * mem[_217]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)):
                    revert with 'NH{q', 18
                if (997 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) > (-1997 * Mask(112, 0, _161)) - 1:
                    revert with 'NH{q', 17
                if (997 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) and (997 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) > -1 / 997 * (997 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)):
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) * (997 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) > (-1000 * Mask(112, 0, _161) * mem[_217]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161)) * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * (997 * mem[_217] / 2 * mem[_217] / 2) + (1000 * Mask(112, 0, _161) * mem[_217]) / (1994 * mem[_217] / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)):
                    revert with 'NH{q', 18
                require address(arg1)
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = (997 * (997 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _221) / (1994 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) * (997 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _221) / (1994 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _221) / (1994 * (997 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _221) / (1994 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, (997 * (997 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _221) / (1994 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) * (997 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _221) / (1994 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _221) / (1994 * (997 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _221) / (1994 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _241 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_241] == bool(mem[_241])
                _255 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_255]:
                    revert with 'NH{q', 50
                mem[_255 + 32] = stor2
                if 1 >= mem[_255]:
                    revert with 'NH{q', 50
                mem[_255 + 64] = address(arg1)
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[_255 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_255 + 100] = (997 * (997 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _221) / (1994 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161)) * (997 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _221) / (1994 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _221) / (1994 * (997 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161)) * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1000 * Mask(112, 0, _161) * _221) / (1994 * (997 * _221 / 2 * _221 / 2) + (1000 * Mask(112, 0, _161) * _221) / (1994 * _221 / 2) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))) + (1997 * Mask(112, 0, _161))
                mem[_255 + 132] = 0
                mem[_255 + 164] = 160
                mem[_255 + 260] = mem[_255]
                idx = 0
                s = _255 + 32
                t = _255 + 292
                while idx < mem[_255]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_255 + 196] = this.address
                mem[_255 + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _255 + (32 * mem[_255]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _406 = mem[_400]
                require mem[_400] <= test266151307()
                require _400 + mem[_400] + 31 < _400 + return_data.size
                _412 = mem[_400 + mem[_400]]
                if mem[_400 + mem[_400]] > test266151307():
                    revert with 'NH{q', 65
                if _400 + ceil32(return_data.size) + floor32(mem[_400 + mem[_400]]) + 1 > test266151307() or floor32(mem[_400 + mem[_400]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _400 + ceil32(return_data.size) + floor32(mem[_400 + mem[_400]]) + 1
                mem[_400 + ceil32(return_data.size)] = _412
                require _406 + (32 * _412) + 32 <= return_data.size
                idx = 0
                s = _400 + _406 + 32
                t = _400 + ceil32(return_data.size) + 32
                while idx < _412:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _580 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _586 = mem[_580]
                require mem[_580] == mem[_580]
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
                require mem[_604] == mem[_604]
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _586
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _586
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _628 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_628] == bool(mem[_628])
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _610
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _610
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _652 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_652] == bool(mem[_652])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _610
                mem[mem[64] + 100] = _586
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor2, address(arg1), _610, _586, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _676 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_676] == mem[_676]
                require mem[_676 + 32] == mem[_676 + 32]
                require mem[_676 + 64] == mem[_676 + 64]
                mem[0] = address(arg1)
                mem[32] = 10
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor10[address(arg1)])
                staticcall stor10[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _718 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _724 = mem[_718]
                require mem[_718] == mem[_718]
                mem[0] = stor10[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                mem[mem[64] + 36] = _724
                require ext_code.size(stor10[address(arg1)])
                call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor10[address(arg1)]], _724
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _748 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_748] == bool(mem[_748])
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _772 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _778 = mem[_772]
                require mem[_772] == mem[_772]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _796 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _802 = mem[_796]
                require mem[_796] == mem[_796]
                require mem[_796 + 32] == mem[_796 + 32]
                require mem[_796 + 64] == mem[_796 + 92 len 4]
                require mem[_796 + 96] == mem[_796 + 124 len 4]
                mem[mem[64] + 4] = _724
                mem[mem[64] + 36] = _778
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor10[address(arg1)]])
                call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _724, _778, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _838 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_838] == mem[_838]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _862 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_862] == mem[_862]
                require mem[_862 + 32] == mem[_862 + 32]
                require mem[_862 + 64] == mem[_862 + 92 len 4]
                require mem[_862 + 96] == mem[_862 + 124 len 4]
                if mem[_862] < _802:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_862] - _802
    else:
        mem[ceil32(return_data.size) + 100] = stor3
        mem[ceil32(return_data.size) + 132] = arg2
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, arg2
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = stor2
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg2
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _74 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _76 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = _76
        require _74 + (32 * _76) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _74 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _76:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[0] = address(arg1)
        mem[32] = 10
        require stor10[address(arg1)]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _162 = mem[_160]
        require mem[_160] == mem[_160 + 18 len 14]
        _164 = mem[_160 + 32]
        require mem[_160 + 32] == mem[_160 + 50 len 14]
        require mem[_160 + 64] == mem[_160 + 92 len 4]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _172 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _174 = mem[_172]
        require mem[_172] == mem[_172 + 12 len 20]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_180] == mem[_180 + 12 len 20]
        if address(_174) != address(arg1):
            if mem[_180 + 12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if address(_174) != stor2:
                revert with 0, 'bad LP token'
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _215 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _220 = mem[_215]
            require mem[_215] == mem[_215]
            if Mask(112, 0, _162) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, _162) and mem[_215] > -1 / 1000 * Mask(112, 0, _162):
                revert with 'NH{q', 17
            if mem[_215] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * mem[_215] / 2 > (-1997 * Mask(112, 0, _162)) - 1:
                revert with 'NH{q', 17
            if mem[_215] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * mem[_215] / 2 and mem[_215] / 2 > -1 / 997 * mem[_215] / 2:
                revert with 'NH{q', 17
            if 997 * mem[_215] / 2 * mem[_215] / 2 > (-1000 * Mask(112, 0, _162) * mem[_215]) - 1:
                revert with 'NH{q', 17
            if not (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)):
                revert with 'NH{q', 18
            if (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) > (-1997 * Mask(112, 0, _162)) - 1:
                revert with 'NH{q', 17
            if (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) and (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) > -1 / 997 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)):
                revert with 'NH{q', 17
            if 997 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) > (-1000 * Mask(112, 0, _162) * mem[_215]) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)):
                revert with 'NH{q', 18
            if (997 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) > (-1997 * Mask(112, 0, _162)) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) and (997 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) > -1 / 997 * (997 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) * (997 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) > (-1000 * Mask(112, 0, _162) * mem[_215]) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * (997 * mem[_215] / 2 * mem[_215] / 2) + (1000 * Mask(112, 0, _162) * mem[_215]) / (1994 * mem[_215] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)):
                revert with 'NH{q', 18
            require address(arg1)
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = (997 * (997 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _220) / (1994 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) * (997 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _220) / (1994 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _220) / (1994 * (997 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _220) / (1994 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, (997 * (997 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _220) / (1994 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) * (997 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _220) / (1994 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _220) / (1994 * (997 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _220) / (1994 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _239 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_239] == bool(mem[_239])
            _253 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_253]:
                revert with 'NH{q', 50
            mem[_253 + 32] = stor2
            if 1 >= mem[_253]:
                revert with 'NH{q', 50
            mem[_253 + 64] = address(arg1)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[_253 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_253 + 100] = (997 * (997 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _220) / (1994 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) * (997 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _220) / (1994 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _220) / (1994 * (997 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _220) / (1994 * (997 * _220 / 2 * _220 / 2) + (1000 * Mask(112, 0, _162) * _220) / (1994 * _220 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))
            mem[_253 + 132] = 0
            mem[_253 + 164] = 160
            mem[_253 + 260] = mem[_253]
            idx = 0
            s = _253 + 32
            t = _253 + 292
            while idx < mem[_253]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_253 + 196] = this.address
            mem[_253 + 228] = block.timestamp + 60
            require ext_code.size(stor4)
            call stor4.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _253 + (32 * mem[_253]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _402 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _408 = mem[_402]
            require mem[_402] <= test266151307()
            require _402 + mem[_402] + 31 < _402 + return_data.size
            _414 = mem[_402 + mem[_402]]
            if mem[_402 + mem[_402]] > test266151307():
                revert with 'NH{q', 65
            if _402 + ceil32(return_data.size) + floor32(mem[_402 + mem[_402]]) + 1 > test266151307() or floor32(mem[_402 + mem[_402]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _402 + ceil32(return_data.size) + floor32(mem[_402 + mem[_402]]) + 1
            mem[_402 + ceil32(return_data.size)] = _414
            require _408 + (32 * _414) + 32 <= return_data.size
            idx = 0
            s = _402 + _408 + 32
            t = _402 + ceil32(return_data.size) + 32
            while idx < _414:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _582 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _588 = mem[_582]
            require mem[_582] == mem[_582]
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
            _612 = mem[_606]
            require mem[_606] == mem[_606]
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = _588
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, _588
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _630 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_630] == bool(mem[_630])
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = _612
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, _612
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _654 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_654] == bool(mem[_654])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _612
            mem[mem[64] + 100] = _588
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor4)
            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor2, address(arg1), _612, _588, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _678 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_678] == mem[_678]
            require mem[_678 + 32] == mem[_678 + 32]
            require mem[_678 + 64] == mem[_678 + 64]
            mem[0] = address(arg1)
            mem[32] = 10
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor10[address(arg1)])
            staticcall stor10[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _720 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _726 = mem[_720]
            require mem[_720] == mem[_720]
            mem[0] = stor10[address(arg1)]
            mem[32] = 11
            mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
            mem[mem[64] + 36] = _726
            require ext_code.size(stor10[address(arg1)])
            call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor11[stor10[address(arg1)]], _726
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _750 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_750] == bool(mem[_750])
            require ext_code.size(stor11[stor10[address(arg1)]])
            staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _774 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _780 = mem[_774]
            require mem[_774] == mem[_774]
            require ext_code.size(stor11[stor10[address(arg1)]])
            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _798 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _804 = mem[_798]
            require mem[_798] == mem[_798]
            require mem[_798 + 32] == mem[_798 + 32]
            require mem[_798 + 64] == mem[_798 + 92 len 4]
            require mem[_798 + 96] == mem[_798 + 124 len 4]
            mem[mem[64] + 4] = _726
            mem[mem[64] + 36] = _780
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[stor10[address(arg1)]])
            call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _726, _780, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _840 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_840] == mem[_840]
            require ext_code.size(stor11[stor10[address(arg1)]])
            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _864 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_864] == mem[_864]
            require mem[_864 + 32] == mem[_864 + 32]
            require mem[_864 + 64] == mem[_864 + 92 len 4]
            require mem[_864 + 96] == mem[_864 + 124 len 4]
            if mem[_864] < _804:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_864] - _804
        else:
            if mem[_180 + 12 len 20] == stor2:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _208 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _216 = mem[_208]
                require mem[_208] == mem[_208]
                if Mask(112, 0, _164) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, _164) and mem[_208] > -1 / 1000 * Mask(112, 0, _164):
                    revert with 'NH{q', 17
                if mem[_208] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * mem[_208] / 2 > (-1997 * Mask(112, 0, _164)) - 1:
                    revert with 'NH{q', 17
                if mem[_208] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * mem[_208] / 2 and mem[_208] / 2 > -1 / 997 * mem[_208] / 2:
                    revert with 'NH{q', 17
                if 997 * mem[_208] / 2 * mem[_208] / 2 > (-1000 * Mask(112, 0, _164) * mem[_208]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)):
                    revert with 'NH{q', 18
                if (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) > (-1997 * Mask(112, 0, _164)) - 1:
                    revert with 'NH{q', 17
                if (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) and (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) > -1 / 997 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)):
                    revert with 'NH{q', 17
                if 997 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) > (-1000 * Mask(112, 0, _164) * mem[_208]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)):
                    revert with 'NH{q', 18
                if (997 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)) > (-1997 * Mask(112, 0, _164)) - 1:
                    revert with 'NH{q', 17
                if (997 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)) and (997 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)) > -1 / 997 * (997 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)):
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)) * (997 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)) > (-1000 * Mask(112, 0, _164) * mem[_208]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164)) * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * (997 * mem[_208] / 2 * mem[_208] / 2) + (1000 * Mask(112, 0, _164) * mem[_208]) / (1994 * mem[_208] / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)):
                    revert with 'NH{q', 18
                require address(arg1)
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = (997 * (997 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164)) * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * _216) / (1994 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)) * (997 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164)) * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * _216) / (1994 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * _216) / (1994 * (997 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164)) * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * _216) / (1994 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164))
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, (997 * (997 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164)) * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * _216) / (1994 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)) * (997 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164)) * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * _216) / (1994 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * _216) / (1994 * (997 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164)) * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * _216) / (1994 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_232] == bool(mem[_232])
                _248 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_248]:
                    revert with 'NH{q', 50
                mem[_248 + 32] = stor2
                if 1 >= mem[_248]:
                    revert with 'NH{q', 50
                mem[_248 + 64] = address(arg1)
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[_248 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_248 + 100] = (997 * (997 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164)) * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * _216) / (1994 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164)) * (997 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164)) * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * _216) / (1994 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * _216) / (1994 * (997 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164)) * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1000 * Mask(112, 0, _164) * _216) / (1994 * (997 * _216 / 2 * _216 / 2) + (1000 * Mask(112, 0, _164) * _216) / (1994 * _216 / 2) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164))) + (1997 * Mask(112, 0, _164))
                mem[_248 + 132] = 0
                mem[_248 + 164] = 160
                mem[_248 + 260] = mem[_248]
                idx = 0
                s = _248 + 32
                t = _248 + 292
                while idx < mem[_248]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_248 + 196] = this.address
                mem[_248 + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _248 + (32 * mem[_248]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _404 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _410 = mem[_404]
                require mem[_404] <= test266151307()
                require _404 + mem[_404] + 31 < _404 + return_data.size
                _416 = mem[_404 + mem[_404]]
                if mem[_404 + mem[_404]] > test266151307():
                    revert with 'NH{q', 65
                if _404 + ceil32(return_data.size) + floor32(mem[_404 + mem[_404]]) + 1 > test266151307() or floor32(mem[_404 + mem[_404]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _404 + ceil32(return_data.size) + floor32(mem[_404 + mem[_404]]) + 1
                mem[_404 + ceil32(return_data.size)] = _416
                require _410 + (32 * _416) + 32 <= return_data.size
                idx = 0
                s = _404 + _410 + 32
                t = _404 + ceil32(return_data.size) + 32
                while idx < _416:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _584 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _590 = mem[_584]
                require mem[_584] == mem[_584]
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
                _614 = mem[_608]
                require mem[_608] == mem[_608]
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _590
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _590
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _632 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_632] == bool(mem[_632])
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _614
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _614
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _656 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_656] == bool(mem[_656])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _614
                mem[mem[64] + 100] = _590
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor2, address(arg1), _614, _590, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _680 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_680] == mem[_680]
                require mem[_680 + 32] == mem[_680 + 32]
                require mem[_680 + 64] == mem[_680 + 64]
                mem[0] = address(arg1)
                mem[32] = 10
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor10[address(arg1)])
                staticcall stor10[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _722 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _728 = mem[_722]
                require mem[_722] == mem[_722]
                mem[0] = stor10[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                mem[mem[64] + 36] = _728
                require ext_code.size(stor10[address(arg1)])
                call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor10[address(arg1)]], _728
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _752 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_752] == bool(mem[_752])
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _776 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _782 = mem[_776]
                require mem[_776] == mem[_776]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _800 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _806 = mem[_800]
                require mem[_800] == mem[_800]
                require mem[_800 + 32] == mem[_800 + 32]
                require mem[_800 + 64] == mem[_800 + 92 len 4]
                require mem[_800 + 96] == mem[_800 + 124 len 4]
                mem[mem[64] + 4] = _728
                mem[mem[64] + 36] = _782
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor10[address(arg1)]])
                call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _728, _782, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _842 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_842] == mem[_842]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _866 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_866] == mem[_866]
                require mem[_866 + 32] == mem[_866 + 32]
                require mem[_866 + 64] == mem[_866 + 92 len 4]
                require mem[_866 + 96] == mem[_866 + 124 len 4]
                if mem[_866] < _806:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_866] - _806
            else:
                if mem[_180 + 12 len 20] != address(arg1):
                    revert with 0, 'bad LP token'
                if address(_174) != stor2:
                    revert with 0, 'bad LP token'
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _218 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _222 = mem[_218]
                require mem[_218] == mem[_218]
                if Mask(112, 0, _162) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, _162) and mem[_218] > -1 / 1000 * Mask(112, 0, _162):
                    revert with 'NH{q', 17
                if mem[_218] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * mem[_218] / 2 > (-1997 * Mask(112, 0, _162)) - 1:
                    revert with 'NH{q', 17
                if mem[_218] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * mem[_218] / 2 and mem[_218] / 2 > -1 / 997 * mem[_218] / 2:
                    revert with 'NH{q', 17
                if 997 * mem[_218] / 2 * mem[_218] / 2 > (-1000 * Mask(112, 0, _162) * mem[_218]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)):
                    revert with 'NH{q', 18
                if (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) > (-1997 * Mask(112, 0, _162)) - 1:
                    revert with 'NH{q', 17
                if (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) and (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) > -1 / 997 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)):
                    revert with 'NH{q', 17
                if 997 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) > (-1000 * Mask(112, 0, _162) * mem[_218]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)):
                    revert with 'NH{q', 18
                if (997 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 'NH{q', 17
                if 1994 * (997 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) > (-1997 * Mask(112, 0, _162)) - 1:
                    revert with 'NH{q', 17
                if (997 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) and (997 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) > -1 / 997 * (997 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)):
                    revert with 'NH{q', 17
                if 997 * (997 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) * (997 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) > (-1000 * Mask(112, 0, _162) * mem[_218]) - 1:
                    revert with 'NH{q', 17
                if not (1994 * (997 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162)) * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * (997 * mem[_218] / 2 * mem[_218] / 2) + (1000 * Mask(112, 0, _162) * mem[_218]) / (1994 * mem[_218] / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)):
                    revert with 'NH{q', 18
                require address(arg1)
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = (997 * (997 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _222) / (1994 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) * (997 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _222) / (1994 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _222) / (1994 * (997 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _222) / (1994 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, (997 * (997 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _222) / (1994 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) * (997 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _222) / (1994 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _222) / (1994 * (997 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _222) / (1994 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _242 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_242] == bool(mem[_242])
                _256 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_256]:
                    revert with 'NH{q', 50
                mem[_256 + 32] = stor2
                if 1 >= mem[_256]:
                    revert with 'NH{q', 50
                mem[_256 + 64] = address(arg1)
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[_256 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_256 + 100] = (997 * (997 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _222) / (1994 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162)) * (997 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _222) / (1994 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _222) / (1994 * (997 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162)) * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1000 * Mask(112, 0, _162) * _222) / (1994 * (997 * _222 / 2 * _222 / 2) + (1000 * Mask(112, 0, _162) * _222) / (1994 * _222 / 2) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))) + (1997 * Mask(112, 0, _162))
                mem[_256 + 132] = 0
                mem[_256 + 164] = 160
                mem[_256 + 260] = mem[_256]
                idx = 0
                s = _256 + 32
                t = _256 + 292
                while idx < mem[_256]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_256 + 196] = this.address
                mem[_256 + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _256 + (32 * mem[_256]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _403 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _409 = mem[_403]
                require mem[_403] <= test266151307()
                require _403 + mem[_403] + 31 < _403 + return_data.size
                _415 = mem[_403 + mem[_403]]
                if mem[_403 + mem[_403]] > test266151307():
                    revert with 'NH{q', 65
                if _403 + ceil32(return_data.size) + floor32(mem[_403 + mem[_403]]) + 1 > test266151307() or floor32(mem[_403 + mem[_403]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _403 + ceil32(return_data.size) + floor32(mem[_403 + mem[_403]]) + 1
                mem[_403 + ceil32(return_data.size)] = _415
                require _409 + (32 * _415) + 32 <= return_data.size
                idx = 0
                s = _403 + _409 + 32
                t = _403 + ceil32(return_data.size) + 32
                while idx < _415:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _583 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _589 = mem[_583]
                require mem[_583] == mem[_583]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _607 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _613 = mem[_607]
                require mem[_607] == mem[_607]
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _589
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _589
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _631 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_631] == bool(mem[_631])
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _613
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _655 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_655] == bool(mem[_655])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _613
                mem[mem[64] + 100] = _589
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor2, address(arg1), _613, _589, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _679 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_679] == mem[_679]
                require mem[_679 + 32] == mem[_679 + 32]
                require mem[_679 + 64] == mem[_679 + 64]
                mem[0] = address(arg1)
                mem[32] = 10
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor10[address(arg1)])
                staticcall stor10[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _721 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _727 = mem[_721]
                require mem[_721] == mem[_721]
                mem[0] = stor10[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                mem[mem[64] + 36] = _727
                require ext_code.size(stor10[address(arg1)])
                call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor10[address(arg1)]], _727
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _751 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_751] == bool(mem[_751])
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _775 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _781 = mem[_775]
                require mem[_775] == mem[_775]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _799 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _805 = mem[_799]
                require mem[_799] == mem[_799]
                require mem[_799 + 32] == mem[_799 + 32]
                require mem[_799 + 64] == mem[_799 + 92 len 4]
                require mem[_799 + 96] == mem[_799 + 124 len 4]
                mem[mem[64] + 4] = _727
                mem[mem[64] + 36] = _781
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor10[address(arg1)]])
                call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _727, _781, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _841 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_841] == mem[_841]
                require ext_code.size(stor11[stor10[address(arg1)]])
                staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _865 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_865] == mem[_865]
                require mem[_865 + 32] == mem[_865 + 32]
                require mem[_865 + 64] == mem[_865 + 92 len 4]
                require mem[_865 + 96] == mem[_865 + 124 len 4]
                if mem[_865] < _805:
                    revert with 'NH{q', 17
                mem[mem[64]] = mem[_865] - _805
    return memory
      from mem[64]
       len 32
}

function sub_9cacfde2(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[0] = address(arg1)
    mem[32] = 9
    require stor9[address(arg1)]
    require ext_code.size(stor9[address(arg1)])
    staticcall stor9[address(arg1)].getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor9[address(arg1)])
    staticcall stor9[address(arg1)].token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor9[address(arg1)])
    staticcall stor9[address(arg1)].token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != address(arg1):
        if ext_call.return_data[12 len 20] != address(arg1):
            revert with 0, 'bad LP token'
        if address(ext_call.return_data[0]) != stor1:
            revert with 0, 'bad LP token'
        if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * arg2 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
            revert with 'NH{q', 17
        if 997 * arg2 / 2 * arg2 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
            revert with 'NH{q', 17
        if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        require address(arg1)
        mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
        mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 96] = 2
        mem[(7 * ceil32(return_data.size)) + 128] = stor1
        mem[(7 * ceil32(return_data.size)) + 160] = address(arg1)
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
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
        require ext_code.size(address(arg4))
        call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _97 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
        _100 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
        mem[(8 * ceil32(return_data.size)) + 192] = _100
        require _97 + (32 * _100) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _97 + 224
        t = (8 * ceil32(return_data.size)) + 224
        while idx < _100:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _220 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _223 = mem[_220]
        require mem[_220] == mem[_220]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _232 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _235 = mem[_232]
        require mem[_232] == mem[_232]
        if address(arg1) == stor2:
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = _223
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, _223
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _250 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_250] == bool(mem[_250])
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = _235
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, _235
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_274] == bool(mem[_274])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _235
            mem[mem[64] + 100] = _223
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor4)
            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(arg1), _235, _223, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _298 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_298] == mem[_298]
            require mem[_298 + 32] == mem[_298 + 32]
            require mem[_298 + 64] == mem[_298 + 64]
            mem[0] = address(arg1)
            mem[32] = 9
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor9[address(arg1)])
            staticcall stor9[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _340 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _346 = mem[_340]
            require mem[_340] == mem[_340]
            mem[0] = stor9[address(arg1)]
            mem[32] = 11
            mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
            mem[mem[64] + 36] = _346
            require ext_code.size(stor9[address(arg1)])
            call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor11[stor9[address(arg1)]], _346
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _370 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_370] == bool(mem[_370])
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _394 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _400 = mem[_394]
            require mem[_394] == mem[_394]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _418 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _424 = mem[_418]
            require mem[_418] == mem[_418]
            require mem[_418 + 32] == mem[_418 + 32]
            require mem[_418 + 64] == mem[_418 + 92 len 4]
            require mem[_418 + 96] == mem[_418 + 124 len 4]
            mem[mem[64] + 4] = _346
            mem[mem[64] + 36] = _400
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[stor9[address(arg1)]])
            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _346, _400, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _460 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_460] == mem[_460]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _484 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_484] == mem[_484]
            require mem[_484 + 32] == mem[_484 + 32]
            require mem[_484 + 64] == mem[_484 + 92 len 4]
            require mem[_484 + 96] == mem[_484 + 124 len 4]
            if mem[_484] < _424:
                revert with 'NH{q', 17
            if mem[_484] - _424 < arg3:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _538 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _544 = mem[_538]
            require mem[_538] == mem[_538]
            if mem[_538] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _568 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _586 = mem[_568]
                require mem[_568] == mem[_568]
                if mem[_568] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _586
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _586
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _622 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_622] == bool(mem[_622])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _544
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _544
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _580 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_580] == bool(mem[_580])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _623 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _635 = mem[_623]
                require mem[_623] == mem[_623]
                if mem[_623] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _635
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _635
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_658] == bool(mem[_658])
        else:
            mem[mem[64] + 4] = stor3
            mem[mem[64] + 36] = _223
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, _223
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _251 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_251] == bool(mem[_251])
            mem[mem[64] + 4] = stor3
            mem[mem[64] + 36] = _235
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, _235
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_275] == bool(mem[_275])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _235
            mem[mem[64] + 100] = _223
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor3)
            call stor3.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(arg1), _235, _223, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_299] == mem[_299]
            require mem[_299 + 32] == mem[_299 + 32]
            require mem[_299 + 64] == mem[_299 + 64]
            mem[0] = address(arg1)
            mem[32] = 9
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor9[address(arg1)])
            staticcall stor9[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _341 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _347 = mem[_341]
            require mem[_341] == mem[_341]
            mem[0] = stor9[address(arg1)]
            mem[32] = 11
            mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
            mem[mem[64] + 36] = _347
            require ext_code.size(stor9[address(arg1)])
            call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor11[stor9[address(arg1)]], _347
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_371] == bool(mem[_371])
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _395 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _401 = mem[_395]
            require mem[_395] == mem[_395]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _419 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _425 = mem[_419]
            require mem[_419] == mem[_419]
            require mem[_419 + 32] == mem[_419 + 32]
            require mem[_419 + 64] == mem[_419 + 92 len 4]
            require mem[_419 + 96] == mem[_419 + 124 len 4]
            mem[mem[64] + 4] = _347
            mem[mem[64] + 36] = _401
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[stor9[address(arg1)]])
            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _347, _401, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _461 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_461] == mem[_461]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _485 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_485] == mem[_485]
            require mem[_485 + 32] == mem[_485 + 32]
            require mem[_485 + 64] == mem[_485 + 92 len 4]
            require mem[_485 + 96] == mem[_485 + 124 len 4]
            if mem[_485] < _425:
                revert with 'NH{q', 17
            if mem[_485] - _425 < arg3:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _539 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _545 = mem[_539]
            require mem[_539] == mem[_539]
            if mem[_539] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _570 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _587 = mem[_570]
                require mem[_570] == mem[_570]
                if mem[_570] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _587
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _587
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _624 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_624] == bool(mem[_624])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _545
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _545
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _581 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_581] == bool(mem[_581])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _625 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _637 = mem[_625]
                require mem[_625] == mem[_625]
                if mem[_625] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _637
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _637
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_659] == bool(mem[_659])
    else:
        if ext_call.return_data[12 len 20] == stor1:
            if Mask(112, 0, ext_call.return_data[32]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * arg2 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 * arg2 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            require address(arg1)
            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = stor1
            mem[(7 * ceil32(return_data.size)) + 160] = address(arg1)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
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
            require ext_code.size(address(arg4))
            call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _99 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _102 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = _102
            require _99 + (32 * _102) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _99 + 224
            t = (8 * ceil32(return_data.size)) + 224
            while idx < _102:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _222 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _225 = mem[_222]
            require mem[_222] == mem[_222]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _234 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _237 = mem[_234]
            require mem[_234] == mem[_234]
            if address(arg1) == stor2:
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _225
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _225
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_254] == bool(mem[_254])
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _237
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _237
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_278] == bool(mem[_278])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _237
                mem[mem[64] + 100] = _225
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _237, _225, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _302 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_302] == mem[_302]
                require mem[_302 + 32] == mem[_302 + 32]
                require mem[_302 + 64] == mem[_302 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
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
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _350
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _350
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _374 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_374] == bool(mem[_374])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _398 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _404 = mem[_398]
                require mem[_398] == mem[_398]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _428 = mem[_422]
                require mem[_422] == mem[_422]
                require mem[_422 + 32] == mem[_422 + 32]
                require mem[_422 + 64] == mem[_422 + 92 len 4]
                require mem[_422 + 96] == mem[_422 + 124 len 4]
                mem[mem[64] + 4] = _350
                mem[mem[64] + 36] = _404
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _350, _404, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _464 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_464] == mem[_464]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _488 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_488] == mem[_488]
                require mem[_488 + 32] == mem[_488 + 32]
                require mem[_488 + 64] == mem[_488 + 92 len 4]
                require mem[_488 + 96] == mem[_488 + 124 len 4]
                if mem[_488] < _428:
                    revert with 'NH{q', 17
                if mem[_488] - _428 < arg3:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _542 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _548 = mem[_542]
                require mem[_542] == mem[_542]
                if mem[_542] <= 0:
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
                    _590 = mem[_576]
                    require mem[_576] == mem[_576]
                    if mem[_576] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _590
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _590
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _630 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_630] == bool(mem[_630])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _548
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _548
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _584 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_584] == bool(mem[_584])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _631 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _643 = mem[_631]
                    require mem[_631] == mem[_631]
                    if mem[_631] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _643
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _643
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _662 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_662] == bool(mem[_662])
            else:
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _225
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _225
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_255] == bool(mem[_255])
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _237
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _237
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _279 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_279] == bool(mem[_279])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _237
                mem[mem[64] + 100] = _225
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor3)
                call stor3.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _237, _225, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_303] == mem[_303]
                require mem[_303 + 32] == mem[_303 + 32]
                require mem[_303 + 64] == mem[_303 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _345 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _351 = mem[_345]
                require mem[_345] == mem[_345]
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _351
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _351
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_375] == bool(mem[_375])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _399 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _405 = mem[_399]
                require mem[_399] == mem[_399]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _429 = mem[_423]
                require mem[_423] == mem[_423]
                require mem[_423 + 32] == mem[_423 + 32]
                require mem[_423 + 64] == mem[_423 + 92 len 4]
                require mem[_423 + 96] == mem[_423 + 124 len 4]
                mem[mem[64] + 4] = _351
                mem[mem[64] + 36] = _405
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _351, _405, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_465] == mem[_465]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _489 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_489] == mem[_489]
                require mem[_489 + 32] == mem[_489 + 32]
                require mem[_489 + 64] == mem[_489 + 92 len 4]
                require mem[_489 + 96] == mem[_489 + 124 len 4]
                if mem[_489] < _429:
                    revert with 'NH{q', 17
                if mem[_489] - _429 < arg3:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _543 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _549 = mem[_543]
                require mem[_543] == mem[_543]
                if mem[_543] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _578 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _591 = mem[_578]
                    require mem[_578] == mem[_578]
                    if mem[_578] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _591
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _591
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _632 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_632] == bool(mem[_632])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _549
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _549
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _585 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_585] == bool(mem[_585])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _645 = mem[_633]
                    require mem[_633] == mem[_633]
                    if mem[_633] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _645
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _645
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _663 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_663] == bool(mem[_663])
        else:
            if ext_call.return_data[12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor1:
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * arg2 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 * arg2 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            require address(arg1)
            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 2
            mem[(7 * ceil32(return_data.size)) + 128] = stor1
            mem[(7 * ceil32(return_data.size)) + 160] = address(arg1)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
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
            require ext_code.size(address(arg4))
            call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _98 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _101 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = _101
            require _98 + (32 * _101) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _98 + 224
            t = (8 * ceil32(return_data.size)) + 224
            while idx < _101:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
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
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _236 = mem[_233]
            require mem[_233] == mem[_233]
            if address(arg1) == stor2:
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _224
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _224
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _252 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_252] == bool(mem[_252])
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _236
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _236
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _276 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_276] == bool(mem[_276])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _236
                mem[mem[64] + 100] = _224
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _236, _224, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _300 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_300] == mem[_300]
                require mem[_300 + 32] == mem[_300 + 32]
                require mem[_300 + 64] == mem[_300 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _342 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _348 = mem[_342]
                require mem[_342] == mem[_342]
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _348
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _348
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _372 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_372] == bool(mem[_372])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _396 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _402 = mem[_396]
                require mem[_396] == mem[_396]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _426 = mem[_420]
                require mem[_420] == mem[_420]
                require mem[_420 + 32] == mem[_420 + 32]
                require mem[_420 + 64] == mem[_420 + 92 len 4]
                require mem[_420 + 96] == mem[_420 + 124 len 4]
                mem[mem[64] + 4] = _348
                mem[mem[64] + 36] = _402
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _348, _402, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _462 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_462] == mem[_462]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _486 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_486] == mem[_486]
                require mem[_486 + 32] == mem[_486 + 32]
                require mem[_486 + 64] == mem[_486 + 92 len 4]
                require mem[_486 + 96] == mem[_486 + 124 len 4]
                if mem[_486] < _426:
                    revert with 'NH{q', 17
                if mem[_486] - _426 < arg3:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _540 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _546 = mem[_540]
                require mem[_540] == mem[_540]
                if mem[_540] <= 0:
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
                    _588 = mem[_572]
                    require mem[_572] == mem[_572]
                    if mem[_572] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _588
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _588
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _626 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_626] == bool(mem[_626])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _546
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _546
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _582 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_582] == bool(mem[_582])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _639 = mem[_627]
                    require mem[_627] == mem[_627]
                    if mem[_627] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _639
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _639
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_660] == bool(mem[_660])
            else:
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _224
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _224
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _253 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_253] == bool(mem[_253])
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _236
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _236
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_277] == bool(mem[_277])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _236
                mem[mem[64] + 100] = _224
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor3)
                call stor3.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _236, _224, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_301] == mem[_301]
                require mem[_301 + 32] == mem[_301 + 32]
                require mem[_301 + 64] == mem[_301 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _343 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _349 = mem[_343]
                require mem[_343] == mem[_343]
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _349
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _349
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _373 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_373] == bool(mem[_373])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _397 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _403 = mem[_397]
                require mem[_397] == mem[_397]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _427 = mem[_421]
                require mem[_421] == mem[_421]
                require mem[_421 + 32] == mem[_421 + 32]
                require mem[_421 + 64] == mem[_421 + 92 len 4]
                require mem[_421 + 96] == mem[_421 + 124 len 4]
                mem[mem[64] + 4] = _349
                mem[mem[64] + 36] = _403
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _349, _403, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _463 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_463] == mem[_463]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _487 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_487] == mem[_487]
                require mem[_487 + 32] == mem[_487 + 32]
                require mem[_487 + 64] == mem[_487 + 92 len 4]
                require mem[_487 + 96] == mem[_487 + 124 len 4]
                if mem[_487] < _427:
                    revert with 'NH{q', 17
                if mem[_487] - _427 < arg3:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _541 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _547 = mem[_541]
                require mem[_541] == mem[_541]
                if mem[_541] <= 0:
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
                    _589 = mem[_574]
                    require mem[_574] == mem[_574]
                    if mem[_574] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _589
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _589
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _628 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_628] == bool(mem[_628])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _547
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _547
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _583 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_583] == bool(mem[_583])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _629 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _641 = mem[_629]
                    require mem[_629] == mem[_629]
                    if mem[_629] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _641
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _641
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _661 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_661] == bool(mem[_661])
}

function sub_66366543(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[0] = address(arg1)
    mem[32] = 9
    require stor9[address(arg1)]
    require ext_code.size(stor9[address(arg1)])
    staticcall stor9[address(arg1)].getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor9[address(arg1)])
    staticcall stor9[address(arg1)].token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor9[address(arg1)])
    staticcall stor9[address(arg1)].token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != address(arg1):
        if ext_call.return_data[12 len 20] != address(arg1):
            revert with 0, 'bad LP token'
        if address(ext_call.return_data[0]) != stor1:
            revert with 0, 'bad LP token'
        if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * arg2 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
            revert with 'NH{q', 17
        if 997 * arg2 / 2 * arg2 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
            revert with 'NH{q', 17
        if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        require address(arg1)
        mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
        mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 96] = 3
        mem[(7 * ceil32(return_data.size)) + 128] = stor1
        mem[(7 * ceil32(return_data.size)) + 160] = address(arg5)
        mem[(7 * ceil32(return_data.size)) + 192] = address(arg1)
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 228] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        mem[(7 * ceil32(return_data.size)) + 260] = 0
        mem[(7 * ceil32(return_data.size)) + 292] = 160
        mem[(7 * ceil32(return_data.size)) + 388] = 3
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 324] = this.address
        mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp + 60
        require ext_code.size(address(arg4))
        call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 3, mem[(7 * ceil32(return_data.size)) + 420 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _91 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
        require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 255 < (7 * ceil32(return_data.size)) + return_data.size + 224
        _94 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]) + 225 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]) + 225
        mem[(8 * ceil32(return_data.size)) + 224] = _94
        require _91 + (32 * _94) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _91 + 256
        t = (8 * ceil32(return_data.size)) + 256
        while idx < _94:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _214 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _217 = mem[_214]
        require mem[_214] == mem[_214]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _226 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _229 = mem[_226]
        require mem[_226] == mem[_226]
        if address(arg1) == stor2:
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = _217
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, _217
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _244 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_244] == bool(mem[_244])
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = _229
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, _229
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_268] == bool(mem[_268])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _229
            mem[mem[64] + 100] = _217
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor4)
            call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(arg1), _229, _217, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_292] == mem[_292]
            require mem[_292 + 32] == mem[_292 + 32]
            require mem[_292 + 64] == mem[_292 + 64]
            mem[0] = address(arg1)
            mem[32] = 9
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor9[address(arg1)])
            staticcall stor9[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _334 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _340 = mem[_334]
            require mem[_334] == mem[_334]
            mem[0] = stor9[address(arg1)]
            mem[32] = 11
            mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
            mem[mem[64] + 36] = _340
            require ext_code.size(stor9[address(arg1)])
            call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor11[stor9[address(arg1)]], _340
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _364 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_364] == bool(mem[_364])
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _388 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _394 = mem[_388]
            require mem[_388] == mem[_388]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _412 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _418 = mem[_412]
            require mem[_412] == mem[_412]
            require mem[_412 + 32] == mem[_412 + 32]
            require mem[_412 + 64] == mem[_412 + 92 len 4]
            require mem[_412 + 96] == mem[_412 + 124 len 4]
            mem[mem[64] + 4] = _340
            mem[mem[64] + 36] = _394
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[stor9[address(arg1)]])
            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _340, _394, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_454] == mem[_454]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _478 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_478] == mem[_478]
            require mem[_478 + 32] == mem[_478 + 32]
            require mem[_478 + 64] == mem[_478 + 92 len 4]
            require mem[_478 + 96] == mem[_478 + 124 len 4]
            if mem[_478] < _418:
                revert with 'NH{q', 17
            if mem[_478] - _418 < arg3:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _532 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _538 = mem[_532]
            require mem[_532] == mem[_532]
            if mem[_532] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _562 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _580 = mem[_562]
                require mem[_562] == mem[_562]
                if mem[_562] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _580
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _580
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _616 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_616] == bool(mem[_616])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _538
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _538
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _574 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_574] == bool(mem[_574])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _617 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _629 = mem[_617]
                require mem[_617] == mem[_617]
                if mem[_617] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _629
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _629
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _652 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_652] == bool(mem[_652])
        else:
            mem[mem[64] + 4] = stor3
            mem[mem[64] + 36] = _217
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, _217
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_245] == bool(mem[_245])
            mem[mem[64] + 4] = stor3
            mem[mem[64] + 36] = _229
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, _229
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _269 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_269] == bool(mem[_269])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _229
            mem[mem[64] + 100] = _217
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor3)
            call stor3.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor1, address(arg1), _229, _217, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _293 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_293] == mem[_293]
            require mem[_293 + 32] == mem[_293 + 32]
            require mem[_293 + 64] == mem[_293 + 64]
            mem[0] = address(arg1)
            mem[32] = 9
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor9[address(arg1)])
            staticcall stor9[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _335 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _341 = mem[_335]
            require mem[_335] == mem[_335]
            mem[0] = stor9[address(arg1)]
            mem[32] = 11
            mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
            mem[mem[64] + 36] = _341
            require ext_code.size(stor9[address(arg1)])
            call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor11[stor9[address(arg1)]], _341
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _365 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_365] == bool(mem[_365])
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _389 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _395 = mem[_389]
            require mem[_389] == mem[_389]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _413 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _419 = mem[_413]
            require mem[_413] == mem[_413]
            require mem[_413 + 32] == mem[_413 + 32]
            require mem[_413 + 64] == mem[_413 + 92 len 4]
            require mem[_413 + 96] == mem[_413 + 124 len 4]
            mem[mem[64] + 4] = _341
            mem[mem[64] + 36] = _395
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[stor9[address(arg1)]])
            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _341, _395, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _455 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_455] == mem[_455]
            require ext_code.size(stor11[stor9[address(arg1)]])
            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _479 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_479] == mem[_479]
            require mem[_479 + 32] == mem[_479 + 32]
            require mem[_479 + 64] == mem[_479 + 92 len 4]
            require mem[_479 + 96] == mem[_479 + 124 len 4]
            if mem[_479] < _419:
                revert with 'NH{q', 17
            if mem[_479] - _419 < arg3:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _533 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _539 = mem[_533]
            require mem[_533] == mem[_533]
            if mem[_533] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _564 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _581 = mem[_564]
                require mem[_564] == mem[_564]
                if mem[_564] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _581
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _581
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_618] == bool(mem[_618])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _539
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _539
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _575 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_575] == bool(mem[_575])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _619 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _631 = mem[_619]
                require mem[_619] == mem[_619]
                if mem[_619] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _631
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _631
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _653 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_653] == bool(mem[_653])
    else:
        if ext_call.return_data[12 len 20] == stor1:
            if Mask(112, 0, ext_call.return_data[32]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * arg2 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 * arg2 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            require address(arg1)
            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 3
            mem[(7 * ceil32(return_data.size)) + 128] = stor1
            mem[(7 * ceil32(return_data.size)) + 160] = address(arg5)
            mem[(7 * ceil32(return_data.size)) + 192] = address(arg1)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 228] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            mem[(7 * ceil32(return_data.size)) + 260] = 0
            mem[(7 * ceil32(return_data.size)) + 292] = 160
            mem[(7 * ceil32(return_data.size)) + 388] = 3
            idx = 0
            s = (7 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 324] = this.address
            mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp + 60
            require ext_code.size(address(arg4))
            call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, 3, mem[(7 * ceil32(return_data.size)) + 420 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _93 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 255 < (7 * ceil32(return_data.size)) + return_data.size + 224
            _96 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 224]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 224] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 224]) + 225 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 224]) + 225
            mem[(8 * ceil32(return_data.size)) + 224] = _96
            require _93 + (32 * _96) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _93 + 256
            t = (8 * ceil32(return_data.size)) + 256
            while idx < _96:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _219 = mem[_216]
            require mem[_216] == mem[_216]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _228 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _231 = mem[_228]
            require mem[_228] == mem[_228]
            if address(arg1) == stor2:
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _219
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _219
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _248 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_248] == bool(mem[_248])
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _231
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _231
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _272 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_272] == bool(mem[_272])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _231
                mem[mem[64] + 100] = _219
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _231, _219, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _296 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_296] == mem[_296]
                require mem[_296 + 32] == mem[_296 + 32]
                require mem[_296 + 64] == mem[_296 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _338 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _344 = mem[_338]
                require mem[_338] == mem[_338]
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _344
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _344
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _368 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_368] == bool(mem[_368])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _392 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _398 = mem[_392]
                require mem[_392] == mem[_392]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _416 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _422 = mem[_416]
                require mem[_416] == mem[_416]
                require mem[_416 + 32] == mem[_416 + 32]
                require mem[_416 + 64] == mem[_416 + 92 len 4]
                require mem[_416 + 96] == mem[_416 + 124 len 4]
                mem[mem[64] + 4] = _344
                mem[mem[64] + 36] = _398
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _344, _398, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _458 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_458] == mem[_458]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _482 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_482] == mem[_482]
                require mem[_482 + 32] == mem[_482 + 32]
                require mem[_482 + 64] == mem[_482 + 92 len 4]
                require mem[_482 + 96] == mem[_482 + 124 len 4]
                if mem[_482] < _422:
                    revert with 'NH{q', 17
                if mem[_482] - _422 < arg3:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _536 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _542 = mem[_536]
                require mem[_536] == mem[_536]
                if mem[_536] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _570 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _584 = mem[_570]
                    require mem[_570] == mem[_570]
                    if mem[_570] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _584
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _584
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _624 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_624] == bool(mem[_624])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _542
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _542
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _578 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_578] == bool(mem[_578])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _625 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _637 = mem[_625]
                    require mem[_625] == mem[_625]
                    if mem[_625] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _637
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _637
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _656 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_656] == bool(mem[_656])
            else:
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _219
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _219
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _249 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_249] == bool(mem[_249])
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _231
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _231
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _273 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_273] == bool(mem[_273])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _231
                mem[mem[64] + 100] = _219
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor3)
                call stor3.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _231, _219, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _297 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_297] == mem[_297]
                require mem[_297 + 32] == mem[_297 + 32]
                require mem[_297 + 64] == mem[_297 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _339 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _345 = mem[_339]
                require mem[_339] == mem[_339]
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _345
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _345
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _369 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_369] == bool(mem[_369])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _393 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _399 = mem[_393]
                require mem[_393] == mem[_393]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _423 = mem[_417]
                require mem[_417] == mem[_417]
                require mem[_417 + 32] == mem[_417 + 32]
                require mem[_417 + 64] == mem[_417 + 92 len 4]
                require mem[_417 + 96] == mem[_417 + 124 len 4]
                mem[mem[64] + 4] = _345
                mem[mem[64] + 36] = _399
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _345, _399, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _459 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_459] == mem[_459]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _483 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_483] == mem[_483]
                require mem[_483 + 32] == mem[_483 + 32]
                require mem[_483 + 64] == mem[_483 + 92 len 4]
                require mem[_483 + 96] == mem[_483 + 124 len 4]
                if mem[_483] < _423:
                    revert with 'NH{q', 17
                if mem[_483] - _423 < arg3:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _537 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _543 = mem[_537]
                require mem[_537] == mem[_537]
                if mem[_537] <= 0:
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
                    _585 = mem[_572]
                    require mem[_572] == mem[_572]
                    if mem[_572] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _585
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _585
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _626 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_626] == bool(mem[_626])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _543
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _543
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _579 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_579] == bool(mem[_579])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _639 = mem[_627]
                    require mem[_627] == mem[_627]
                    if mem[_627] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _639
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _639
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _657 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_657] == bool(mem[_657])
        else:
            if ext_call.return_data[12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor1:
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * arg2 / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
                revert with 'NH{q', 17
            if 997 * arg2 / 2 * arg2 / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            require address(arg1)
            mem[(6 * ceil32(return_data.size)) + 100] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(stor1)
            call stor1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 96] = 3
            mem[(7 * ceil32(return_data.size)) + 128] = stor1
            mem[(7 * ceil32(return_data.size)) + 160] = address(arg5)
            mem[(7 * ceil32(return_data.size)) + 192] = address(arg1)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 228] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(7 * ceil32(return_data.size)) + 260] = 0
            mem[(7 * ceil32(return_data.size)) + 292] = 160
            mem[(7 * ceil32(return_data.size)) + 388] = 3
            idx = 0
            s = (7 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 324] = this.address
            mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp + 60
            require ext_code.size(address(arg4))
            call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 3, mem[(7 * ceil32(return_data.size)) + 420 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _92 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 255 < (7 * ceil32(return_data.size)) + return_data.size + 224
            _95 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]) + 225 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 224]) + 225
            mem[(8 * ceil32(return_data.size)) + 224] = _95
            require _92 + (32 * _95) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _92 + 256
            t = (8 * ceil32(return_data.size)) + 256
            while idx < _95:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _215 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _218 = mem[_215]
            require mem[_215] == mem[_215]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _227 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _230 = mem[_227]
            require mem[_227] == mem[_227]
            if address(arg1) == stor2:
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _218
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _218
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _246 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_246] == bool(mem[_246])
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = _230
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, _230
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _270 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_270] == bool(mem[_270])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _230
                mem[mem[64] + 100] = _218
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor4)
                call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _230, _218, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _294 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_294] == mem[_294]
                require mem[_294 + 32] == mem[_294 + 32]
                require mem[_294 + 64] == mem[_294 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _336 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _342 = mem[_336]
                require mem[_336] == mem[_336]
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _342
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _342
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _366 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_366] == bool(mem[_366])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _390 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _396 = mem[_390]
                require mem[_390] == mem[_390]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _414 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _420 = mem[_414]
                require mem[_414] == mem[_414]
                require mem[_414 + 32] == mem[_414 + 32]
                require mem[_414 + 64] == mem[_414 + 92 len 4]
                require mem[_414 + 96] == mem[_414 + 124 len 4]
                mem[mem[64] + 4] = _342
                mem[mem[64] + 36] = _396
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _342, _396, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _456 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_456] == mem[_456]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _480 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_480] == mem[_480]
                require mem[_480 + 32] == mem[_480 + 32]
                require mem[_480 + 64] == mem[_480 + 92 len 4]
                require mem[_480 + 96] == mem[_480 + 124 len 4]
                if mem[_480] < _420:
                    revert with 'NH{q', 17
                if mem[_480] - _420 < arg3:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _534 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _540 = mem[_534]
                require mem[_534] == mem[_534]
                if mem[_534] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _566 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _582 = mem[_566]
                    require mem[_566] == mem[_566]
                    if mem[_566] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _582
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _582
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _620 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_620] == bool(mem[_620])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _540
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _540
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _576 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_576] == bool(mem[_576])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _621 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _633 = mem[_621]
                    require mem[_621] == mem[_621]
                    if mem[_621] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _633
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _633
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _654 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_654] == bool(mem[_654])
            else:
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _218
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _218
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _247 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_247] == bool(mem[_247])
                mem[mem[64] + 4] = stor3
                mem[mem[64] + 36] = _230
                require ext_code.size(stor1)
                call stor1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, _230
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _271 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_271] == bool(mem[_271])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _230
                mem[mem[64] + 100] = _218
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor3)
                call stor3.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor1, address(arg1), _230, _218, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_295] == mem[_295]
                require mem[_295 + 32] == mem[_295 + 32]
                require mem[_295 + 64] == mem[_295 + 64]
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _337 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _343 = mem[_337]
                require mem[_337] == mem[_337]
                mem[0] = stor9[address(arg1)]
                mem[32] = 11
                mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                mem[mem[64] + 36] = _343
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor11[stor9[address(arg1)]], _343
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_367] == bool(mem[_367])
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _397 = mem[_391]
                require mem[_391] == mem[_391]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _421 = mem[_415]
                require mem[_415] == mem[_415]
                require mem[_415 + 32] == mem[_415 + 32]
                require mem[_415 + 64] == mem[_415 + 92 len 4]
                require mem[_415 + 96] == mem[_415 + 124 len 4]
                mem[mem[64] + 4] = _343
                mem[mem[64] + 36] = _397
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(stor11[stor9[address(arg1)]])
                call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _343, _397, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _457 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_457] == mem[_457]
                require ext_code.size(stor11[stor9[address(arg1)]])
                staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _481 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_481] == mem[_481]
                require mem[_481 + 32] == mem[_481 + 32]
                require mem[_481 + 64] == mem[_481 + 92 len 4]
                require mem[_481 + 96] == mem[_481 + 124 len 4]
                if mem[_481] < _421:
                    revert with 'NH{q', 17
                if mem[_481] - _421 < arg3:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _535 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _541 = mem[_535]
                require mem[_535] == mem[_535]
                if mem[_535] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _568 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _583 = mem[_568]
                    require mem[_568] == mem[_568]
                    if mem[_568] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _583
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _583
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _622 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_622] == bool(mem[_622])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _541
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _541
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _577 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_577] == bool(mem[_577])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _623 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _635 = mem[_623]
                    require mem[_623] == mem[_623]
                    if mem[_623] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _635
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _635
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _655 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_655] == bool(mem[_655])
}



}
