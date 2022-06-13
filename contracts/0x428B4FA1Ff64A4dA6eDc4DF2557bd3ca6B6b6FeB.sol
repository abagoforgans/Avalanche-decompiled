contract main {




// =====================  Runtime code  =====================


#
#  - sub_14535932(?)
#
address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_066693d9(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == address(cd[164])
    require cd[196] == address(cd[196])
    require cd[228] == address(cd[228])
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[ceil32(return_data.size) + 100] = address(cd[36])
    mem[ceil32(return_data.size) + 132] = cd[4] / 2
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), cd[4] / 2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = cd[4] / 2
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = (2 * ceil32(return_data.size)) + 292
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, cd[4]), 0, 160, address(this.address), block.timestamp + 60, ('cd', 100).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 100).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _34 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _35 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    require _34 + (32 * _35) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _34 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _35:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    require address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    mem[mem[64] + 4] = address(cd[68])
    mem[mem[64] + 36] = cd[4] / 2
    require ext_code.size(address(('cd', 132)[0]))
    call address(('cd', 132)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[4] / 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _54 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_54] == bool(mem[_54])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _56 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4] / 2
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = mem[64] + 196
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_56 + 100] = this.address
    mem[_56 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[68]))
    call address(cd[68]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _56 + (32 * ('cd', 132).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _74 = mem[_73]
    require mem[_73] <= test266151307()
    require _73 + mem[_73] + 31 < _73 + return_data.size
    _75 = mem[_73 + mem[_73]]
    if mem[_73 + mem[_73]] > test266151307():
        revert with 'NH{q', 65
    if _73 + ceil32(return_data.size) + floor32(mem[_73 + mem[_73]]) + 1 > test266151307() or floor32(mem[_73 + mem[_73]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _73 + ceil32(return_data.size) + floor32(mem[_73 + mem[_73]]) + 1
    mem[_73 + ceil32(return_data.size)] = _75
    require _74 + (32 * _75) + 32 <= return_data.size
    idx = 0
    s = _73 + _74 + 32
    t = _73 + ceil32(return_data.size) + 32
    while idx < _75:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _98 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _99 = mem[_98]
    require mem[_98] == mem[_98]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
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
    mem[mem[64] + 4] = address(cd[164])
    mem[mem[64] + 36] = _99
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[164]), _99
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _106 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_106] == bool(mem[_106])
    mem[mem[64] + 4] = address(cd[164])
    mem[mem[64] + 36] = _103
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[164]), _103
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_110] == bool(mem[_110])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = _103
    mem[mem[64] + 100] = _99
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = this.address
    mem[mem[64] + 228] = block.timestamp + 60
    require ext_code.size(address(cd[164]))
    call address(cd[164]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor1, address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), _103, _99, 0, 0, address(this.address), block.timestamp + 60
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _114 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_114] == mem[_114]
    require mem[_114 + 32] == mem[_114 + 32]
    require mem[_114 + 64] == mem[_114 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _120 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _121 = mem[_120]
    require mem[_120] == mem[_120]
    mem[mem[64] + 4] = address(cd[228])
    mem[mem[64] + 36] = _121
    require ext_code.size(address(cd[196]))
    call address(cd[196]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[228]), _121
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _124 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_124] == bool(mem[_124])
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _129 = mem[_128]
    require mem[_128] == mem[_128]
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _132 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _133 = mem[_132]
    require mem[_132] == mem[_132]
    require mem[_132 + 32] == mem[_132 + 32]
    require mem[_132 + 64] == mem[_132 + 92 len 4]
    require mem[_132 + 96] == mem[_132 + 124 len 4]
    mem[mem[64] + 4] = _121
    mem[mem[64] + 36] = _129
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(address(cd[228]))
    call address(cd[228]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _121, _129, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _139 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_139] == mem[_139]
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _143 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_143] == mem[_143]
    require mem[_143 + 32] == mem[_143 + 32]
    require mem[_143 + 64] == mem[_143 + 92 len 4]
    require mem[_143 + 96] == mem[_143 + 124 len 4]
    if mem[_143] < _133:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_143] - _133
    return memory
      from mem[64]
       len 32
}

function sub_f04dc2b2(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0x4c09cf4e00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    mem[(2 * ceil32(return_data.size)) + 132] = stor0
    mem[(2 * ceil32(return_data.size)) + 164] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    require ext_code.size(stor2)
    staticcall stor2.findBestPath(uint256 arg1, address arg2, address arg3, uint256 arg4) with:
            gas gas_remaining wei
           args arg1, stor0, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 96
    if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + 192
    _14 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _15 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + _14 + 128
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 192
    _34 = mem[(2 * ceil32(return_data.size)) + _12 + 128]
    require mem[(2 * ceil32(return_data.size)) + _12 + 128] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _35 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96] > test266151307():
        revert with 'NH{q', 65
    _36 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1
    mem[_36] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    require _12 + _34 + (32 * _35) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _34 + 128
    t = _36 + 32
    while idx < _35:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 128] = _36
    _106 = mem[(2 * ceil32(return_data.size)) + _12 + 160]
    require mem[(2 * ceil32(return_data.size)) + _12 + 160] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _107 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96] > test266151307():
        revert with 'NH{q', 65
    _108 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1
    mem[_108] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    require _12 + _106 + (32 * _107) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _106 + 128
    t = _108 + 32
    while idx < _107:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 160] = _108
    _180 = mem[64]
    mem[64] = mem[64] + 128
    mem[_180] = arg1
    mem[_180 + 32] = 0
    mem[_180 + 64] = _108
    mem[_180 + 96] = mem[(4 * ceil32(return_data.size)) + 128]
    if address(arg2):
        _183 = mem[64]
        mem[mem[64]] = 0x6bf2df8600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _191 = mem[_108]
        mem[mem[64] + 228] = mem[_108]
        idx = 0
        s = _108 + 32
        t = mem[64] + 260
        while idx < _191:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _259 = mem[_180 + 96]
        mem[_183 + 196] = (32 * _191) + 160
        _261 = mem[_259]
        mem[_183 + (32 * _191) + 260] = mem[_259]
        idx = 0
        s = _259 + 32
        t = _183 + (32 * _191) + 292
        while idx < _261:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_183 + 36] = this.address
        mem[_183 + 68] = 0
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _183 + (32 * _191) + (32 * _261) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _335 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _337 = mem[_335]
        require mem[_335] == mem[_335]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _337
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _337
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _343 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_343] == bool(mem[_343])
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _351 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _353 = mem[_351]
        require mem[_351] == mem[_351]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _359 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _361 = mem[_359]
        require mem[_359] == mem[_359]
        require mem[_359 + 32] == mem[_359 + 32]
        require mem[_359 + 64] == mem[_359 + 92 len 4]
        require mem[_359 + 96] == mem[_359 + 124 len 4]
        mem[mem[64] + 4] = _337
        mem[mem[64] + 36] = _353
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg4))
        call address(arg4).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _337, _353, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _373 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_373] == mem[_373]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _381 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_381] == mem[_381]
        require mem[_381 + 32] == mem[_381 + 32]
        require mem[_381 + 64] == mem[_381 + 92 len 4]
        require mem[_381 + 96] == mem[_381 + 124 len 4]
        if mem[_381] < _361:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_381] - _361
    else:
        _184 = mem[64]
        mem[mem[64]] = 0xf035038200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _192 = mem[_108]
        mem[mem[64] + 228] = mem[_108]
        idx = 0
        s = _108 + 32
        t = mem[64] + 260
        while idx < _192:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _260 = mem[_180 + 96]
        mem[_184 + 196] = (32 * _192) + 160
        _262 = mem[_260]
        mem[_184 + (32 * _192) + 260] = mem[_260]
        idx = 0
        s = _260 + 32
        t = _184 + (32 * _192) + 292
        while idx < _262:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_184 + 36] = this.address
        mem[_184 + 68] = 0
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _184 + (32 * _192) + (32 * _262) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _336 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _338 = mem[_336]
        require mem[_336] == mem[_336]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _338
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _338
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _344 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_344] == bool(mem[_344])
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _354 = mem[_352]
        require mem[_352] == mem[_352]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _362 = mem[_360]
        require mem[_360] == mem[_360]
        require mem[_360 + 32] == mem[_360 + 32]
        require mem[_360 + 64] == mem[_360 + 92 len 4]
        require mem[_360 + 96] == mem[_360 + 124 len 4]
        mem[mem[64] + 4] = _338
        mem[mem[64] + 36] = _354
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg4))
        call address(arg4).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _338, _354, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _374 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_374] == mem[_374]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _382 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_382] == mem[_382]
        require mem[_382 + 32] == mem[_382 + 32]
        require mem[_382 + 64] == mem[_382 + 92 len 4]
        require mem[_382 + 96] == mem[_382 + 124 len 4]
        if mem[_382] < _362:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_382] - _362
    return memory
      from mem[64]
       len 32
}

function sub_eb9711a3(?) payable {
    require calldata.size - 4 >= 288
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == address(cd[164])
    require cd[196] == address(cd[196])
    require cd[228] == address(cd[228])
    require cd[260] == cd[260]
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[ceil32(return_data.size) + 100] = address(cd[36])
    mem[ceil32(return_data.size) + 132] = cd[4] / 2
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), cd[4] / 2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = cd[4] / 2
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = (2 * ceil32(return_data.size)) + 292
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, cd[4]), 0, 160, address(this.address), block.timestamp + 60, ('cd', 100).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 100).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _32 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _33 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    require _32 + (32 * _33) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _32 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _33:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    require address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    mem[mem[64] + 4] = address(cd[68])
    mem[mem[64] + 36] = cd[4] / 2
    require ext_code.size(address(('cd', 132)[0]))
    call address(('cd', 132)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[4] / 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _52 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_52] == bool(mem[_52])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _54 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4] / 2
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = mem[64] + 196
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_54 + 100] = this.address
    mem[_54 + 132] = block.timestamp + 60
    require ext_code.size(address(cd[68]))
    call address(cd[68]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _54 + (32 * ('cd', 132).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _71 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _72 = mem[_71]
    require mem[_71] <= test266151307()
    require _71 + mem[_71] + 31 < _71 + return_data.size
    _73 = mem[_71 + mem[_71]]
    if mem[_71 + mem[_71]] > test266151307():
        revert with 'NH{q', 65
    if _71 + ceil32(return_data.size) + floor32(mem[_71 + mem[_71]]) + 1 > test266151307() or floor32(mem[_71 + mem[_71]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _71 + ceil32(return_data.size) + floor32(mem[_71 + mem[_71]]) + 1
    mem[_71 + ceil32(return_data.size)] = _73
    require _72 + (32 * _73) + 32 <= return_data.size
    idx = 0
    s = _71 + _72 + 32
    t = _71 + ceil32(return_data.size) + 32
    while idx < _73:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _96 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _97 = mem[_96]
    require mem[_96] == mem[_96]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _100 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _101 = mem[_100]
    require mem[_100] == mem[_100]
    mem[mem[64] + 4] = address(cd[164])
    mem[mem[64] + 36] = _97
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[164]), _97
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _104 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_104] == bool(mem[_104])
    mem[mem[64] + 4] = address(cd[164])
    mem[mem[64] + 36] = _101
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[164]), _101
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _108 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_108] == bool(mem[_108])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = _101
    mem[mem[64] + 100] = _97
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = this.address
    mem[mem[64] + 228] = block.timestamp + 60
    require ext_code.size(address(cd[164]))
    call address(cd[164]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor1, address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), _101, _97, 0, 0, address(this.address), block.timestamp + 60
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _112 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_112] == mem[_112]
    require mem[_112 + 32] == mem[_112 + 32]
    require mem[_112 + 64] == mem[_112 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _118 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _119 = mem[_118]
    require mem[_118] == mem[_118]
    mem[mem[64] + 4] = address(cd[228])
    mem[mem[64] + 36] = _119
    require ext_code.size(address(cd[196]))
    call address(cd[196]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[228]), _119
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _122 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_122] == bool(mem[_122])
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _126 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _127 = mem[_126]
    require mem[_126] == mem[_126]
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _130 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _131 = mem[_130]
    require mem[_130] == mem[_130]
    require mem[_130 + 32] == mem[_130 + 32]
    require mem[_130 + 64] == mem[_130 + 92 len 4]
    require mem[_130 + 96] == mem[_130 + 124 len 4]
    mem[mem[64] + 4] = _119
    mem[mem[64] + 36] = _127
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(address(cd[228]))
    call address(cd[228]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _119, _127, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _137 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_137] == mem[_137]
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _141 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_141] == mem[_141]
    require mem[_141 + 32] == mem[_141 + 32]
    require mem[_141 + 64] == mem[_141 + 92 len 4]
    require mem[_141 + 96] == mem[_141 + 124 len 4]
    if mem[_141] < _131:
        revert with 'NH{q', 17
    if mem[_141] - _131 < cd[260]:
        revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _150 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _151 = mem[_150]
    require mem[_150] == mem[_150]
    if mem[_150] <= 0:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _155 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _158 = mem[_155]
        require mem[_155] == mem[_155]
        if mem[_155] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _158
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _158
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _164 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_164] == bool(mem[_164])
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _151
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _151
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _157 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_157] == bool(mem[_157])
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _165 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _167 = mem[_165]
        require mem[_165] == mem[_165]
        if mem[_165] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _167
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _167
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_170] == bool(mem[_170])
}

function sub_10c8af80(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] < calldata.size + -cd[100] - 67
    require cd[(cd[100] + ('cd', 100)[0] + 36)] <= test266151307()
    require cd[100] + ('cd', 100)[0] + 68 <= calldata.size - (32 * cd[(cd[100] + ('cd', 100)[0] + 36)])
    if cd[(cd[100] + ('cd', 100)[0] + 36)] < 1:
        revert with 'NH{q', 17
    if cd[(cd[100] + ('cd', 100)[0] + 36)] - 1 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
        revert with 'NH{q', 50
    require cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)] == address(cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)])
    require address(cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)])
    if 0 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
        revert with 'NH{q', 50
    require cd[(cd[100] + ('cd', 100)[0] + 68)] == address(cd[(cd[100] + ('cd', 100)[0] + 68)])
    mem[ceil32(return_data.size) + 100] = address(('cd', 68)[0])
    mem[ceil32(return_data.size) + 132] = cd[4]
    require ext_code.size(address(cd[(cd[100] + ('cd', 100)[0] + 68)]))
    call address(cd[(cd[100] + ('cd', 100)[0] + 68)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(('cd', 68)[0]), cd[4]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = cd[4]
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = cd[(cd[100] + ('cd', 100)[0] + 36)]
    idx = 0
    s = cd[100] + ('cd', 100)[0] + 68
    t = (2 * ceil32(return_data.size)) + 292
    while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], 0, 160, address(this.address), block.timestamp + 60, cd[(cd[100] + ('cd', 100)[0] + 36)], mem[(2 * ceil32(return_data.size)) + 292 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _16 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _17 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    require _16 + (32 * _17) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _16 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _17:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 100).length <= 1:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _95 = mem[_93]
        require mem[_93] == mem[_93]
        mem[mem[64] + 4] = address(cd[132])
        mem[mem[64] + 36] = _95
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[132]), _95
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _105 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_105] == bool(mem[_105])
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _112 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _115 = mem[_112]
        require mem[_112] == mem[_112]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _121 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _123 = mem[_121]
        require mem[_121] == mem[_121]
        require mem[_121 + 32] == mem[_121 + 32]
        require mem[_121 + 64] == mem[_121 + 92 len 4]
        require mem[_121 + 96] == mem[_121 + 124 len 4]
        mem[mem[64] + 4] = _95
        mem[mem[64] + 36] = _115
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(cd[132]))
        call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _95, _115, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _139 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_139] == mem[_139]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _148 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_148] == mem[_148]
        require mem[_148 + 32] == mem[_148 + 32]
        require mem[_148 + 64] == mem[_148 + 92 len 4]
        require mem[_148 + 96] == mem[_148 + 124 len 4]
        if mem[_148] < _123:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_148] - _123
    else:
        idx = 1
        while idx < ('cd', 100).length:
            require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
            require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])
            if 0 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                revert with 'NH{q', 50
            require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]))
            staticcall address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _177 = mem[_176]
            require mem[_176] == mem[_176]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
            require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])
            if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] < 1:
                revert with 'NH{q', 17
            if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                revert with 'NH{q', 50
            require cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
            require address(cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
            if 0 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                revert with 'NH{q', 50
            require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 36] = _177
            require ext_code.size(address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]))
            call address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[68] + 36)]), _177
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _195 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_195] == bool(mem[_195])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            _200 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _177
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
            s = 0
            t = cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68
            u = mem[64] + 196
            while s < cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_200 + 100] = this.address
            mem[_200 + 132] = block.timestamp + 60
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _217 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _218 = mem[_217]
            require mem[_217] <= test266151307()
            require _217 + mem[_217] + 31 < _217 + return_data.size
            _219 = mem[_217 + mem[_217]]
            if mem[_217 + mem[_217]] > test266151307():
                revert with 'NH{q', 65
            if _217 + ceil32(return_data.size) + floor32(mem[_217 + mem[_217]]) + 1 > test266151307() or floor32(mem[_217 + mem[_217]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _217 + ceil32(return_data.size) + floor32(mem[_217 + mem[_217]]) + 1
            mem[_217 + ceil32(return_data.size)] = _219
            require _218 + (32 * _219) + 32 <= return_data.size
            s = 0
            t = _217 + _218 + 32
            u = _217 + ceil32(return_data.size) + 32
            while s < _219:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if _219 == -1:
                revert with 'NH{q', 17
            s = _219 + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _172 = mem[_171]
        require mem[_171] == mem[_171]
        mem[mem[64] + 4] = address(cd[132])
        mem[mem[64] + 36] = _172
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[132]), _172
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_179] == bool(mem[_179])
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _183 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _184 = mem[_183]
        require mem[_183] == mem[_183]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _187 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _188 = mem[_187]
        require mem[_187] == mem[_187]
        require mem[_187 + 32] == mem[_187 + 32]
        require mem[_187 + 64] == mem[_187 + 92 len 4]
        require mem[_187 + 96] == mem[_187 + 124 len 4]
        mem[mem[64] + 4] = _172
        mem[mem[64] + 36] = _184
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(cd[132]))
        call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _172, _184, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _198 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_198] == mem[_198]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_203] == mem[_203]
        require mem[_203 + 32] == mem[_203 + 32]
        require mem[_203 + 64] == mem[_203 + 92 len 4]
        require mem[_203 + 96] == mem[_203 + 124 len 4]
        if mem[_203] < _188:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_203] - _188
    return memory
      from mem[64]
       len 32
}

function sub_9c910c7e(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = arg1 / 2
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg1 / 2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0x4c09cf4e00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg1 / 2
    mem[(2 * ceil32(return_data.size)) + 132] = stor0
    mem[(2 * ceil32(return_data.size)) + 164] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    require ext_code.size(stor2)
    staticcall stor2.findBestPath(uint256 arg1, address arg2, address arg3, uint256 arg4) with:
            gas gas_remaining wei
           args Mask(255, 1, arg1), stor0, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 96
    if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + 192
    _14 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _15 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + _14 + 128
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 192
    _25 = mem[(2 * ceil32(return_data.size)) + _12 + 128]
    require mem[(2 * ceil32(return_data.size)) + _12 + 128] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _26 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96] > test266151307():
        revert with 'NH{q', 65
    _27 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1
    mem[_27] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    require _12 + _25 + (32 * _26) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _25 + 128
    t = _27 + 32
    while idx < _26:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 128] = _27
    _91 = mem[(2 * ceil32(return_data.size)) + _12 + 160]
    require mem[(2 * ceil32(return_data.size)) + _12 + 160] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _92 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96] > test266151307():
        revert with 'NH{q', 65
    _93 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1
    mem[_93] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    require _12 + _91 + (32 * _92) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _91 + 128
    t = _93 + 32
    while idx < _92:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 160] = _93
    _153 = mem[64]
    mem[64] = mem[64] + 128
    mem[_153] = arg1 / 2
    mem[_153 + 32] = 0
    mem[_153 + 64] = _93
    mem[_153 + 96] = mem[(4 * ceil32(return_data.size)) + 128]
    if address(arg2):
        _156 = mem[64]
        mem[mem[64]] = 0x6bf2df8600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1 / 2
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _164 = mem[_93]
        mem[mem[64] + 228] = mem[_93]
        idx = 0
        s = _93 + 32
        t = mem[64] + 260
        while idx < _164:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _218 = mem[_153 + 96]
        mem[mem[64] + 196] = (32 * _164) + 160
        _220 = mem[_218]
        mem[mem[64] + (32 * _164) + 260] = mem[_218]
        idx = 0
        s = _218 + 32
        t = mem[64] + (32 * _164) + 292
        while idx < _220:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_156 + 36] = this.address
        mem[_156 + 68] = 0
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _156 + (32 * _164) + (32 * _220) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _280 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _282 = mem[_280]
        require mem[_280] == mem[_280]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _288 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _290 = mem[_288]
        require mem[_288] == mem[_288]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _282
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _282
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _296 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_296] == bool(mem[_296])
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _290
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _290
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _304 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_304] == bool(mem[_304])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _290
        mem[mem[64] + 100] = _282
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor0, address(arg2), _290, _282, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _312 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_312] == mem[_312]
        require mem[_312 + 32] == mem[_312 + 32]
        require mem[_312 + 64] == mem[_312 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg5))
        staticcall address(arg5).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _324 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _326 = mem[_324]
        require mem[_324] == mem[_324]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = _326
        require ext_code.size(address(arg5))
        call address(arg5).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg6), _326
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _332 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_332] == bool(mem[_332])
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _340 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _342 = mem[_340]
        require mem[_340] == mem[_340]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _348 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _350 = mem[_348]
        require mem[_348] == mem[_348]
        require mem[_348 + 32] == mem[_348 + 32]
        require mem[_348 + 64] == mem[_348 + 92 len 4]
        require mem[_348 + 96] == mem[_348 + 124 len 4]
        mem[mem[64] + 4] = _326
        mem[mem[64] + 36] = _342
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg6))
        call address(arg6).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _326, _342, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _362 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_362] == mem[_362]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _370 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_370] == mem[_370]
        require mem[_370 + 32] == mem[_370 + 32]
        require mem[_370 + 64] == mem[_370 + 92 len 4]
        require mem[_370 + 96] == mem[_370 + 124 len 4]
        if mem[_370] < _350:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_370] - _350
    else:
        _157 = mem[64]
        mem[mem[64]] = 0xf035038200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1 / 2
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _165 = mem[_93]
        mem[mem[64] + 228] = mem[_93]
        idx = 0
        s = _93 + 32
        t = mem[64] + 260
        while idx < _165:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _219 = mem[_153 + 96]
        mem[_157 + 196] = (32 * _165) + 160
        _221 = mem[_219]
        mem[_157 + (32 * _165) + 260] = mem[_219]
        idx = 0
        s = _219 + 32
        t = _157 + (32 * _165) + 292
        while idx < _221:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_157 + 36] = this.address
        mem[_157 + 68] = 0
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _157 + (32 * _165) + (32 * _221) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _281 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _283 = mem[_281]
        require mem[_281] == mem[_281]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _289 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _291 = mem[_289]
        require mem[_289] == mem[_289]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _283
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _283
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _297 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_297] == bool(mem[_297])
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _291
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _291
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _305 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_305] == bool(mem[_305])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _291
        mem[mem[64] + 100] = _283
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor0, address(arg2), _291, _283, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _313 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_313] == mem[_313]
        require mem[_313 + 32] == mem[_313 + 32]
        require mem[_313 + 64] == mem[_313 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg5))
        staticcall address(arg5).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _325 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _327 = mem[_325]
        require mem[_325] == mem[_325]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = _327
        require ext_code.size(address(arg5))
        call address(arg5).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg6), _327
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _333 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_333] == bool(mem[_333])
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _341 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _343 = mem[_341]
        require mem[_341] == mem[_341]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _349 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _351 = mem[_349]
        require mem[_349] == mem[_349]
        require mem[_349 + 32] == mem[_349 + 32]
        require mem[_349 + 64] == mem[_349 + 92 len 4]
        require mem[_349 + 96] == mem[_349 + 124 len 4]
        mem[mem[64] + 4] = _327
        mem[mem[64] + 36] = _343
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg6))
        call address(arg6).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _327, _343, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _363 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_363] == mem[_363]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _371 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_371] == mem[_371]
        require mem[_371 + 32] == mem[_371 + 32]
        require mem[_371 + 64] == mem[_371 + 92 len 4]
        require mem[_371 + 96] == mem[_371 + 124 len 4]
        if mem[_371] < _351:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_371] - _351
    return memory
      from mem[64]
       len 32
}

function sub_180dc264(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == arg5
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0x4c09cf4e00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    mem[(2 * ceil32(return_data.size)) + 132] = stor0
    mem[(2 * ceil32(return_data.size)) + 164] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    require ext_code.size(stor2)
    staticcall stor2.findBestPath(uint256 arg1, address arg2, address arg3, uint256 arg4) with:
            gas gas_remaining wei
           args arg1, stor0, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 96
    if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + 192
    _14 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _15 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + _14 + 128
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 192
    _27 = mem[(2 * ceil32(return_data.size)) + _12 + 128]
    require mem[(2 * ceil32(return_data.size)) + _12 + 128] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _28 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96] > test266151307():
        revert with 'NH{q', 65
    _29 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1
    mem[_29] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    require _12 + _27 + (32 * _28) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _27 + 128
    t = _29 + 32
    while idx < _28:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 128] = _29
    _99 = mem[(2 * ceil32(return_data.size)) + _12 + 160]
    require mem[(2 * ceil32(return_data.size)) + _12 + 160] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _100 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96] > test266151307():
        revert with 'NH{q', 65
    _101 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1
    mem[_101] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    require _12 + _99 + (32 * _100) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _99 + 128
    t = _101 + 32
    while idx < _100:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 160] = _101
    _173 = mem[64]
    mem[64] = mem[64] + 128
    mem[_173] = arg1
    mem[_173 + 32] = 0
    mem[_173 + 64] = _101
    mem[_173 + 96] = mem[(4 * ceil32(return_data.size)) + 128]
    if address(arg2):
        _176 = mem[64]
        mem[mem[64]] = 0x6bf2df8600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _184 = mem[_101]
        mem[mem[64] + 228] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + 260
        while idx < _184:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _252 = mem[_173 + 96]
        mem[_176 + 196] = (32 * _184) + 160
        _254 = mem[_252]
        mem[_176 + (32 * _184) + 260] = mem[_252]
        idx = 0
        s = _252 + 32
        t = _176 + (32 * _184) + 292
        while idx < _254:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_176 + 36] = this.address
        mem[_176 + 68] = 0
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _176 + (32 * _184) + (32 * _254) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _328 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _330 = mem[_328]
        require mem[_328] == mem[_328]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _330
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _330
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _336 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_336] == bool(mem[_336])
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _344 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _346 = mem[_344]
        require mem[_344] == mem[_344]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _354 = mem[_352]
        require mem[_352] == mem[_352]
        require mem[_352 + 32] == mem[_352 + 32]
        require mem[_352 + 64] == mem[_352 + 92 len 4]
        require mem[_352 + 96] == mem[_352 + 124 len 4]
        mem[mem[64] + 4] = _330
        mem[mem[64] + 36] = _346
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg4))
        call address(arg4).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _330, _346, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _366 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_366] == mem[_366]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _374 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_374] == mem[_374]
        require mem[_374 + 32] == mem[_374 + 32]
        require mem[_374 + 64] == mem[_374 + 92 len 4]
        require mem[_374 + 96] == mem[_374 + 124 len 4]
        if mem[_374] < _354:
            revert with 'NH{q', 17
        if mem[_374] - _354 < arg5:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _392 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _394 = mem[_392]
        require mem[_392] == mem[_392]
        if mem[_392] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _402 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _408 = mem[_402]
            require mem[_402] == mem[_402]
            if mem[_402] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _408
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _408
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_420] == bool(mem[_420])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _394
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _394
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _406 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_406] == bool(mem[_406])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _421 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _425 = mem[_421]
            require mem[_421] == mem[_421]
            if mem[_421] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _425
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _425
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_432] == bool(mem[_432])
    else:
        _177 = mem[64]
        mem[mem[64]] = 0xf035038200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _185 = mem[_101]
        mem[mem[64] + 228] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + 260
        while idx < _185:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _253 = mem[_173 + 96]
        mem[mem[64] + 196] = (32 * _185) + 160
        _255 = mem[_253]
        mem[mem[64] + (32 * _185) + 260] = mem[_253]
        idx = 0
        s = _253 + 32
        t = mem[64] + (32 * _185) + 292
        while idx < _255:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_177 + 36] = this.address
        mem[_177 + 68] = 0
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _177 + (32 * _185) + (32 * _255) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _329 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _331 = mem[_329]
        require mem[_329] == mem[_329]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _331
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _331
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _337 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_337] == bool(mem[_337])
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _345 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _347 = mem[_345]
        require mem[_345] == mem[_345]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _353 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _355 = mem[_353]
        require mem[_353] == mem[_353]
        require mem[_353 + 32] == mem[_353 + 32]
        require mem[_353 + 64] == mem[_353 + 92 len 4]
        require mem[_353 + 96] == mem[_353 + 124 len 4]
        mem[mem[64] + 4] = _331
        mem[mem[64] + 36] = _347
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg4))
        call address(arg4).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _331, _347, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _367 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_367] == mem[_367]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _375 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_375] == mem[_375]
        require mem[_375 + 32] == mem[_375 + 32]
        require mem[_375 + 64] == mem[_375 + 92 len 4]
        require mem[_375 + 96] == mem[_375 + 124 len 4]
        if mem[_375] < _355:
            revert with 'NH{q', 17
        if mem[_375] - _355 < arg5:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
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
        if mem[_393] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _404 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _409 = mem[_404]
            require mem[_404] == mem[_404]
            if mem[_404] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _409
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _409
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_422] == bool(mem[_422])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _395
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _395
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_407] == bool(mem[_407])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _423 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _427 = mem[_423]
            require mem[_423] == mem[_423]
            if mem[_423] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _427
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _427
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _433 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_433] == bool(mem[_433])
}

function sub_726172ee(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require ('cd', 68)[0] == address(('cd', 68)[0])
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] < calldata.size + -cd[100] - 67
    require cd[(cd[100] + ('cd', 100)[0] + 36)] <= test266151307()
    require cd[100] + ('cd', 100)[0] + 68 <= calldata.size - (32 * cd[(cd[100] + ('cd', 100)[0] + 36)])
    if cd[(cd[100] + ('cd', 100)[0] + 36)] < 1:
        revert with 'NH{q', 17
    if cd[(cd[100] + ('cd', 100)[0] + 36)] - 1 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
        revert with 'NH{q', 50
    require cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)] == address(cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)])
    require address(cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)])
    if 0 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
        revert with 'NH{q', 50
    require cd[(cd[100] + ('cd', 100)[0] + 68)] == address(cd[(cd[100] + ('cd', 100)[0] + 68)])
    mem[ceil32(return_data.size) + 100] = address(('cd', 68)[0])
    mem[ceil32(return_data.size) + 132] = cd[4]
    require ext_code.size(address(cd[(cd[100] + ('cd', 100)[0] + 68)]))
    call address(cd[(cd[100] + ('cd', 100)[0] + 68)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(('cd', 68)[0]), cd[4]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = cd[4]
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = cd[(cd[100] + ('cd', 100)[0] + 36)]
    idx = 0
    s = cd[100] + ('cd', 100)[0] + 68
    t = (2 * ceil32(return_data.size)) + 292
    while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], 0, 160, address(this.address), block.timestamp + 60, cd[(cd[100] + ('cd', 100)[0] + 36)], mem[(2 * ceil32(return_data.size)) + 292 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _92 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _93 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    require _92 + (32 * _93) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _92 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _93:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 100).length <= 1:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _169 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _171 = mem[_169]
        require mem[_169] == mem[_169]
        mem[mem[64] + 4] = address(cd[132])
        mem[mem[64] + 36] = _171
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[132]), _171
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_181] == bool(mem[_181])
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _191 = mem[_188]
        require mem[_188] == mem[_188]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _199 = mem[_197]
        require mem[_197] == mem[_197]
        require mem[_197 + 32] == mem[_197 + 32]
        require mem[_197 + 64] == mem[_197 + 92 len 4]
        require mem[_197 + 96] == mem[_197 + 124 len 4]
        mem[mem[64] + 4] = _171
        mem[mem[64] + 36] = _191
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(cd[132]))
        call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _171, _191, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_215] == mem[_215]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _224 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_224] == mem[_224]
        require mem[_224 + 32] == mem[_224 + 32]
        require mem[_224 + 64] == mem[_224 + 92 len 4]
        require mem[_224 + 96] == mem[_224 + 124 len 4]
        if mem[_224] < _199:
            revert with 'NH{q', 17
        if mem[_224] - _199 < cd[164]:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _247 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _250 = mem[_247]
        require mem[_247] == mem[_247]
        if mem[_247] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _263 = mem[_259]
            require mem[_259] == mem[_259]
            if mem[_259] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _263
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _263
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _276 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_276] == bool(mem[_276])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _250
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _250
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_261] == bool(mem[_261])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _279 = mem[_277]
            require mem[_277] == mem[_277]
            if mem[_277] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _279
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _279
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _287 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_287] == bool(mem[_287])
    else:
        idx = 1
        while idx < ('cd', 100).length:
            require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
            require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])
            if 0 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                revert with 'NH{q', 50
            require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]))
            staticcall address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _270 = mem[_268]
            require mem[_268] == mem[_268]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 100).length:
                revert with 'NH{q', 50
            require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
            require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])
            if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] < 1:
                revert with 'NH{q', 17
            if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                revert with 'NH{q', 50
            require cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
            require address(cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
            if 0 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                revert with 'NH{q', 50
            require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 36] = _270
            require ext_code.size(address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]))
            call address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[68] + 36)]), _270
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _298 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_298] == bool(mem[_298])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            _303 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _270
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
            s = 0
            t = cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68
            u = mem[64] + 196
            while s < cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_303 + 100] = this.address
            mem[_303 + 132] = block.timestamp + 60
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _329 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _332 = mem[_329]
            require mem[_329] <= test266151307()
            require _329 + mem[_329] + 31 < _329 + return_data.size
            _334 = mem[_329 + mem[_329]]
            if mem[_329 + mem[_329]] > test266151307():
                revert with 'NH{q', 65
            if _329 + ceil32(return_data.size) + floor32(mem[_329 + mem[_329]]) + 1 > test266151307() or floor32(mem[_329 + mem[_329]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _329 + ceil32(return_data.size) + floor32(mem[_329 + mem[_329]]) + 1
            mem[_329 + ceil32(return_data.size)] = _334
            require _332 + (32 * _334) + 32 <= return_data.size
            s = 0
            t = _329 + _332 + 32
            u = _329 + ceil32(return_data.size) + 32
            while s < _334:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if _334 == -1:
                revert with 'NH{q', 17
            s = _334 + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _256 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _258 = mem[_256]
        require mem[_256] == mem[_256]
        mem[mem[64] + 4] = address(cd[132])
        mem[mem[64] + 36] = _258
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[132]), _258
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _272 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_272] == bool(mem[_272])
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _282 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _283 = mem[_282]
        require mem[_282] == mem[_282]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _289 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _291 = mem[_289]
        require mem[_289] == mem[_289]
        require mem[_289 + 32] == mem[_289 + 32]
        require mem[_289 + 64] == mem[_289 + 92 len 4]
        require mem[_289 + 96] == mem[_289 + 124 len 4]
        mem[mem[64] + 4] = _258
        mem[mem[64] + 36] = _283
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(cd[132]))
        call address(cd[132]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _258, _283, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_301] == mem[_301]
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _306 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_306] == mem[_306]
        require mem[_306 + 32] == mem[_306 + 32]
        require mem[_306 + 64] == mem[_306 + 92 len 4]
        require mem[_306 + 96] == mem[_306 + 124 len 4]
        if mem[_306] < _291:
            revert with 'NH{q', 17
        if mem[_306] - _291 < cd[164]:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _321 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _322 = mem[_321]
        require mem[_321] == mem[_321]
        if mem[_321] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
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
            if mem[_327] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _331
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _331
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _341 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_341] == bool(mem[_341])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _322
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _322
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _330 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_330] == bool(mem[_330])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _342 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _344 = mem[_342]
            require mem[_342] == mem[_342]
            if mem[_342] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _344
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _344
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _347 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_347] == bool(mem[_347])
}

function sub_dcedcdb3(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == arg7
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = arg1 / 2
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg1 / 2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0x4c09cf4e00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg1 / 2
    mem[(2 * ceil32(return_data.size)) + 132] = stor0
    mem[(2 * ceil32(return_data.size)) + 164] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    require ext_code.size(stor2)
    staticcall stor2.findBestPath(uint256 arg1, address arg2, address arg3, uint256 arg4) with:
            gas gas_remaining wei
           args Mask(255, 1, arg1), stor0, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 96
    if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + 192
    _14 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _15 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + _14 + 128
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 192
    _22 = mem[(2 * ceil32(return_data.size)) + _12 + 128]
    require mem[(2 * ceil32(return_data.size)) + _12 + 128] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _23 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96] > test266151307():
        revert with 'NH{q', 65
    _24 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1
    mem[_24] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    require _12 + _22 + (32 * _23) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _22 + 128
    t = _24 + 32
    while idx < _23:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 128] = _24
    _88 = mem[(2 * ceil32(return_data.size)) + _12 + 160]
    require mem[(2 * ceil32(return_data.size)) + _12 + 160] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _89 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96] > test266151307():
        revert with 'NH{q', 65
    _90 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1
    mem[_90] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    require _12 + _88 + (32 * _89) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _88 + 128
    t = _90 + 32
    while idx < _89:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 160] = _90
    _150 = mem[64]
    mem[64] = mem[64] + 128
    mem[_150] = arg1 / 2
    mem[_150 + 32] = 0
    mem[_150 + 64] = _90
    mem[_150 + 96] = mem[(4 * ceil32(return_data.size)) + 128]
    if address(arg2):
        _153 = mem[64]
        mem[mem[64]] = 0x6bf2df8600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1 / 2
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _161 = mem[_90]
        mem[mem[64] + 228] = mem[_90]
        idx = 0
        s = _90 + 32
        t = mem[64] + 260
        while idx < _161:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _215 = mem[_150 + 96]
        mem[_153 + 196] = (32 * _161) + 160
        _217 = mem[_215]
        mem[_153 + (32 * _161) + 260] = mem[_215]
        idx = 0
        s = _215 + 32
        t = _153 + (32 * _161) + 292
        while idx < _217:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_153 + 36] = this.address
        mem[_153 + 68] = 0
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _153 + (32 * _161) + (32 * _217) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _277 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _279 = mem[_277]
        require mem[_277] == mem[_277]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _285 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _287 = mem[_285]
        require mem[_285] == mem[_285]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _279
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _279
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _293 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_293] == bool(mem[_293])
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _287
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _287
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_301] == bool(mem[_301])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _287
        mem[mem[64] + 100] = _279
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor0, address(arg2), _287, _279, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _309 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_309] == mem[_309]
        require mem[_309 + 32] == mem[_309 + 32]
        require mem[_309 + 64] == mem[_309 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg5))
        staticcall address(arg5).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _321 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _323 = mem[_321]
        require mem[_321] == mem[_321]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = _323
        require ext_code.size(address(arg5))
        call address(arg5).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg6), _323
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _329 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_329] == bool(mem[_329])
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _337 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _339 = mem[_337]
        require mem[_337] == mem[_337]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _345 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _347 = mem[_345]
        require mem[_345] == mem[_345]
        require mem[_345 + 32] == mem[_345 + 32]
        require mem[_345 + 64] == mem[_345 + 92 len 4]
        require mem[_345 + 96] == mem[_345 + 124 len 4]
        mem[mem[64] + 4] = _323
        mem[mem[64] + 36] = _339
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg6))
        call address(arg6).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _323, _339, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _359 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_359] == mem[_359]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _367 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_367] == mem[_367]
        require mem[_367 + 32] == mem[_367 + 32]
        require mem[_367 + 64] == mem[_367 + 92 len 4]
        require mem[_367 + 96] == mem[_367 + 124 len 4]
        if mem[_367] < _347:
            revert with 'NH{q', 17
        if mem[_367] - _347 < arg7:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _387 = mem[_385]
        require mem[_385] == mem[_385]
        if mem[_385] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _395 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _401 = mem[_395]
            require mem[_395] == mem[_395]
            if mem[_395] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _401
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _401
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _413 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_413] == bool(mem[_413])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _387
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _387
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _399 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_399] == bool(mem[_399])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _414 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _418 = mem[_414]
            require mem[_414] == mem[_414]
            if mem[_414] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _418
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _418
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _425 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_425] == bool(mem[_425])
    else:
        _154 = mem[64]
        mem[mem[64]] = 0xf035038200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1 / 2
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _162 = mem[_90]
        mem[mem[64] + 228] = mem[_90]
        idx = 0
        s = _90 + 32
        t = mem[64] + 260
        while idx < _162:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _216 = mem[_150 + 96]
        mem[mem[64] + 196] = (32 * _162) + 160
        _218 = mem[_216]
        mem[mem[64] + (32 * _162) + 260] = mem[_216]
        idx = 0
        s = _216 + 32
        t = mem[64] + (32 * _162) + 292
        while idx < _218:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_154 + 36] = this.address
        mem[_154 + 68] = 0
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _154 + (32 * _162) + (32 * _218) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _278 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _280 = mem[_278]
        require mem[_278] == mem[_278]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _286 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _288 = mem[_286]
        require mem[_286] == mem[_286]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _280
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _280
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _294 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_294] == bool(mem[_294])
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _288
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _288
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _302 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_302] == bool(mem[_302])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _288
        mem[mem[64] + 100] = _280
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor0, address(arg2), _288, _280, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _310 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_310] == mem[_310]
        require mem[_310 + 32] == mem[_310 + 32]
        require mem[_310 + 64] == mem[_310 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg5))
        staticcall address(arg5).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _322 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _324 = mem[_322]
        require mem[_322] == mem[_322]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = _324
        require ext_code.size(address(arg5))
        call address(arg5).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg6), _324
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _330 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_330] == bool(mem[_330])
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _338 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _340 = mem[_338]
        require mem[_338] == mem[_338]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _346 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _348 = mem[_346]
        require mem[_346] == mem[_346]
        require mem[_346 + 32] == mem[_346 + 32]
        require mem[_346 + 64] == mem[_346 + 92 len 4]
        require mem[_346 + 96] == mem[_346 + 124 len 4]
        mem[mem[64] + 4] = _324
        mem[mem[64] + 36] = _340
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg6))
        call address(arg6).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _324, _340, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_360] == mem[_360]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _368 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_368] == mem[_368]
        require mem[_368 + 32] == mem[_368 + 32]
        require mem[_368 + 64] == mem[_368 + 92 len 4]
        require mem[_368 + 96] == mem[_368 + 124 len 4]
        if mem[_368] < _348:
            revert with 'NH{q', 17
        if mem[_368] - _348 < arg7:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _386 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _388 = mem[_386]
        require mem[_386] == mem[_386]
        if mem[_386] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _397 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _402 = mem[_397]
            require mem[_397] == mem[_397]
            if mem[_397] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _402
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _402
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_415] == bool(mem[_415])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _388
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _388
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _400 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_400] == bool(mem[_400])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _420 = mem[_416]
            require mem[_416] == mem[_416]
            if mem[_416] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _420
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _420
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_426] == bool(mem[_426])
}

function sub_bfd26763(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    require cd[196] == address(cd[196])
    require cd[228] == cd[228]
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require address(cd[164])
    require ext_code.size(address(cd[164]))
    staticcall address(cd[164]).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(cd[164]))
    staticcall address(cd[164]).token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(cd[164]))
    staticcall address(cd[164]).token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != address(cd[36]):
        if ext_call.return_data[12 len 20] != address(cd[36]):
            revert with 0, 'bad LP token'
        if address(ext_call.return_data[0]) != stor0:
            revert with 0, 'bad LP token'
        if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) and cd[4] > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if cd[4] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * cd[4] / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if cd[4] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * cd[4] / 2 and cd[4] / 2 > -1 / 997 * cd[4] / 2:
            revert with 'NH{q', 17
        if 997 * cd[4] / 2 * cd[4] / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) - 1:
            revert with 'NH{q', 17
        if not (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 'NH{q', 17
        if 1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 'NH{q', 17
        if 997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if 997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) - 1:
            revert with 'NH{q', 17
        if not (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require ('cd', 68)[0] == address(('cd', 68)[0])
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[0] < calldata.size + -cd[100] - 67
        require cd[(cd[100] + ('cd', 100)[0] + 36)] <= test266151307()
        require cd[100] + ('cd', 100)[0] + 68 <= calldata.size - (32 * cd[(cd[100] + ('cd', 100)[0] + 36)])
        if cd[(cd[100] + ('cd', 100)[0] + 36)] < 1:
            revert with 'NH{q', 17
        if cd[(cd[100] + ('cd', 100)[0] + 36)] - 1 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
            revert with 'NH{q', 50
        require cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)] == address(cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)])
        require address(cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)])
        if 0 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
            revert with 'NH{q', 50
        require cd[(cd[100] + ('cd', 100)[0] + 68)] == address(cd[(cd[100] + ('cd', 100)[0] + 68)])
        mem[(6 * ceil32(return_data.size)) + 100] = address(('cd', 68)[0])
        mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        require ext_code.size(address(cd[(cd[100] + ('cd', 100)[0] + 68)]))
        call address(cd[(cd[100] + ('cd', 100)[0] + 68)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(('cd', 68)[0]), (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
        mem[(7 * ceil32(return_data.size)) + 132] = 0
        mem[(7 * ceil32(return_data.size)) + 164] = 160
        mem[(7 * ceil32(return_data.size)) + 260] = cd[(cd[100] + ('cd', 100)[0] + 36)]
        idx = 0
        s = cd[100] + ('cd', 100)[0] + 68
        t = (7 * ceil32(return_data.size)) + 292
        while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 196] = this.address
        mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp + 60
        require ext_code.size(address(('cd', 68)[0]))
        call address(('cd', 68)[0]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, cd[(cd[100] + ('cd', 100)[0] + 36)], mem[(7 * ceil32(return_data.size)) + 292 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _196 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
        require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
        _199 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
        mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
        require _196 + (32 * _199) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _196 + 128
        t = (8 * ceil32(return_data.size)) + 128
        while idx < _199:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if ('cd', 100).length <= 1:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _379 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _385 = mem[_379]
            require mem[_379] == mem[_379]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _412 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _421 = mem[_412]
            require mem[_412] == mem[_412]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _385
            require ext_code.size(address(cd[36]))
            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _385
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _439 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_439] == bool(mem[_439])
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _421
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _421
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _463 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_463] == bool(mem[_463])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _421
            mem[mem[64] + 100] = _385
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[132]))
            call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor0, address(cd[36]), _421, _385, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _502 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_502] == mem[_502]
            require mem[_502 + 32] == mem[_502 + 32]
            require mem[_502 + 64] == mem[_502 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[164]))
            staticcall address(cd[164]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _553 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _562 = mem[_553]
            require mem[_553] == mem[_553]
            mem[mem[64] + 4] = address(cd[196])
            mem[mem[64] + 36] = _562
            require ext_code.size(address(cd[164]))
            call address(cd[164]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[196]), _562
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _583 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_583] == bool(mem[_583])
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _607 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _610 = mem[_607]
            require mem[_607] == mem[_607]
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _640 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _643 = mem[_640]
            require mem[_640] == mem[_640]
            require mem[_640 + 32] == mem[_640 + 32]
            require mem[_640 + 64] == mem[_640 + 92 len 4]
            require mem[_640 + 96] == mem[_640 + 124 len 4]
            mem[mem[64] + 4] = _562
            mem[mem[64] + 36] = _610
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(address(cd[196]))
            call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _562, _610, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _685 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_685] == mem[_685]
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _709 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_709] == mem[_709]
            require mem[_709 + 32] == mem[_709 + 32]
            require mem[_709 + 64] == mem[_709 + 92 len 4]
            require mem[_709 + 96] == mem[_709 + 124 len 4]
            if mem[_709] < _643:
                revert with 'NH{q', 17
            if mem[_709] - _643 < cd[228]:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _763 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _772 = mem[_763]
            require mem[_763] == mem[_763]
            if mem[_763] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _802 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _811 = mem[_802]
                require mem[_802] == mem[_802]
                if mem[_802] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _811
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _811
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _841 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_841] == bool(mem[_841])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _772
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _772
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _808 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_808] == bool(mem[_808])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _842 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _848 = mem[_842]
                require mem[_842] == mem[_842]
                if mem[_842] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _848
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _848
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_889] == bool(mem[_889])
        else:
            idx = 1
            while idx < ('cd', 100).length:
                require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
                require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])
                if 0 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                    revert with 'NH{q', 50
                require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]))
                staticcall address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _619 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _628 = mem[_619]
                require mem[_619] == mem[_619]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                if idx >= ('cd', 100).length:
                    revert with 'NH{q', 50
                require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
                require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
                require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])
                if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] < 1:
                    revert with 'NH{q', 17
                if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                    revert with 'NH{q', 50
                require cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
                require address(cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
                if 0 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                    revert with 'NH{q', 50
                require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64] + 36] = _628
                require ext_code.size(address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]))
                call address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[68] + 36)]), _628
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _704 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_704] == bool(mem[_704])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                _721 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _628
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                s = 0
                t = cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68
                u = mem[64] + 196
                while s < cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                    require cd[t] == address(cd[t])
                    mem[u] = address(cd[t])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_721 + 100] = this.address
                mem[_721 + 132] = block.timestamp + 60
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len u + -mem[64] - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _858 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _866 = mem[_858]
                require mem[_858] <= test266151307()
                require _858 + mem[_858] + 31 < _858 + return_data.size
                _872 = mem[_858 + mem[_858]]
                if mem[_858 + mem[_858]] > test266151307():
                    revert with 'NH{q', 65
                if _858 + ceil32(return_data.size) + floor32(mem[_858 + mem[_858]]) + 1 > test266151307() or floor32(mem[_858 + mem[_858]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _858 + ceil32(return_data.size) + floor32(mem[_858 + mem[_858]]) + 1
                mem[_858 + ceil32(return_data.size)] = _872
                require _866 + (32 * _872) + 32 <= return_data.size
                s = 0
                t = _858 + _866 + 32
                u = _858 + ceil32(return_data.size) + 32
                while s < _872:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if _872 == -1:
                    revert with 'NH{q', 17
                s = _872 + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _592 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _595 = mem[_592]
            require mem[_592] == mem[_592]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _631 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _634 = mem[_631]
            require mem[_631] == mem[_631]
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _595
            require ext_code.size(address(cd[36]))
            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _595
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _656 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_656] == bool(mem[_656])
            mem[mem[64] + 4] = address(cd[132])
            mem[mem[64] + 36] = _634
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[132]), _634
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _676 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_676] == bool(mem[_676])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _634
            mem[mem[64] + 100] = _595
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[132]))
            call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor0, address(cd[36]), _634, _595, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _733 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_733] == mem[_733]
            require mem[_733 + 32] == mem[_733 + 32]
            require mem[_733 + 64] == mem[_733 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[164]))
            staticcall address(cd[164]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _793 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _799 = mem[_793]
            require mem[_793] == mem[_793]
            mem[mem[64] + 4] = address(cd[196])
            mem[mem[64] + 36] = _799
            require ext_code.size(address(cd[164]))
            call address(cd[164]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[196]), _799
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _829 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_829] == bool(mem[_829])
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _865 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _871 = mem[_865]
            require mem[_865] == mem[_865]
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _895 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _904 = mem[_895]
            require mem[_895] == mem[_895]
            require mem[_895 + 32] == mem[_895 + 32]
            require mem[_895 + 64] == mem[_895 + 92 len 4]
            require mem[_895 + 96] == mem[_895 + 124 len 4]
            mem[mem[64] + 4] = _799
            mem[mem[64] + 36] = _871
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(address(cd[196]))
            call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _799, _871, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _922 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_922] == mem[_922]
            require ext_code.size(address(cd[196]))
            staticcall address(cd[196]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _934 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_934] == mem[_934]
            require mem[_934 + 32] == mem[_934 + 32]
            require mem[_934 + 64] == mem[_934 + 92 len 4]
            require mem[_934 + 96] == mem[_934 + 124 len 4]
            if mem[_934] < _904:
                revert with 'NH{q', 17
            if mem[_934] - _904 < cd[228]:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _961 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _964 = mem[_961]
            require mem[_961] == mem[_961]
            if mem[_961] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _976 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _985 = mem[_976]
                require mem[_976] == mem[_976]
                if mem[_976] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _985
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _985
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1006 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1006] == bool(mem[_1006])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _964
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _964
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _982 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_982] == bool(mem[_982])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1007 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1013 = mem[_1007]
                require mem[_1007] == mem[_1007]
                if mem[_1007] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1013
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1013
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1024 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1024] == bool(mem[_1024])
    else:
        if ext_call.return_data[12 len 20] == stor0:
            if Mask(112, 0, ext_call.return_data[32]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) and cd[4] > -1 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if cd[4] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * cd[4] / 2 > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if cd[4] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * cd[4] / 2 and cd[4] / 2 > -1 / 997 * cd[4] / 2:
                revert with 'NH{q', 17
            if 997 * cd[4] / 2 * cd[4] / 2 > (-1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) - 1:
                revert with 'NH{q', 17
            if not (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > (-1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            if 0 >= ('cd', 100).length:
                revert with 'NH{q', 50
            require ('cd', 100)[0] < calldata.size + -cd[100] - 67
            require cd[(cd[100] + ('cd', 100)[0] + 36)] <= test266151307()
            require cd[100] + ('cd', 100)[0] + 68 <= calldata.size - (32 * cd[(cd[100] + ('cd', 100)[0] + 36)])
            if cd[(cd[100] + ('cd', 100)[0] + 36)] < 1:
                revert with 'NH{q', 17
            if cd[(cd[100] + ('cd', 100)[0] + 36)] - 1 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
                revert with 'NH{q', 50
            require cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)] == address(cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)])
            require address(cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)])
            if 0 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
                revert with 'NH{q', 50
            require cd[(cd[100] + ('cd', 100)[0] + 68)] == address(cd[(cd[100] + ('cd', 100)[0] + 68)])
            mem[(6 * ceil32(return_data.size)) + 100] = address(('cd', 68)[0])
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            require ext_code.size(address(cd[(cd[100] + ('cd', 100)[0] + 68)]))
            call address(cd[(cd[100] + ('cd', 100)[0] + 68)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 68)[0]), (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
            mem[(7 * ceil32(return_data.size)) + 132] = 0
            mem[(7 * ceil32(return_data.size)) + 164] = 160
            mem[(7 * ceil32(return_data.size)) + 260] = cd[(cd[100] + ('cd', 100)[0] + 36)]
            idx = 0
            s = cd[100] + ('cd', 100)[0] + 68
            t = (7 * ceil32(return_data.size)) + 292
            while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 196] = this.address
            mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp + 60
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, cd[(cd[100] + ('cd', 100)[0] + 36)], mem[(7 * ceil32(return_data.size)) + 292 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _198 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
            _201 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
            require _198 + (32 * _201) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _198 + 128
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _201:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if ('cd', 100).length <= 1:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _381 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _389 = mem[_381]
                require mem[_381] == mem[_381]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _414 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _425 = mem[_414]
                require mem[_414] == mem[_414]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _389
                require ext_code.size(address(cd[36]))
                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _389
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _441 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_441] == bool(mem[_441])
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _425
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _425
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_465] == bool(mem[_465])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _425
                mem[mem[64] + 100] = _389
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[132]))
                call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor0, address(cd[36]), _425, _389, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _504 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_504] == mem[_504]
                require mem[_504 + 32] == mem[_504 + 32]
                require mem[_504 + 64] == mem[_504 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[164]))
                staticcall address(cd[164]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _555 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _566 = mem[_555]
                require mem[_555] == mem[_555]
                mem[mem[64] + 4] = address(cd[196])
                mem[mem[64] + 36] = _566
                require ext_code.size(address(cd[164]))
                call address(cd[164]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[196]), _566
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _585 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_585] == bool(mem[_585])
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _609 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _614 = mem[_609]
                require mem[_609] == mem[_609]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _642 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _647 = mem[_642]
                require mem[_642] == mem[_642]
                require mem[_642 + 32] == mem[_642 + 32]
                require mem[_642 + 64] == mem[_642 + 92 len 4]
                require mem[_642 + 96] == mem[_642 + 124 len 4]
                mem[mem[64] + 4] = _566
                mem[mem[64] + 36] = _614
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(address(cd[196]))
                call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _566, _614, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _687 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_687] == mem[_687]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _711 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_711] == mem[_711]
                require mem[_711 + 32] == mem[_711 + 32]
                require mem[_711 + 64] == mem[_711 + 92 len 4]
                require mem[_711 + 96] == mem[_711 + 124 len 4]
                if mem[_711] < _647:
                    revert with 'NH{q', 17
                if mem[_711] - _647 < cd[228]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _769 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _774 = mem[_769]
                require mem[_769] == mem[_769]
                if mem[_769] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _806 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _813 = mem[_806]
                    require mem[_806] == mem[_806]
                    if mem[_806] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _813
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _813
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _845 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_845] == bool(mem[_845])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _774
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _774
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _810 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_810] == bool(mem[_810])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _854 = mem[_846]
                    require mem[_846] == mem[_846]
                    if mem[_846] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _854
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _854
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == bool(mem[_893])
            else:
                idx = 1
                while idx < ('cd', 100).length:
                    require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
                    require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])
                    if 0 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                        revert with 'NH{q', 50
                    require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]))
                    staticcall address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _621 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _630 = mem[_621]
                    require mem[_621] == mem[_621]
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
                    require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])
                    if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] < 1:
                        revert with 'NH{q', 17
                    if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                        revert with 'NH{q', 50
                    require cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
                    require address(cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
                    if 0 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                        revert with 'NH{q', 50
                    require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 36] = _630
                    require ext_code.size(address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]))
                    call address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[68] + 36)]), _630
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _708 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_708] == bool(mem[_708])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    _723 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _630
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                    s = 0
                    t = cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68
                    u = mem[64] + 196
                    while s < cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                        require cd[t] == address(cd[t])
                        mem[u] = address(cd[t])
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_723 + 100] = this.address
                    mem[_723 + 132] = block.timestamp + 60
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len u + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _864 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _870 = mem[_864]
                    require mem[_864] <= test266151307()
                    require _864 + mem[_864] + 31 < _864 + return_data.size
                    _876 = mem[_864 + mem[_864]]
                    if mem[_864 + mem[_864]] > test266151307():
                        revert with 'NH{q', 65
                    if _864 + ceil32(return_data.size) + floor32(mem[_864 + mem[_864]]) + 1 > test266151307() or floor32(mem[_864 + mem[_864]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _864 + ceil32(return_data.size) + floor32(mem[_864 + mem[_864]]) + 1
                    mem[_864 + ceil32(return_data.size)] = _876
                    require _870 + (32 * _876) + 32 <= return_data.size
                    s = 0
                    t = _864 + _870 + 32
                    u = _864 + ceil32(return_data.size) + 32
                    while s < _876:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if _876 == -1:
                        revert with 'NH{q', 17
                    s = _876 + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _594 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _597 = mem[_594]
                require mem[_594] == mem[_594]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _633 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _636 = mem[_633]
                require mem[_633] == mem[_633]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _597
                require ext_code.size(address(cd[36]))
                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _597
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _660 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_660] == bool(mem[_660])
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _636
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _636
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _678 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_678] == bool(mem[_678])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _636
                mem[mem[64] + 100] = _597
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[132]))
                call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor0, address(cd[36]), _636, _597, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _735 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_735] == mem[_735]
                require mem[_735 + 32] == mem[_735 + 32]
                require mem[_735 + 64] == mem[_735 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[164]))
                staticcall address(cd[164]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _795 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _801 = mem[_795]
                require mem[_795] == mem[_795]
                mem[mem[64] + 4] = address(cd[196])
                mem[mem[64] + 36] = _801
                require ext_code.size(address(cd[164]))
                call address(cd[164]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[196]), _801
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _831 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_831] == bool(mem[_831])
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _869 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _875 = mem[_869]
                require mem[_869] == mem[_869]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _899 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _906 = mem[_899]
                require mem[_899] == mem[_899]
                require mem[_899 + 32] == mem[_899 + 32]
                require mem[_899 + 64] == mem[_899 + 92 len 4]
                require mem[_899 + 96] == mem[_899 + 124 len 4]
                mem[mem[64] + 4] = _801
                mem[mem[64] + 36] = _875
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(address(cd[196]))
                call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _801, _875, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _924 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_924] == mem[_924]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _936 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_936] == mem[_936]
                require mem[_936 + 32] == mem[_936 + 32]
                require mem[_936 + 64] == mem[_936 + 92 len 4]
                require mem[_936 + 96] == mem[_936 + 124 len 4]
                if mem[_936] < _906:
                    revert with 'NH{q', 17
                if mem[_936] - _906 < cd[228]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _963 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _966 = mem[_963]
                require mem[_963] == mem[_963]
                if mem[_963] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _980 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _987 = mem[_980]
                    require mem[_980] == mem[_980]
                    if mem[_980] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _987
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _987
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1010 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1010] == bool(mem[_1010])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _966
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _966
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _984 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_984] == bool(mem[_984])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1011 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1017 = mem[_1011]
                    require mem[_1011] == mem[_1011]
                    if mem[_1011] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1017
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1017
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1026 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1026] == bool(mem[_1026])
        else:
            if ext_call.return_data[12 len 20] != address(cd[36]):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor0:
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) and cd[4] > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if cd[4] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * cd[4] / 2 > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if cd[4] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * cd[4] / 2 and cd[4] / 2 > -1 / 997 * cd[4] / 2:
                revert with 'NH{q', 17
            if 997 * cd[4] / 2 * cd[4] / 2 > (-1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) - 1:
                revert with 'NH{q', 17
            if not (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 'NH{q', 17
            if 1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1997 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 'NH{q', 17
            if 997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if 997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > (-1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) - 1:
                revert with 'NH{q', 17
            if not (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require ('cd', 68)[0] == address(('cd', 68)[0])
            if 0 >= ('cd', 100).length:
                revert with 'NH{q', 50
            require ('cd', 100)[0] < calldata.size + -cd[100] - 67
            require cd[(cd[100] + ('cd', 100)[0] + 36)] <= test266151307()
            require cd[100] + ('cd', 100)[0] + 68 <= calldata.size - (32 * cd[(cd[100] + ('cd', 100)[0] + 36)])
            if cd[(cd[100] + ('cd', 100)[0] + 36)] < 1:
                revert with 'NH{q', 17
            if cd[(cd[100] + ('cd', 100)[0] + 36)] - 1 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
                revert with 'NH{q', 50
            require cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)] == address(cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)])
            require address(cd[((32 * cd[(cd[100] + ('cd', 100)[0] + 36)] - 1) + cd[100] + ('cd', 100)[0] + 68)])
            if 0 >= cd[(cd[100] + ('cd', 100)[0] + 36)]:
                revert with 'NH{q', 50
            require cd[(cd[100] + ('cd', 100)[0] + 68)] == address(cd[(cd[100] + ('cd', 100)[0] + 68)])
            mem[(6 * ceil32(return_data.size)) + 100] = address(('cd', 68)[0])
            mem[(6 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(address(cd[(cd[100] + ('cd', 100)[0] + 68)]))
            call address(cd[(cd[100] + ('cd', 100)[0] + 68)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 68)[0]), (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 100] = (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(7 * ceil32(return_data.size)) + 132] = 0
            mem[(7 * ceil32(return_data.size)) + 164] = 160
            mem[(7 * ceil32(return_data.size)) + 260] = cd[(cd[100] + ('cd', 100)[0] + 36)]
            idx = 0
            s = cd[100] + ('cd', 100)[0] + 68
            t = (7 * ceil32(return_data.size)) + 292
            while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 196] = this.address
            mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp + 60
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, cd[(cd[100] + ('cd', 100)[0] + 36)], mem[(7 * ceil32(return_data.size)) + 292 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _197 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
            _200 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (997 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * (997 * cd[4] / 2 * cd[4] / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (1994 * cd[4] / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            require _197 + (32 * _200) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _197 + 128
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _200:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if ('cd', 100).length <= 1:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _380 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _387 = mem[_380]
                require mem[_380] == mem[_380]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _413 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _423 = mem[_413]
                require mem[_413] == mem[_413]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _387
                require ext_code.size(address(cd[36]))
                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _387
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _440 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_440] == bool(mem[_440])
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _423
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _423
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _464 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_464] == bool(mem[_464])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _423
                mem[mem[64] + 100] = _387
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[132]))
                call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor0, address(cd[36]), _423, _387, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _503 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_503] == mem[_503]
                require mem[_503 + 32] == mem[_503 + 32]
                require mem[_503 + 64] == mem[_503 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[164]))
                staticcall address(cd[164]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _554 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _564 = mem[_554]
                require mem[_554] == mem[_554]
                mem[mem[64] + 4] = address(cd[196])
                mem[mem[64] + 36] = _564
                require ext_code.size(address(cd[164]))
                call address(cd[164]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[196]), _564
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _584 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_584] == bool(mem[_584])
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _608 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _612 = mem[_608]
                require mem[_608] == mem[_608]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _641 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _645 = mem[_641]
                require mem[_641] == mem[_641]
                require mem[_641 + 32] == mem[_641 + 32]
                require mem[_641 + 64] == mem[_641 + 92 len 4]
                require mem[_641 + 96] == mem[_641 + 124 len 4]
                mem[mem[64] + 4] = _564
                mem[mem[64] + 36] = _612
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(address(cd[196]))
                call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _564, _612, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _686 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_686] == mem[_686]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _710 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_710] == mem[_710]
                require mem[_710 + 32] == mem[_710 + 32]
                require mem[_710 + 64] == mem[_710 + 92 len 4]
                require mem[_710 + 96] == mem[_710 + 124 len 4]
                if mem[_710] < _645:
                    revert with 'NH{q', 17
                if mem[_710] - _645 < cd[228]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _766 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _773 = mem[_766]
                require mem[_766] == mem[_766]
                if mem[_766] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _804 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _812 = mem[_804]
                    require mem[_804] == mem[_804]
                    if mem[_804] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _812
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _812
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _843 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_843] == bool(mem[_843])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _773
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _773
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _809 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_809] == bool(mem[_809])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _844 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _851 = mem[_844]
                    require mem[_844] == mem[_844]
                    if mem[_844] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _851
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _851
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _891 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_891] == bool(mem[_891])
            else:
                idx = 1
                while idx < ('cd', 100).length:
                    require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
                    require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])
                    if 0 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                        revert with 'NH{q', 50
                    require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]))
                    staticcall address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _620 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _629 = mem[_620]
                    require mem[_620] == mem[_620]
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    if idx >= ('cd', 100).length:
                        revert with 'NH{q', 50
                    require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
                    require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
                    require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])
                    if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] < 1:
                        revert with 'NH{q', 17
                    if cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                        revert with 'NH{q', 50
                    require cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
                    require address(cd[((32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] - 1) + cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
                    if 0 >= cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                        revert with 'NH{q', 50
                    require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)] == address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)])
                    mem[mem[64] + 4] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 36] = _629
                    require ext_code.size(address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]))
                    call address(cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[((32 * idx) + cd[68] + 36)]), _629
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _706 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_706] == bool(mem[_706])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    _722 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _629
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
                    s = 0
                    t = cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68
                    u = mem[64] + 196
                    while s < cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
                        require cd[t] == address(cd[t])
                        mem[u] = address(cd[t])
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_722 + 100] = this.address
                    mem[_722 + 132] = block.timestamp + 60
                    require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                    call address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len u + -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _861 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _868 = mem[_861]
                    require mem[_861] <= test266151307()
                    require _861 + mem[_861] + 31 < _861 + return_data.size
                    _874 = mem[_861 + mem[_861]]
                    if mem[_861 + mem[_861]] > test266151307():
                        revert with 'NH{q', 65
                    if _861 + ceil32(return_data.size) + floor32(mem[_861 + mem[_861]]) + 1 > test266151307() or floor32(mem[_861 + mem[_861]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _861 + ceil32(return_data.size) + floor32(mem[_861 + mem[_861]]) + 1
                    mem[_861 + ceil32(return_data.size)] = _874
                    require _868 + (32 * _874) + 32 <= return_data.size
                    s = 0
                    t = _861 + _868 + 32
                    u = _861 + ceil32(return_data.size) + 32
                    while s < _874:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if _874 == -1:
                        revert with 'NH{q', 17
                    s = _874 + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _593 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _596 = mem[_593]
                require mem[_593] == mem[_593]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _632 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _635 = mem[_632]
                require mem[_632] == mem[_632]
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _596
                require ext_code.size(address(cd[36]))
                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _596
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _658 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_658] == bool(mem[_658])
                mem[mem[64] + 4] = address(cd[132])
                mem[mem[64] + 36] = _635
                require ext_code.size(stor0)
                call stor0.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[132]), _635
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _677 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_677] == bool(mem[_677])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _635
                mem[mem[64] + 100] = _596
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(address(cd[132]))
                call address(cd[132]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor0, address(cd[36]), _635, _596, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_734] == mem[_734]
                require mem[_734 + 32] == mem[_734 + 32]
                require mem[_734 + 64] == mem[_734 + 64]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[164]))
                staticcall address(cd[164]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _794 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _800 = mem[_794]
                require mem[_794] == mem[_794]
                mem[mem[64] + 4] = address(cd[196])
                mem[mem[64] + 36] = _800
                require ext_code.size(address(cd[164]))
                call address(cd[164]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[196]), _800
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _830 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_830] == bool(mem[_830])
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _867 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _873 = mem[_867]
                require mem[_867] == mem[_867]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _897 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _905 = mem[_897]
                require mem[_897] == mem[_897]
                require mem[_897 + 32] == mem[_897 + 32]
                require mem[_897 + 64] == mem[_897 + 92 len 4]
                require mem[_897 + 96] == mem[_897 + 124 len 4]
                mem[mem[64] + 4] = _800
                mem[mem[64] + 36] = _873
                mem[mem[64] + 68] = msg.sender
                require ext_code.size(address(cd[196]))
                call address(cd[196]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args _800, _873, msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _923 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_923] == mem[_923]
                require ext_code.size(address(cd[196]))
                staticcall address(cd[196]).bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _935 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_935] == mem[_935]
                require mem[_935 + 32] == mem[_935 + 32]
                require mem[_935 + 64] == mem[_935 + 92 len 4]
                require mem[_935 + 96] == mem[_935 + 124 len 4]
                if mem[_935] < _905:
                    revert with 'NH{q', 17
                if mem[_935] - _905 < cd[228]:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _962 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _965 = mem[_962]
                require mem[_962] == mem[_962]
                if mem[_962] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _978 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _986 = mem[_978]
                    require mem[_978] == mem[_978]
                    if mem[_978] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _986
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _986
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1008 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1008] == bool(mem[_1008])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _965
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _965
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _983 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_983] == bool(mem[_983])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor0)
                    staticcall stor0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1009 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1015 = mem[_1009]
                    require mem[_1009] == mem[_1009]
                    if mem[_1009] > 0:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1015
                        require ext_code.size(stor0)
                        call stor0.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1015
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1025 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1025] == bool(mem[_1025])
}



}
